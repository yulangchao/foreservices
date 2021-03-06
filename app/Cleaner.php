<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cleaner extends Model
{
    //
    protected $fillable = [
       'name', 'phone','user_id','email','avatar','pay_rate','city','sex','lat','lng','address','id_image','work_years'
    ];
    protected $hidden = [
        'phone','lat','lng','address'
    ];
}
