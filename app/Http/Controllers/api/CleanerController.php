<?php

namespace App\Http\Controllers\api;
use App\User;
use App\Order;
use App\Cleaner;
use App\ServiceResponse;
use App\CleanerSchedule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Twilio;
use App\CleanerReview;

class CleanerController extends Controller
{
   //获取人物review
    public function getReviewForCleaner(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $query = 'SELECT cr.*, u.name, u.avatar FROM cleaner_reviews cr left join users u on u.id = cr.user_id where cleaner_id = '.$data['cleaner_id'].' limit 10 OFFSET '. $data['offset'];
        $reviews = \DB::select($query);

        return response()->json(['success'=> true, 'reviews'=> $reviews]);
    }
  //获取订单review
    public function getReviewForOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $review = CleanerReview::where(['order_id'=>$data['order_id']])->first();

        return response()->json(['success'=> true, 'review'=> $review]);
    }
  
  
    public function postReviewForCleaner(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $reviews = CleanerReview::create($data);
        $order = Order::where(["user_id" => Auth::user()->id, "id"=>$data['order_id']])->first();
        $order->review_status = 1;
        $order->save();
        return response()->json(['success'=> true, 'reviews'=> $reviews]);
    }
  
    //提取响应by cleaner_id
  
    public function getResponseOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $query = 'SELECT * FROM service_responses sr left join orders o on o.id = sr.order_id where order_status = 1 and accept_status = 0 and o.cleaner_id is null and sr.cleaner_id='.$cleaner['id'];
        $orders = \DB::select($query);
        foreach ($orders as &$order) {
            $order->additional = json_decode($order->additional);
        }
        return response()->json(['success'=> true, 'orders'=> $orders, "user" => Auth::user()->id]);
    }
  
    //取消响应by cleaner_id
  
    public function cancelResponseOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $response = ServiceResponse::where(['order_id'=>$data['order_id'],'cleaner_id'=>$cleaner['id']])->update(['decline_reason' => $data['decline_reason'],'accept_status'=>2]);
        return response()->json(['success'=> true,'test'=>$response]);
    }
  
    //接受响应by cleaner_id
  
    public function acceptResponseOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $response = ServiceResponse::where(['order_id'=>$data['order_id'],'cleaner_id'=>$cleaner['id']])->update(['accept_status'=>1]);
        $order = Order::where(["id"=>$data['order_id'],"cleaner_id"=>null,"order_status"=>1])->first();
        if ($order){
          $order->price = $cleaner['pay_rate']*$order['hours'];
          $order->agent_fee = $order->price*0.1;
          $order->cleaner_id = $cleaner['id'];
          $order->order_status = 2;
          $order->cleaner_rate = $cleaner['pay_rate'];
          $order->save();
          return response()->json(['success'=> true,'test'=>$response]);
        }else{
          return response()->json(['success'=> false,'test'=>$response]);
        }
    }
  
  //接受改变时间
    public function acceptChangeTime(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $order = Order::where(["id"=>$data['order_id'],"cleaner_id"=>$cleaner['id'],"order_status"=>4])->first();
        if ($order){
          $order->order_status = 3;
          $order->save();
          return response()->json(['success'=> true]);
        }else{
          return response()->json(['success'=> false]);
        }
    }
  
  //拒绝改变时间
    public function declineChangeTime(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $order = Order::where(["id"=>$data['order_id'],"cleaner_id"=>$cleaner['id'],"order_status"=>4])->first();
        if ($order){
          $order->order_status = 3;
          $order->cleaner_id = 6;
          $order->save();
          sendSMS("6047195215","有修改时间订单被拒绝，并转交给VIP服务！");
          return response()->json(['success'=> true]);
        }else{
          return response()->json(['success'=> false]);
        }
    }
    //开始order
  
    public function startOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $response = ServiceResponse::where(['order_id'=>$data['order_id'],'cleaner_id'=>$cleaner['id']])->update(['accept_status'=>1]);
        $order = Order::where(["id"=>$data['order_id'],"cleaner_id"=>$cleaner['id']])->first();
        if ($order){
          $order->serve_time = date("Y-m-d H:i");
          $order->order_status = 5;
          $order->save();
          return response()->json(['success'=> true]);
        }else{
          return response()->json(['success'=> false]);
        }
    }
  
    //完成订单
  
    public function finishOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $response = ServiceResponse::where(['order_id'=>$data['order_id'],'cleaner_id'=>$cleaner['id']])->update(['accept_status'=>1]);
        $order = Order::where(["id"=>$data['order_id'],"cleaner_id"=>$cleaner['id']])->first();
        if ($order){
          $order->finish_time = date("Y-m-d H:i");
          $order->order_status = 6;
          $order->save();
          return response()->json(['success'=> true]);
        }else{
          return response()->json(['success'=> false]);
        }
    }
    //提取cleaner_id的单
    public function getOrdererListForCleaner(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $orders = Order::where(["cleaner_id" => $cleaner['id']])->whereIn('order_status',$data['status'])->orderBy('id', 'desc')
                  ->offset($data['offset'])->limit(10)->get();
        foreach ($orders as &$order) {
            $order['additional'] = json_decode($order['additional']);
        }
        return response()->json(['success'=> true, 'orders'=> $orders, "user" => Auth::user()->id]);
    }
  
  
      //提取时间表
    public function getSchedual(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        $scheduals = CleanerSchedule::where(["cleaner_id" => $cleaner['id']])->orderBy('day', 'asc')->orderBy('start', 'asc')->get();
//         $scheduals = json_decode(json_encode($scheduals), true);
//         for ($x = 1; $x <= 7; $x++) {
//             $classify_scheduals[$x] = array_filter($scheduals, function($val) use($x){
//                                   return $val['day'] == $x;
//                               });
//         } 
        return response()->json(['success'=> true, 'scheduals'=> $scheduals]);
    }
        //保存时间表
    public function saveSchedual(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $cleaner = Cleaner::where(["user_id" => Auth::user()->id])->first();
        foreach ($data['scheduals'] as &$schedual) {
            CleanerSchedule::firstOrNew(["cleaner_id" => $cleaner['id'],"id"=>$schedual['id']])->fill($schedual)->save();
        }
        return response()->json(['success'=> true]);
    }
}
