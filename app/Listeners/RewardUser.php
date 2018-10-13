<?php

namespace App\Listeners;

use App\Events\UserReferred;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class RewardUser
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    // public function __construct()
    // {

    // }

    /**
     * Handle the event.
     *
     * @param  UserReferred  $event
     * @return void
     */
    // public function handle(UserReferred $event)
    // {
    // }


    $referral = \App\ReferralLink::find($event->referralId);
    
    if (!is_null($referral)) 
    {
        \App\Models\ReferralRelationship::create(['referral_link_id' => $referral->id, 'user_id' => $event->user->id]);

        // Example...
        if ($referral->program->name === 'Sign-up Bonus') {
            // User who was sharing link
            $provider = $referral->user;
            $provider->addCredits(15);
            // User who used the link
            $user = $event->user;
            $user->addCredits(20);
        }

    }
}
