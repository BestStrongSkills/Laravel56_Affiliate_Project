<?php

namespace App\Models;
use App\user;
use App\Models\Bonous;
use Illuminate\Database\Eloquent\Model;

class Bonous extends Model
{
    protected $fillable = ['user_id', 'week_referral', 'week_bonous','alltime_referral','alltime_bonous','qualified_loan'];

    public function user() 
    {
        return $this->belongsTo('App\Models\User');
    }

    public function referrallink() 
    {
        return $this->belongsTo('App\ReferralLink');
    }
}
