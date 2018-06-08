<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cleaner extends Model
{
    //
    protected $fillable = [
       'name', 'phone','user_id','email'
    ];
    protected $hidden = [
        'phone'
    ];
}
