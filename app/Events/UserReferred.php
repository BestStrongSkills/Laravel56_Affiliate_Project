<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class UserReferred
{
    // use Dispatchable, InteractsWithSockets, SerializesModels;

    // public function broadcastOn()
    // {
    //     return new PrivateChannel('channel-name');
    // }
    
    use SerializesModels;

    public $referralId;
    public $user;

    public function __construct($referralId, $user)
    {
        $this->referralId = $referralId;
        $this->user = $user;
    }


    public function broadcastOn()
    {
        return [];
    }



   
}
