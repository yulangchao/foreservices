<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Post;
use App\Order;
use App\Cleaner;
use App\CleanerSchedule;
use App\SavedCleaner;
use App\ClientReview;
use Response;
use App\SmsRecord;
use Twilio;
use Validator;
use Hash;
use Earnp\Getui\Facades\Getui;
class UserController extends Controller
{
    public function __construct()
    {

    }
    public function test1()
    {
        $template = "IGtNotificationTemplate";
        $data = "a";
        $config = array("type" => "HIGH", "title" => "你有一条新消息", "body" => "你有一个3000元的订单需要申请","logo"=>"","logourl"=>"");
        $CID = "2fa21266d3865b9777a3df1d86607b88";
        $test = Getui::pushMessageToSingle($template,$config,$data,$CID);
        return response()->json(['user' => $test]);
//             $to_uid = '';
//             // 推送的url地址，上线时改成自己的服务器地址
//             $push_api_url = "http://foreclean.tk:2121/";
//             $post_data = array(
//                'type' => 'publish',
//                'content' => '6666666666666666',
//                'to' => $to_uid, 
//             );
//             $ch = curl_init ();
//             curl_setopt ( $ch, CURLOPT_URL, $push_api_url );
//             curl_setopt ( $ch, CURLOPT_POST, 1 );
//             curl_setopt ( $ch, CURLOPT_HEADER, 0 );
//             curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
//             curl_setopt ( $ch, CURLOPT_POSTFIELDS, $post_data );
//             $return = curl_exec ( $ch );
//             curl_close ( $ch );
      
    }
  
    public function logout()
    { 
//         if (Auth::check()) {
//            Auth::user()->AauthAcessToken()->delete();
//         } 
    }
  
  
    public function checkPhone(Request $request)
    {
      
//         $credentials = $request->only('phone');
      
//         $rules = [
//             'phone' => 'bail|required|digits:10|unique:users'
//         ];
//         $validator = Validator::make($credentials, $rules);
      
//         if($validator->fails()) {
//             return response()->json(['success'=> false, 'error'=> $validator->messages()->first()]);
//         } else {
          
//             $record = SmsRecord::where([ 'to'=>$request->phone])->orderBy('created_at', 'desc')->first();
        
//             if($record){
//                if (time() - strtotime($record['created_at']) < 60){
//                  return response()->json(['success'=> true,'message'=> '亲，注册验证码已发送, 1分钟内不能重发，如果未收到，请1分钟后再尝试']);
//                }
//             } 
          
          
//             $verification_code = rand ( 1000 , 9999 );
      
//             try {
//                   $test = Twilio::message(request('phone'), '傻逼鸽子王，验证码是'. $verification_code.'有效期30分钟');
//             }
//             catch (\Exception $e) {
//                   return response()->json(['success' => false,'error' => "验证码发送失败"]);
//             }

//              $result = json_decode($test, true);
//              SmsRecord::create(['status'=>$result['status'],'from'=>$result['from'],'to'=>request('phone'),'body'=>$result['body'], 'code'=>$verification_code]);
//              return response()->json(['success'=> true, 'message' => "亲，你尚未注册，注册验证码已发送"]);
//         }
    }
  //register
    public function register(Request $request)
    {

        $data = json_decode(request()->getContent(), true);
        $ifexist = User::where(['email' => $data['email']])->whereIn('type',[0,2])->first();
        if ($ifexist){
          return response()->json(['success'=> false, 'error'=> 'User Existed!']);
        }
        $credentials = $data;
        $rules = [
            'name' => 'bail|required|max:255',
            'phone' => 'bail|required|digits:10',
            'email' => 'bail|required|email|max:255',
            'password' => 'bail|required|min:8|max:100|regex:/^[a-zA-Z0-9!$#%]+$/'
        ];
        $validator = Validator::make($credentials, $rules);
      
        if($validator->fails()) {
            return response()->json(['success'=> false, 'error'=> $validator->messages()->first()]);
        }
        
        $name = $data['name'];
        $phone = $data['phone'];
        $email = $data['email'];
        $password = $data['password'];
        
        $user = User::create(['name' => $name, 'tpye'=>0 , 'email' => $email, 'phone' => $phone, 'password' => Hash::make($password)]);
        
      
        if ($user){
            $cleaner = Cleaner::create(['name' => $name, 'email' => $email, 'phone' => $phone,'user_id'=>$user->id]);
          
            for ($x = 1; $x <= 7; $x++) {
                CleanerSchedule::create(['day' => $x, 'start' => 8, 'end' => 18, 'active'=>0,'cleaner_id'=>$cleaner->id]);
            } 
            return response()->json(['success'=> true, 'message'=> 'Thanks for signing up!']);
        }else{
          return response()->json(['success'=> false, 'error'=> '注册失败！请稍后再试！']);
        }
        
    }
  //clenaer login
    public function login()
    {
        $data = json_decode(request()->getContent(), true);

        if(Auth::attempt(['email' => $data['email'], 'password' => $data['password'],'type'=>2]))
        {
            $user = Auth::user();
            $token = $user->createToken('fore')->accessToken;
            $query = 'SELECT * FROM cleaners where user_id = '.Auth::user()->id;
            $cleaner = \DB::select($query);
            
            $cleaner[0]->order_count = Order::where(["cleaner_id" => $cleaner[0]->id])->whereIn('order_status',[5,6])->count();
            
            return response()->json(['success'=> true, 'message'=>'Login Successful！','token'=> $token, 'user' => $cleaner[0]]);   
        } else {
            $error = "Email or Password not Correct!";
            return response()->json(['success'=> false, 'error'=> $error]);   
        }
         
    }
  
