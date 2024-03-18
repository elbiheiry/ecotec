<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Feature;
use Illuminate\Http\Request;

class FeatureController extends Controller
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
            'name' => ['required' , 'string' , 'max:225'],
            'image' => ['required' , 'image' , 'max:2024']
        ] ,[
            'name.required' => 'Please enter the feature name',
            'name.string' => 'Feature name shall be string',
            'name.max' => 'Maximum size allowed for  feature name is 225 characters',
            'image.required' => 'Please choose feature image',
            'image.image' => 'You must upload image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        try {
            Feature::create([
                'name' => $request->name,
                'image' => image_manipulate($request->image , 'features' , 40 , 40)
            ]);

            return response()->json('Data has been created successfully' , 200);
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
        $feature = Feature::findOrFail($id);

        return view('admin.pages.features.show' ,compact('feature'));
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
            'name' => ['required' , 'string' , 'max:225'],
            'image' => ['image' , 'max:2024']
        ] ,[
            'name.required' => 'Please enter the feature name',
            'name.string' => 'Feature name shall be string',
            'name.max' => 'Maximum size allowed for  feature name is 225 characters',
            'image.image' => 'You must upload image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $feature = Feature::findOrFail($id);

        $data = ['name' => $request->name];

        if ($request->image) {
            image_delete($feature->image ,'features');

            $data['image'] = image_manipulate($request->image , 'features' , 40 , 40);
        }

        try {
            $feature->update($data);
            return response()->json('Data has been updated successfully' , 200);
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
        Feature::findOrFail($id)->delete();

        return redirect()->back();
    }
}
