<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Candidate;
use Illuminate\Http\Request;

class CareerController extends Controller
{
    
    public function index()
    {
        return view('site.pages.careers.index');
    }

    public function store(Request $request)
    {
        $validation = validator($request->all() , [
            'name' => ['required' , 'string' , 'max:225'],
            'email' => ['required' , 'string' , 'max:225' ,'email'],
            'position' => ['required' , 'string' , 'max:225'],
            'cv' => ['required' ,'max:4096' ,'mimes:doc,docx,pdf']
        ] ,[
            'name.required' => 'Please enter your name',
            'name.string' => 'Name shall be string',
            'name.max' => 'Maximum number of characters allowed for your name is 225 character',
            'email.required' => 'Please enter your email',
            'email.string' => 'email shall be string',
            'email.max' => 'Maximum number of characters allowed for your email is 225 character',
            'email.email' => 'Please enter a valid email',
            'position.required' => 'Please enter perffered position',
            'position.string' => 'position shall be string',
            'position.max' => 'Maximum number of characters allowed for your position is 225 character',
            'cv.required' => 'Please upload your cv',
            'cv.max' => 'Maximum size allowed for cv is 4 MB',
            'cv.mimes' => 'Allowed extensions for your cv is : doc,docx,pdf'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $candidate = new Candidate();

        $candidate->name = $request->name;
        $candidate->email = $request->email;
        $candidate->position = $request->position;
        $request->cv->store('candidates' ,'public');
        $candidate->cv = $request->cv->hashName();

        if ($candidate->save()) {
            return response()->json('Thank you , we will contact you ASAP' , 200);
        }

        return response()->json('Error , please retry again' , 400);
    }
}
