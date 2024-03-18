<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.pages.settings.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validator = validator($request->all() , [
            'title' => ['required' ,'max:225' ,'string'],
            'copy' => ['required' ,'max:225' ,'string'],
            'address' => ['required' ,'max:225' ,'string'],
            'email' => ['required' ,'max:225' ,'string' ,'email'],
            'phone1' => ['required' ],
            'phone2' => ['required' ],
            'phone3' => ['required' ],
            'mobile1' => ['required' ],
            'mobile2' => ['required' ],
            'mobile3' => ['required' ],
            'facebook' => ['required' ,'max:225' ,'string'],
            'instagram' => ['required' ,'max:225' ,'string'],
        ] ,[
            'title.required' => 'Please enter site title',
            'title.max' => 'Maximum size allowed for website title is 225 characters',
            'title.string' => 'Website title shall be string',
            'copy.required' => 'Please enter copy rights',
            'copy.max' => 'Maximum size allowed for copy rights is 225 characters',
            'copy.string' => 'Copy rights shall be string',
            'address.required' => 'Please enter company address',
            'address.max' => 'Maximum size allowed for company address is 225 characters',
            'address.string' => 'Company address shall be string',
            'email.required' => 'Please enter company email',
            'email.max' => 'Maximum size allowed for company email is 225 characters',
            'email.string' => 'Company email shall be string',
            'email.email' => 'Please enter a valid email',
            'phone1.required' => 'Please enter first number',
            'phone2.required' => 'Please enter second number',
            'phone3.required' => 'Please enter third number',
            'mobile1.required' => 'Please enter first mobile number',
            'mobile2.required' => 'Please enter second mobile number',
            'mobile3.required' => 'Please enter third mobile number',
            'facebook.required' => 'Please enter facebook profile url',
            'facebook.max' => 'Maximum size allowed for facebook profile url is 225 characters',
            'facebook.string' => 'Facebook profile url shall be string',
            'instagram.required' => 'Please enter instagram profile url',
            'instagram.max' => 'Maximum size allowed for instagram profile url is 225 characters',
            'instagram.string' => 'Instagram profile url shall be string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors()->first() , 400);
        }

        try {
            Setting::firstOrFail()->update($request->all());
            
            return response()->json('Data has been updated successsfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('error , please try again later' , 400);
        }
    }
}
