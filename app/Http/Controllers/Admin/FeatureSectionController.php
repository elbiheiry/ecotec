<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\FeatureSection;
use Illuminate\Http\Request;

class FeatureSectionController extends Controller
{
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
         $v = validator($request->all() ,[
            'title' => ['required' , 'max:225' , 'string'],
            'description' => ['required'],
            'image1' => ['image' , 'max:2048'],
            'image2' => ['image' , 'max:2048'],
        ] ,[
            'title.required' => 'Please enter section title',
            'title.max' => 'Section title shall be less than 225 characters',
            'title.string' => 'Section title shall be string',
            'description.required' => 'Please enter section description',
            'image1.image' => 'Please choose an image not file',
            'image1.max' => 'Maximum size allowed for image is 2MB',
            'image2.image' => 'Please choose an image not file',
            'image2.max' => 'Maximum size allowed for image is 2MB',
        ]);

        if ($v->fails()) {
            return response()->json($v->errors()->first() , 400);
        }

        $section = FeatureSection::firstOrFail();

        $data = [
            'title' => $request->title,
            'description' => $request->description
        ];

        if ($request->image1) {
            image_delete($section->image1 , 'features');
            $data['image1'] = image_manipulate($request->image1 , 'features', 580 , 420);
        }

        if ($request->image2) {
            image_delete($section->image2 , 'features');
            $data['image2'] = image_manipulate($request->image2 , 'features', 580 , 420);
        }

        try {
            $section->update($data);

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error ,please try again later' , 200);
        }
    }

}
