<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Spam;
use Input;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class SpamController extends Controller
{
    public function storeMail()
    {

        $mail = Spam::create([
            'name' => \Input::get('name'),
            'email' => Input::get('email')
        ]);
        return redirect('/')->with(['flash_message'=>'Вы подписались на рассылку!']);
    }

}
