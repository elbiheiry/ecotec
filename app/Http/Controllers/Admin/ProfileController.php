<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();

        return view('admin.pages.profile.index' ,compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $v = validator($request->all() , [
            'name' => ['required' ,'max:225' ,'string'],
            'email' => ['required' ,'max:225' ,'string' ,'email' , 'unique:users,email,'.auth()->id()]
        ] ,[
            'name.required' => 'Please enter your name',
            'name.max' => 'Maximum number of characters allowed for your name is 225 characters',
            'name.string' => 'Name shall be string',
            'email.required' => 'Please enter your email',
            'email.max' => 'Maximum number of characters allowed for your email is 225 characters',
            'email.string' => 'Email shall be string',
            'emai.email' => 'Please enter a valid email',
            'email.unique' => 'This email is already taken'
        ]);

        if ($v->fails()) {
            return response()->json($v->errors()->first() , 400);
        }

        $data = [
            'name' => $request->name,
            'email'=> $request->email
        ];

        if ($request->password) {
            $data['password'] = Hash::make($request->password);
        }

        $user = auth()->user();

        try {
            $user->update($data);

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }
}
