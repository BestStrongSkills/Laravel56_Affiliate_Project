<?php

namespace App\Http\Controllers;
use App\Models\Bonous;
use App\Models\LoanSetting;
use App\User;
use Auth;
use Illuminate\Http\Request;

class BonousController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function get_qualified_loan(Request $request)
    {
        
        Bonous::where('id', $request->id)
                  ->update(['qualified_loan' =>$request->qualified_loan]);    
      
        return response()->json(['success'=>'Data is successfully added']);
    }
    
    
}
