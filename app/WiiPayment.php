<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class WiiPayment extends Model
{
      public function getFullNameAttribute()
      {
          return "123";
      }
  
      public $additional_attributes = ['full_name'];
}
