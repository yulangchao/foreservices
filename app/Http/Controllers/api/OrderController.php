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
          $data['cleaner_id'] = -1;
        }
        $order = Order::create($data);
        if ($order){
          foreach ($data['selected_cleaners'] as &$value) {
              $response = ['cleaner_id' => $value, 'order_id' => $order->id];
              ServiceResponse::create($response);
          }
          
          return response()->json(['success'=> true, 'message'=> '订单创建成功！等待Cleaner回复！']);
        }else{
          return response()->json(['success'=> false, 'message'=> '订单创建失败！']);
        }
    }
    //提取所有单
    public function getOrdererList(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $orders = Order::where(["user_id" => Auth::user()->id])->whereIn('order_status',$data['status'])->orderBy('created_at', 'desc')
                  ->offset($data['offset'])->limit(10)->get();

        return response()->json(['success'=> true, 'orders'=> $orders, "user" => Auth::user()->id]);
    }


//提取所有技工
    public function getCleanerList(Request $request){
        $data = json_decode(request()->getContent(), true);

        $cleaners = Cleaner::where([])->orderBy('created_at', 'desc')->get();

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

        $query = 'select c.id, c.name,c.sex,c.city,c.rate,c.avatar from cleaners c where c.id in (select cs.cleaner_id from cleaner_schedules cs '.
        'left join (SELECT cleaner_id, 1 as conflict FROM orders o WHERE o.order_type >1 and '.
        'LEFT(o.time, 10) = "'.$date.'" and ("'.$start_time.'" BETWEEN o.start_time and o.end_time || "'.$end_time.'" BETWEEN o.start_time and o.end_time) '.
        'group by cleaner_id) temp on temp.cleaner_id = cs.cleaner_id where active = 1 and day = '.$data['day'].' and conflict is null and '.(string)$start_hour.' BETWEEN cs.start and cs.end and '.(string)$end_hour.' BETWEEN cs.start and cs.end) '.
        'limit 10 OFFSET '. $data['offset'];
      
        $cleaners = \DB::select($query);
      
        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
    
    public function getMore(){
        return response()->json(['success'=> false, 'message'=> '修改密码失败，请稍后再试']);
    }
}
