<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News_tags extends Model
{
    protected $table='news_tags';
    protected $fillable=['news_id','tags_id'];
    public $timestamps = false;
}
