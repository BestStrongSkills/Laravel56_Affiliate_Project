<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use App\Models\Notification;
use App\Notification;
use Auth;
use Session;

class NotificationController extends Controller
{
    public function get() 
    {
        $notification = Auth::user()->unreadNotifications;

        return $notification;
    }

    public function read(Request $request) 
    {
        Auth::user()->unreadNotifications()->find($request->id)->markAsRead();
        
        return 'success';
    }
}
