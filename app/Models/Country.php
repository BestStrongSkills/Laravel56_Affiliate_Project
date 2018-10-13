<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Sofa\Eloquence\Eloquence;

class Country extends Model
{
    use Eloquence;


    protected $table = 'countries';
    protected $guarded  = ['id'];
    protected $searchableColumns = ['name'];

    public function states()
    {
        return $this->hasMany('App\Models\State');
    }
}
