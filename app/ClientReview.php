<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ClientReview extends Model
{
    protected $fillable = [
        'cleaner_id','user_id','order_id','comments','rate','images'
    ];
}
