<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AboutSection;
use Illuminate\Http\Request;

class AboutSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $about = AboutSection::firstOrFail();

        return view('admin.pages.about.section' ,compact('about'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validation = validator($request->all() , [
            'title' => ['required' , 'string' , 'max:225'],
            'title1' => ['required' , 'string' , 'max:225'],
            'description' => ['required'],
            'image' => ['image' , 'max:2024']
        ] ,[
            'title.required' => 'Please enter the section first title',
            'title.string' => 'First title shall be string',
            'title.max' => 'Maximum size allowed for first title is 225 characters',
            'title1.required' => 'Please enter the section subtitle',
            'title1.string' => 'Subtitle shall be string',
            'title1.max' => 'Maximum size allowed for subtitle is 225 characters',
            'description.required' => 'Please enter section brief',
            'image.image' => 'You must upload image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $about = AboutSection::firstOrFail();

        $data = [
            'title' => $request->title,
            'title1' => $request->title1,
            'description' => $request->description
        ];

        if ($request->image) {
            image_delete($about->image , 'about');
            $data['image'] = image_manipulate($request->image , 'about' , 990 , 840);
        }

        try {
            $about->update($data);

            return response()->json('Data updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }

}
