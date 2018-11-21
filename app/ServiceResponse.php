<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ServiceResponse extends Model
{
    protected $fillable = [
        'order_id', 'cleaner_id'
    ];
}
