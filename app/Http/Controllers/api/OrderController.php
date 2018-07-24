<?php

namespace App\Http\Controllers\api;
use App\User;
use App\Order;
use App\Cleaner;
use App\ServiceResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Twilio;

class OrderController extends Controller
{
    //
//创建订单
    public function createOrder(Request $request){
        $data = json_decode(request()->getContent(), true);

        if (!empty($data['additional'])){
            $data['additional'] = json_encode($data['additional']);
        }else{
            $data['additional']=null;
        }
        
        $data['order_status'] = 1;
        $data['user_id'] = Auth::user()->id;
        if ($data['selected_cleaners'][0] == -1){
          $data['order_status'] = 2;
          $data['cleaner_id'] = 6;
          $data['price'] = $data['hours']*30;
        }
        $order = Order::create($data);
        
        if ($order){
          if ($data['selected_cleaners'][0] != -1){
            foreach ($data['selected_cleaners'] as &$value) {
                $response = ['cleaner_id' => $value, 'order_id' => $order->id];
                ServiceResponse::create($response);
                sendSMS(getPhoneFromCleaner($value), '你有新的订单，请注意查收');
            }
          }else{
            
            sendSMS("6042838800", '你有新的vip订单，请注意查收');
          }
          
          return response()->json(['success'=> true, 'message'=> '订单创建成功！等待Cleaner回复！']);
        }else{
          return response()->json(['success'=> false, 'message'=> '订单创建失败！']);
        }
    }
    //提取所有单
    public function getOrdererList(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $orders = Order::where(["user_id" => Auth::user()->id])->whereIn('order_status',$data['status'])->orderBy('id', 'desc')
                  ->offset($data['offset'])->limit(10)->get();
        foreach ($orders as &$order) {
            $order['additional'] = json_decode($order['additional']);
        }
        return response()->json(['success'=> true, 'orders'=> $orders, "user" => Auth::user()->id]);
    }


//提取所有技工
    public function getCleanerList(Request $request){
        $data = json_decode(request()->getContent(), true);
        $where = [];
        if (!empty($data['cleaner_id'])){
          $where['id'] = $data['cleaner_id'];
        }
        if (!empty($data['city']) && $data['city'] > 0){
          $where['city'] = $data['city'];
        }
        if (!empty($data['price']) && $data['price'] > 0){
//           $query ='select (acos(sin('.$data['lat'].'/57.2957795) * sin(c.Lat/57.2957795) + cos('.$data['lat'].'/57.2957795) * cos(c.Lat/57.2957795) * cos(c.Lng/57.2957795 - ( '.$data['lng'].'/57.2957795))) * 6371) as distance,name, phone,user_id,email,avatar,pay_rate,city,sex from cleaners c where city is not null and pay_rate between '.(5+5*$data['price']).' and '.(10+5*$data['price']).'  order by if_vip desc, distance asc, rate desc';
          $cleaners = Cleaner::where($where)->whereNotNull('address')->whereNotNull('city')->whereBetween('pay_rate', [5+5*$data['price'], 10+5*$data['price']])->orderBy('if_vip', 'desc')->orderBy('rate', 'desc')->get();
        }else{
//           $query ='select (acos(sin('.$data['lat'].'/57.2957795) * sin(c.Lat/57.2957795) + cos('.$data['lat'].'/57.2957795) * cos(c.Lat/57.2957795) * cos(c.Lng/57.2957795 - ( '.$data['lng'].'/57.2957795))) * 6371) as distance,name, phone,user_id,email,avatar,pay_rate,city,sex from cleaners c where city is not null order by if_vip desc, distance asc, rate desc';
           $cleaners = Cleaner::where($where)->whereNotNull('address')->whereNotNull('city')->orderBy('if_vip', 'desc')->orderBy('rate', 'desc')->get();
//            $cleaners = Cleaner::select(\DB::raw('(acos(sin('.$data['lat'].'/57.2957795) * sin(Lat/57.2957795) + cos('.$data['lat'].'/57.2957795) * cos(Lat/57.2957795) * cos(Lng/57.2957795 - ( '.$data['lng'].'/57.2957795))) * 6371) as distance,name, phone,user_id,email,avatar,pay_rate,city,sex,id'))
//              ->where($where)->whereNotNull('address')->whereNotNull('city')->orderBy('if_vip', 'desc')->orderBy('distance', 'asc')->orderBy('rate', 'desc')->get();
          //$cleaners = \DB::select($query);
        }
        
        foreach ($cleaners as &$cleaner) {
            $cleaner['order_count'] = Order::where(["cleaner_id" => $cleaner->id])->whereIn('order_status',[5,6])->count();
        }
        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
//提取Order技工
    public function getCleanerListByOrder(Request $request){
        $data = json_decode(request()->getContent(), true);
        calculateHours($data['hours'],$data['time'],$data['day']);
        //for 分钟
        $start_time = $data['hr'] * 60 + $data['min'];
        $end_time = $start_time + $data['hours']*60;
        $start_hour = $start_time/60;
        $end_hour = $end_time/60;
        $start_time = getTimeFromMinutes($start_time);
        $end_time = getTimeFromMinutes($end_time);
        $date = explode(" ",$data['time'])[0];
//         dd($date,$start_time,$end_time,$start_hour,$end_hour);

        $query = 'select (acos(sin('.$data['position']['lat'].'/57.2957795) * sin(c.Lat/57.2957795) + cos('.$data['position']['lat'].'/57.2957795) * cos(c.Lat/57.2957795) * cos(c.Lng/57.2957795 - ( '.$data['position']['lng'].'/57.2957795))) * 6371) as distance, c.id, c.name,c.sex,c.city,c.rate, c.pay_rate ,c.avatar from cleaners c where c.id in (select cs.cleaner_id from cleaner_schedules cs '.
        'left join (SELECT cleaner_id, 1 as conflict FROM orders o WHERE o.order_status >1 and '.
        'LEFT(o.time, 10) = "'.$date.'" and ("'.$start_time.'" BETWEEN o.start_time and o.end_time or "'.$end_time.'" BETWEEN o.start_time and o.end_time) '.
        'group by cleaner_id) temp on temp.cleaner_id = cs.cleaner_id where active = 1 and day = '.$data['day'].' and conflict is null and '.(string)$start_hour.' BETWEEN cs.start and cs.end and '.(string)$end_hour.' BETWEEN cs.start and cs.end) '.
        'order by distance limit 10 OFFSET '. $data['offset'];
      
        $cleaners = \DB::select($query);
      
        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
  
    //提取响应cleaners
    public function getResponseList(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $query = 'SELECT * FROM service_responses sr left join cleaners c on sr.cleaner_id = c.id where order_id = '.$data['order_id'];
        $cleaners = \DB::select($query);

        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
  
  //改变订单时间
    public function changeOrderTime(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $order = Order::where(["user_id" => Auth::user()->id, "id"=>$data['order_id']])->first();
        $order->order_status = 4;
        $order->if_changed = 1;
        $order->time = $data['time'];
        $order->save();
        if ($order){
         
          sendSMS(getPhoneFromCleaner($order['cleaner_id']), '您的订单时间改变，请及时查看确认！');
        }
        return response()->json(['success'=> true]);
    }
  
  //取消订单
    public function cancelOrder(Request $request){

        $data = json_decode(request()->getContent(), true);
        $order = Order::where(["user_id" => Auth::user()->id, "id"=>$data['order_id']])->first();
        if ($order['order_status']==3 || $order['order_status']==4){
          //取消并且退款
          $order->order_status = 8;
        }else{
          //取消
          $order->order_status = 7;
        }
        
        $order->cancel_reason = $data['cancel_reason'];
        $order->cancel_time = date("Y-m-d H:i");
        $order->save();
        if ($order){

          if ($order['order_status']==3 || $order['order_status']==4){
            //取消并且退款
            sendSMS("6042838800", '此订单已经取消！需要退款!');
            sendSMS(getPhoneFromCleaner($order['cleaner_id']), '您有订单已经取消，请注意查看！');
            sendSMS($order['phone'],"您的订单已经取消！");
          }else{
            //取消
            sendSMS($order['phone'],"您的订单已经取消！");
          }
          
        }
        return response()->json(['success'=> true]);
    }
    public function getMore(){
        return response()->json(['success'=> false, 'message'=> '修改密码失败，请稍后再试']);
    }
}
