<?php
// My common functions
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
?>