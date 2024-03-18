<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $about = About::firstOrFail();

        return view('admin.pages.about.index' ,compact('about'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $v = validator($request->all() ,[
            'heading' => ['required' , 'max:225' , 'string'],
            'name1' => ['required' , 'max:225' , 'string'],
            'brief1' => ['required'],
            'name2' => ['required' , 'max:225' , 'string'],
            'brief2' => ['required'],
            'name3' => ['required' , 'max:225' , 'string'],
            'brief3' => ['required'],
            'image1' => ['image' , 'max:2048'],
            'image2' => ['image' , 'max:2048'],
        ] ,[
            'heading.required' => 'Please enter main heading',
            'heading.max' => 'Main heading shall be less than 225 characters',
            'heading.string' => 'Main heading shall be string',
            'name1.required' => 'Please enter company name #1',
            'name1.max' => 'Company name #1 shall be less than 225 characters',
            'name1.string' => 'Company name #1 shall be string',
            'brief1.required' => 'Please enter company name #1 brief',
            'name2.required' => 'Please enter company name #2',
            'name2.max' => 'Company name #2 shall be less than 225 characters',
            'name2.string' => 'Company name #2 shall be string',
            'brief2.required' => 'Please enter company name #2 brief',
            'name3.required' => 'Please enter company name #3',
            'name3.max' => 'Company name #3 shall be less than 225 characters',
            'name3.string' => 'Company name #3 shall be string',
            'brief3.required' => 'Please enter company name #3 brief',
            'image1.image' => 'Please choose an image not file',
            'image1.max' => 'Maximum size allowed for image is 2MB',
            'image2.image' => 'Please choose an image not file',
            'image2.max' => 'Maximum size allowed for image is 2MB',
        ]);

        if ($v->fails()) {
            return response()->json($v->errors()->first() , 400);
        }

        $about = About::firstOrFail();

        $data = [
            'heading' => $request->heading,
            'name1' => $request->name1,
            'brief1' => $request->brief1,
            'name2' => $request->name2,
            'brief2' => $request->brief2,
            'name3' => $request->name3,
            'brief3' => $request->brief3
        ];

        if ($request->image1) {
            image_delete($about->image1 , 'about');
            $data['image1'] = image_manipulate($request->image1 , 'about' ,580 , 420);
        }

        if ($request->image2) {
            image_delete($about->image2 , 'about');
            $data['image2'] = image_manipulate($request->image2 , 'about' ,580 , 420);
        }

        try {
            $about->update($data);

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }
}
