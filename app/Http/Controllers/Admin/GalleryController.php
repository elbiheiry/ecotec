<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = validator($request->all() , [
            'image' => ['required' ,'image' , 'max:2024']
        ] ,[
            'image.required' => 'Please choose image',
            'image.image' => 'Please select an image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        try {
            Gallery::create([
                'image' => image_manipulate($request->image , 'gallery' , 1920 , 960)
            ]);

            return response()->json('Image has been added successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $image = Gallery::findOrFail($id);

        return view('admin.pages.park_view.gallery' ,compact('image'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validation = validator($request->all() , [
            'image' => ['image' , 'max:2024']
        ] ,[
            'image.image' => 'Please select an image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $image = Gallery::findOrFail($id);

        try {
            image_delete($image->image , 'gallery');
            $image->update([
                'image' => image_manipulate($request->image , 'gallery' , 1920 , 960)
            ]);

            return response()->json('Image has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Gallery::findOrFail($id)->delete();

        return redirect()->back();
    }
}
