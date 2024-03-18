<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Candidate;
use App\Models\Message;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    public function index()
    {
        $messages = Message::take('4')->orderBy('id' ,'desc')->get();
        $candidates = Candidate::take('2')->orderBy('id' ,'desc')->get();

        return view('admin.pages.index' , compact('messages' , 'candidates'));
    }
}
