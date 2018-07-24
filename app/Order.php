<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Order extends Model
{
    protected $fillable = [
       'notes','finish_time','serve_time','cancel_time', 'review_status','city','cancel_reason','if_changed','agent_fee','price','order_status','order_type','name', 'phone', 'time','city','address','bedroom','bathroom','additional','hours','user_id','start_time','end_time','cleaner_id'
    ];

}
