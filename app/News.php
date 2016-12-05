<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table='news';
    protected $fillable=['title','body'];

    public function images(){
        return $this->belongsToMany('App\Image', 'news_images');
    }
    
    public function tags(){
        return $this->belongsToMany('App\News', 'news_tags');
    }

}
