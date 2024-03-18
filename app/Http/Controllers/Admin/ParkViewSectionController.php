<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Feature;
use App\Models\FeatureSection;
use App\Models\ParkViewSection;
use Illuminate\Http\Request;

class ParkViewSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $park = ParkViewSection::firstOrFail();
        $section = FeatureSection::firstOrFail();
        $features = Feature::all()->sortByDesc('id');

        return view('admin.pages.park_view.section' ,compact('park' , 'section' ,'features'));
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
            'title' => ['required' ,'string' , 'max:225'],
            'description' => ['required']
        ] ,[
            'title.required' => 'Please enter the section title',
            'title.string' => 'Title shall be string',
            'title.max' => 'Maximum size allowed for  title is 225 characters',
            'description.required' => 'Please enter section brief',
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        try {
            ParkViewSection::firstOrFail()->update($request->all());
            return response()->json('Data updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }

}
