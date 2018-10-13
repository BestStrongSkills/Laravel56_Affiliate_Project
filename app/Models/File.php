<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    protected $table='files';
    //protected $guarded = [ 'id'];
    protected $fillable = ['id','file_name','file_type','safe_file_name', 'file_size'];
    public $timestamps = false;
    
}

