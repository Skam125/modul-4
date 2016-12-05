<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $table='tags';
    protected $fillable=['tag_name'];
    public $timestamps = false;
    public function news(){
        return $this->belongsToMany('News', 'news_tags');
    }
}
