<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CleanerSchedule extends Model
{
    protected $fillable = [
       'start', 'end','active'
    ];
}
