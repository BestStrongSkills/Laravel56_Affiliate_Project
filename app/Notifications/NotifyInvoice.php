<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use App\Invoice;

class NotifyInvoice extends Notification
{
    use Queueable;

    protected $invoice;
    protected $message;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(Invoice $invoice,$message)
    {
        $this->invoice = $invoice;
        $this->message = $message;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail','database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->line('Invoice Notification.')
                    ->action($this->message, url('/'))
                    ->line('Please log in to see the notification!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toDatabase($notifiable)
    {
        return [
            "message" => $this->message,
            "invoice_id" => $this->invoice->id,
            "type" => "invoice"
        ];
    }
}