    //user get code
    public function getAccessCode(Request $request)
    {
        $data = json_decode(request()->getContent(), true);

      //手动注册
        if ($data['source'] == 1 || ($data['source'] == 3 && !User::where('firebase_token', '=', $data['uid'])->first())){
          $user = User::create(['name' => $data['name'], 'email' => $data['email'], 'phone' => $data['phone'], 'firebase_token' => $data['uid'], 'type' => 1, 'password' => Hash::make($data['uid']) ]);


          if ($user){
            if(Auth::attempt(['firebase_token' => $data['uid'], 'password' => $data['uid']]))
            {
                $user = Auth::user();
                $token = $user->createToken('fore')->accessToken;
            }
          }
        //登录
        }else if ($data['source'] == 2 || $data['source'] == 3){
            if(Auth::attempt(['firebase_token' => $data['uid'], 'password' => $data['uid']]))
            {
                $user = Auth::user();
                $token = $user->createToken('fore')->accessToken;
            }
        }
        $saved_cleaners = SavedCleaner::where(['user_id'=>Auth::user()->id])->get(['cleaner_id']);
        $results = [];
        foreach ($saved_cleaners as &$saved_cleaner) {
            $results[] = $saved_cleaner['cleaner_id'];
        }
        return response()->json(['success'=> true, 'message'=> '注册成功！', 'token'=>$token, 'user' => Auth::user(),'saved_cleaners'=>$results]);
    }
  
    public function changeUserSetting(Request $request)
    {
        $data = json_decode(request()->getContent(), true);
        $user = User::where(['id'=>Auth::user()->id])->first();
        $user->name = $data['name'];
        $user->phone = $data['phone'];
        $user->avatar = $data['avatar'];
        $user->save();

        return response()->json(['success'=> true, 'user' => $user]);
    }
  
      public function changeCleanerSetting(Request $request)
    {
        $data = json_decode(request()->getContent(), true);
        $user = User::where(['id'=>Auth::user()->id])->first();
        $user->name = $data['name'];
        $user->phone = $data['phone'];
        $user->avatar = $data['avatar'];
        $user->save();
        $cleaner = Cleaner::where(['user_id'=>Auth::user()->id])->first();
        $cleaner->name = $data['name'];
        $cleaner->phone = $data['phone'];
        $cleaner->avatar = $data['avatar'];
        $cleaner->pay_rate = $data['pay_rate'];
        $cleaner->city = $data['city'];
        $cleaner->address = $data['address'];
        $cleaner->lat = $data['lat'];
        $cleaner->lng = $data['lng'];
        $cleaner->sex = 0;
        $cleaner->save();
        
        $cleaner = json_decode(json_encode($cleaner), true);
        $cleaner['phone'] = $data['phone'];
        $cleaner['address'] = $data['address'];
        return response()->json(['success'=> true, 'cleaner' => $cleaner]);
    }
  
