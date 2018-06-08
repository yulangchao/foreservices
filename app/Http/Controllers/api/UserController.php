<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Post;
use App\Cleaner;
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
      dd(getPhoneFromCleaner(1));
//         $template = "IGtNotificationTemplate";
//         $data = "a";
//         $config = array("type" => "HIGH", "title" => "你有一条新消息", "body" => "你有一个3000元的订单需要申请","logo"=>"","logourl"=>"");
//         $CID = "3061e21cd407a8bad9413e31af3b0d22";
//         $test = Getui::pushMessageToSingle($template,$config,$data,$CID);
//         return response()->json(['user' => $test]);
    }
  
    public function logout()
    { 
        if (Auth::check()) {
           Auth::user()->AauthAcessToken()->delete();
        } 
    }
  
  
    public function checkPhone(Request $request)
    {
      
        $credentials = $request->only('phone');
      
        $rules = [
            'phone' => 'bail|required|digits:10|unique:users'
        ];
        $validator = Validator::make($credentials, $rules);
      
        if($validator->fails()) {
            return response()->json(['success'=> false, 'error'=> $validator->messages()->first()]);
        } else {
          
            $record = SmsRecord::where([ 'to'=>$request->phone])->orderBy('created_at', 'desc')->first();
        
            if($record){
               if (time() - strtotime($record['created_at']) < 60){
                 return response()->json(['success'=> true,'message'=> '亲，注册验证码已发送, 1分钟内不能重发，如果未收到，请1分钟后再尝试']);
               }
            } 
          
          
            $verification_code = rand ( 1000 , 9999 );
      
            try {
                  $test = Twilio::message(request('phone'), '傻逼鸽子王，验证码是'. $verification_code.'有效期30分钟');
            }
            catch (\Exception $e) {
                  return response()->json(['success' => false,'error' => "验证码发送失败"]);
            }

             $result = json_decode($test, true);
             SmsRecord::create(['status'=>$result['status'],'from'=>$result['from'],'to'=>request('phone'),'body'=>$result['body'], 'code'=>$verification_code]);
             return response()->json(['success'=> true, 'message' => "亲，你尚未注册，注册验证码已发送"]);
        }
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
            Cleaner::create(['name' => $name, 'email' => $email, 'phone' => $phone,'user_id'=>$user->id]);
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

        return response()->json(['success'=> true, 'message'=> '注册成功！', 'token'=>$token, 'user' => Auth::user()]);
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
  
}