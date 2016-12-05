<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $table='images';
    protected $fillable = ['title', 'file_name'];

    
    public function news(){
        return $this->belongsToMany('News','news_images');
    }
}
