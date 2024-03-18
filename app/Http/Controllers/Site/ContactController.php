<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Message;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        return view('site.pages.contact.index');
    }

    public function store(Request $request)
    {
        $validation = validator($request->all() , [
            'name' => ['required' , 'string' , 'max:225'],
            'email' => ['required' , 'string' , 'max:225' ,'email'],
            'phone' => ['required'],
            'subject' => ['required' , 'string' , 'max:225' ],
            'message' => ['required' , 'string'],
        ] ,[
            'name.required' => 'Please enter your name',
            'name.string' => 'Name shall be string',
            'name.max' => 'Maximum number of characters allowed for your name is 225 character',
            'email.required' => 'Please enter your email',
            'email.string' => 'email shall be string',
            'email.max' => 'Maximum number of characters allowed for your email is 225 character',
            'email.email' => 'Please enter a valid email',
            'phone.required' => 'Please enter your phone number',
            'subject.required' => 'Please enter your subject',
            'subject.string' => 'Subject shall be string',
            'subject.max' => 'Maximum number of characters allowed for subject is 225 character',
            'message.required' => 'Please enter your message',
            'message.string' => 'Message shall be string'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        Message::create($request->all());

        return response()->json('Thank you , we will contact you ASAP' , 200);
    }
}
