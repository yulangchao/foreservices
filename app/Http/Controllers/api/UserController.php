<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Post;
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
      dd(123);
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
  
  
  
    public function login()
    {

        if(Auth::attempt(['firebase_token' => $data['uid'], 'password' => $data['uid']]))
        {
            $user = Auth::user();
            $token = $user->createToken('fore')->accessToken;
            return response()->json(['success'=> true, 'message'=>'登录成功！','token'=> $token, 'user' => Auth::user()]);   
        } else {
            $error = "手机或者密码不正确";
            return response()->json(['success'=> false, 'error'=> $error]);   
        }
         
    }
  
  
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