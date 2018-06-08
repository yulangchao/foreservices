<?php
// My common functions


use Illuminate\Support\Facades\DB;
use Twilio;
use App\SmsRecord;

function test()
{
    return "1234";
}


function calculateHours($type,$bedroom,$additional)
{
    if ($type == 1){
      
    }
    return $bedroom;
}

function getTimeFromMinutes($time){
  $min = $time%60;
  $hour = floor($time/60);
  if($min<10){
    $min = "0".$min;
  }
  return $hour.":".$min;
}

function getPhoneFromCleaner($id){
  $phone = DB::table('cleaners')->where('id', $id)->value('phone');
  return $phone;
}


function sendSMS($phone,$content){
      error_reporting(E_ERROR | E_WARNING | E_PARSE);
      try {
            $test = Twilio::message($phone, $content);
      }
      catch (\Exception $e) {
            return response()->json(['success' => false,'error' => "发送失败"]);
      }

       $result = json_decode($test, true);
       SmsRecord::create(['status'=>$result['status'],'from'=>$result['from'],'to'=>$phone,'body'=>$result['body']]);
}



?>