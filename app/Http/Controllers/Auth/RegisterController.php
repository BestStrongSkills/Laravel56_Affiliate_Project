<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\VerifyUser;
use App\Mail\VerifyMail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Mail;
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'fullname' => 'required|string|max:255',
            'username' => 'required|string|max:255',
            'birthday' => 'required|date|max:255',
            'country' => 'required|string|max:255',
            'state' => 'required|string|max:255',
            'address' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            // 'phoneNumber' => 'required|regex:/(01)[0-9]{9}/',
            'phoneNumber' => 'required|string|max:255',
            'whatsappNumber' => 'required|string|max:255',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    
    protected function create(array $data)
    {
        $user=User::create([
            'fullname' => $data['fullname'], 
            'username' => $data['username'], 
            'birthday' => $data['birthday'],
            'country' => $data['country'], 
            'state' => $data['state'], 
            'email' => $data['email'],
            'address' => $data['address'],
            'phoneNumber' => $data['phoneNumber'],
            'whatsappNumber' => $data['whatsappNumber'], 
            'password' => bcrypt($data['password']),
        ]);
        //==========verify function=====================
        $verifyUser = VerifyUser::create(['user_id' => $user->id,'token' => str_random(40) ]);
        
        //==========mail send function=====================
        Mail::to($user->email)->send(new VerifyMail($user));

            return $user;
        //==========referral cook function=====================
        event(new \App\Events\UserReferred(request()->cookie('ref'), $user));

        return $user;
    }
    
    public function verifyUser($token)
    {
        $verifyUser = VerifyUser::where('token', $token)->first();
        if(isset($verifyUser) ){
            $user = $verifyUser->user;
            if(!$user->verified) {
                $verifyUser->user->verified = 1;
                $verifyUser->user->save();
                $status = "Your e-mail is verified. You can now login.";
            }
            else
            {
                $status = "Your e-mail is already verified. You can now login.";
            }
        }
        else
        {
            return redirect('/login')->with('warning', "Sorry your email cannot be identified.");
        }
 
        // return redirect('/login')->with('status', $status);
        return redirect('/wallet')->with('status', $status);
    }
    
    protected function registered(Request $request, $user)
    {
        $this->guard()->logout();

        return redirect('/checkgmail')->with('status', 'We sent you an activation code. Check your email and click on the link to verify.');
    }
}
