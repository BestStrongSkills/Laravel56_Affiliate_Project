<?php

namespace App\Http\Controllers;
use App\User;
use Auth;
use App\Models\ReferralSetting;
use App\Models\ReferralContestSetting;
use App\Models\LoanSetting;
use Illuminate\Http\Request;

class ReferralSettingController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function referralSetting()
    {
        // $users=User::get();
        $referralsetting=ReferralSetting::get();
        
        // $referralcontestsetting=ReferralContestSetting::get();
        // $loansetting=LoanSetting::get();
        return view('admin.referralSetting.index',compact('referralsetting'));
    }


    public function referralUpdate(Request $request)
    {
        $referral[0]=ReferralSetting::find(1);
        $referral[0]->fullname_statue = $request->fullname_statue;
        $referral[0]->per_referred_account = $request->per_referred_account;
        $referral[0]->fullname_statue = $request->fullname_statue;
        $referral[0]->minium_contest = $request->minium_contest;
        $referral[0]->reset_day = $request->reset_day;
        $referral[0]->minium_referral_loan = $request->minium_referral_loan;
        $referral[0]->per_referral_loan = $request->per_referral_loan;
        $referral[0]->save();
        return redirect()->route('admin.referralSetting.index');

    }
}