    public function details()
    {
      return response()->json(['user' => Auth::user()]);
    }
  
    public function sendCode(Request $request)
    {
        $credentials = $request->only('phone');
        $rules = [
            'phone' => 'bail|required|digits:10|unique:users',
        ];
        $validator = Validator::make($credentials, $rules);
      
        if($validator->fails()) {
            return response()->json(['success'=> false, 'error'=> $validator->messages()->first()]);
        }
      
       $verification_code = rand ( 1000 , 9999 );
      
      try {
            $test = Twilio::message(request('phone'), '傻逼鸽子王，验证码是'. $verification_code.'有效期30分钟');
      }
      catch (\Exception $e) {
            return response()->json(['success' => false,'error' => "发送失败"]);
      }

       $result = json_decode($test, true);
       SmsRecord::create(['status'=>$result['status'],'from'=>$result['from'],'to'=>request('phone'),'body'=>$result['body'], 'code'=>$verification_code]);
       return response()->json(['success'=> true, 'status' => $result['status']]);
    }
  
    public function test()
    {
       $verification_code = rand ( 1000 , 9999 );
       return test();
    }
  
  //提取收藏的技工
    public function getSavedCleanerList(Request $request){
        $data = json_decode(request()->getContent(), true);
        $where=[];
        $cleaners = Cleaner::where($where)->whereIn('id',$data['cleaner_list'])->orderBy('rate', 'desc')->get();
        foreach ($cleaners as &$cleaner) {
            $cleaner['order_count'] = Order::where(["cleaner_id" => $cleaner->id])->whereIn('order_status',[5,6])->count();
        }
        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
  
    public function saveOrUnsaveCleaner()
    {
       $data = json_decode(request()->getContent(), true);
       $save = SavedCleaner::where(['cleaner_id'=>$data['cleaner_id'],'user_id'=>Auth::user()->id])->get();
       if(sizeof($save) == 0){
          $data['user_id'] = Auth::user()->id;
          $res = SavedCleaner::create($data);
          $message = "saved";
       }else{
          $res = SavedCleaner::where(['cleaner_id'=>$data['cleaner_id'],'user_id'=>Auth::user()->id])->delete();
          $message = "deleted";
       }
       return response()->json(['success' => true, 'message'=>$message]);
    }
  
  
  
   //获取客户review
    public function getReviewForClient(Request $request){
        
        $data = json_decode(request()->getContent(), true);
      
        $query = 'SELECT cr.*, u.name, u.avatar FROM client_reviews cr left join cleaners u on u.id = cr.cleaner_id where cr.user_id = '.$data['user_id'].' limit 10 OFFSET '. $data['offset'];
        $reviews = \DB::select($query);

        return response()->json(['success'=> true, 'reviews'=> $reviews]);
    }
  
   //获取客户review
    public function getReviewForClientwithOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
      
        $query = 'SELECT cr.*, u.name, u.avatar FROM client_reviews cr left join cleaners u on u.id = cr.cleaner_id where cr.order_id = '.$data['order_id'];
        $reviews = \DB::select($query);

        return response()->json(['success'=> true, 'reviews'=> $reviews]);
    }
  //获取订单客户review
    public function getClientReviewForOrder(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $review = ClientReview::where(['order_id'=>$data['order_id']])->first();

        return response()->json(['success'=> true, 'review'=> $review]);
    }
  
  
    public function postReviewForClient(Request $request){
        
        $data = json_decode(request()->getContent(), true);
        $reviews = ClientReview::create($data);
      
        $rate = ClientReview::where(['user_id'=>$data['user_id']])->avg('rate');
        $user = User::find($data['user_id']);

        $user->rate = $rate;

        $user->save();
        return response()->json(['success'=> true, 'reviews'=> $reviews]);
    }
  
  
}