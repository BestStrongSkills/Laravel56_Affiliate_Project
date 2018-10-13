<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

	
class State extends Model
{
    //
    protected $table = 'states';
    protected $guarded = ['id'];
    protected $searchableColumns = ['name'];
}