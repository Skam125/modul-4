<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $table='messages';
    protected $fillable=['user','message', 'news_id', 'approved', 'rating'];
}
