<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table='blogs';
    //protected $guarded = [ 'id'];
    protected $fillable = ['title', 'content', 'user_id'];
    public $timestamps = false;
    

    public function user() 
    {
        return $this->belongsTo('App\User');
    }
}
