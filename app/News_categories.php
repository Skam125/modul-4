<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News_categories extends Model
{
    protected $table='news_categories';
    protected $fillable=['news_id','category_id'];
    public $timestamps = false;
}
