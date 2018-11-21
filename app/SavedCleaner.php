<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SavedCleaner extends Model
{
    protected $fillable = [
        'cleaner_id', 'user_id'
    ];
}
