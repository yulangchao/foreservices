<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Order extends Model
{
    protected $fillable = [
        'order_status','order_type','name', 'phone', 'time','city','address','bedroom','bathroom','additional','hours','user_id','start_time','end_time','cleaner_id'
    ];

}
