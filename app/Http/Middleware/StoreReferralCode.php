<?php

namespace App\Http\Middleware;
use App\ReferralLink;
use Closure;

class StoreReferralCode
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
    $response = $next($request);

    if ($request->has('ref')){
        $referral = ReferralLink::whereCode($request->get('ref'))->first();
        $response->cookie('ref', $referral->id, $referral->lifetime_minutes);
    }

    return $response;
    }
}
