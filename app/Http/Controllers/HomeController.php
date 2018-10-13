<?php
namespace App\Http\Controllers;
use App\User;
use Auth;
use App\Models\Post;
use App\Models\Bonous;
use App\ReferralLink;
use Illuminate\Http\Request;
use Session;
use Carbon\Carbon;

class HomeController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        if(Auth::user()->is_admin==1)
        {
           $user=User::all();
           return view('admin.summary' ,compact('user'));
        }
        else
        {
            $users=User::all();
            return view('backend.dashboard',compact('users'));
        }
    }

    public function backend_dashboard()
    {
        $user=User::all();
        return view('backend.dashboard',compact('user'));
    }

    public function profile()
    {
        $user=User::get();
        // $carbon=Carbon::now();
        // $today=$carbon->format('l');
        // dd($today) ;
        return view('backend.myAccount',compact('user'));
    }

    public function updateProfile($id,Request $request)
    {
        $user = User::findOrFail($id);
        $user->fullname = $request->get('fullname');
        $user->username = $request->get('username');
        $user->birthday = $request->get('birthday');
        $user->country = $request->get('country');
        $user->state = $request->get('state');
        $user->address=$request->get('address');
        $user->password= $request->get('password');

        $user->save();

        return Redirect()->route('backend.myAccount', [$user->id])->with('message', 'User has been updated!');
        // return view('backend.updateProfile',compact('user'));
    }


    public function setupInstroduction()
    {
        $user=User::all();
        return view('backend.setupInstroduction',compact('user'));
    }

    public function notification()
    {
        $user=User::all();
        return view('backend.notification',compact('user'));
    
   
    }

    public function myreferrals(Request $request)
    { 
        $days=ReferralLink::select('created_at')->get();
        $timestamp = strtotime($days[0]->created_at);
        $day = date('D', $timestamp);
        $weekStartDate = date('Y-m-d',strtotime("last Monday", $timestamp));
        $weekReferrals = ReferralLink::whereBetween('created_at', [$weekStartDate, $days[0]->created_at])->count();
        $alltimeReferrals= ReferralLink::select('created_at')->count();
        $weekBonous = $weekReferrals/2;
        $alltimeBonous = $alltimeReferrals/2;
        $user_id=Auth::user()->id;
        
        $referral = new Bonous();
        $referral->user_id=$user_id;
        $referral->week_referral=$weekReferrals;
        $referral->week_bonous=$weekBonous;
        $referral->alltime_referral=$alltimeReferrals;
        $referral->alltime_bonous=$alltimeBonous;
        $referral->save();
        return view('backend.myreferrals' , compact('weekReferrals','alltimeReferrals','weekBonous','alltimeBonous'));

        
        // return view('backend.myreferrals');
    }

    public function socialPromotion()
    { 
        return view('backend.socialPromotion');
    }

    public function social()
    {
        $user=User::all();
        return view('backend.socialPromotion',compact('user'));
    }

    public function referralContest()
    {
        $users=User::all();
        $referrals=Bonous::all();
        $alltime_referral=$referrals[0]->alltime_referral;
        $qualified_loan=$referrals[0]->qualified_loan;
        // if($qualified_loan==1) 
        //$user->$referrs()-alltime_user
        // dd( $qualified_loan);
        return view('backend.referralContest',compact('users','alltime_referral','qualified_loan'));
    }
}



