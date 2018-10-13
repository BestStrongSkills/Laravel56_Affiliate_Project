<?php

namespace App;

use Illuminate\Notifications\Notifiable;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['fullname','username','birthday','country', 'state','address','email','phoneNumber',
        'whatsappNumber','password','verified','is_admin'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    
    public function posts() {
        return $this->hasMany('App\Models\Post');
    }

    public function comments() 
    {
        return $this->hasMany('App\Models\Comment');
    }


    public function referrals() 
    {
        return $this->hasOne('App\Models\Bonous');
    }

    public function verifyUser()
    {
        return $this->hasOne('App\VerifyUser');
    }



    
    public function getReferrals()
    {
        return ReferralProgram::all()->map(function ($program) 
        {
            return ReferralLink::getReferral($this, $program);
        });
    }


    // ===================notifications=========================


    // public function notifications() 
    // {
        // return $this->hasMany('App\Models\Notification');
        // return $this->hasMany('App\Notification');
    // }
}
