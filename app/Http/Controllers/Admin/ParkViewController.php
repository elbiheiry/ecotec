<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Consultant;
use App\Models\Facility;
use App\Models\Gallery;
use App\Models\ParkView;
use App\Models\Service;
use Illuminate\Http\Request;

class ParkViewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $section = ParkView::firstOrFail();
        $images = Gallery::all()->sortByDesc('id');
        $services = Service::all()->sortByDesc('id');
        $facilities = Facility::all()->sortByDesc('id');
        $consultant = Consultant::firstOrFail();

        return view('admin.pages.park_view.index' ,compact('section' , 'images' , 'services','facilities','consultant'));
    }

    /**
     * Update park view
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validation = validator($request->all() ,[
            'title' => ['required' ,'string' , 'max:225'],
            'description1' => 'required',
            'description2' => 'required',
            'square' => ['required' ,'string' , 'max:225'],
            'building' => ['required' ,'string' , 'max:225'],
            'address' => ['required' ,'string' , 'max:225'],
            'location_title' => ['required' ,'string' , 'max:225'],
            'location_description' => 'required',
            'image1' => ['image' , 'max:2048'],
            'image2' => ['image' , 'max:2048'],
            'image3' => ['image' , 'max:2048']
        ] ,[
            'title.required' => 'Please enter title',
            'title.string' => 'Title shall be string',
            'title.max' => 'Maximum size allowed for title is 225 characters',
            'description1.required' => 'Please enter first section text',
            'description2.required' => 'Please enter second section text',
            'square.required' => 'Please enter square',
            'square.string' => 'Square shall be string',
            'square.max' => 'Maximum size allowed for square is 225 characters',
            'building.required' => 'Please enter building',
            'building.string' => 'Building shall be string',
            'building.max' => 'Maximum size allowed for building is 225 characters',
            'address.required' => 'Please enter address',
            'address.string' => 'Address shall be string',
            'address.max' => 'Maximum size allowed for address is 225 characters',
            'location_title.required' => 'Please enter location section title',
            'location_title.string' => 'Location section title shall be string',
            'location_title.max' => 'Maximum size allowed for location section title is 225 characters',
            'location_description.required' => 'Please enter location section description',
            'image1.image' => 'Please select an image not file',
            'image1.max' => 'Maximum size allowed for logo is 2MB',
            'image2.image' => 'Please select an image not file',
            'image2.max' => 'Maximum size allowed for feature photo is 2MB',
            'image3.image' => 'Please select an image not file',
            'image3.max' => 'Maximum size allowed for location photo is 2MB',
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $section = ParkView::firstOrFail();

        $data = $request->except('image1' , 'image2' ,'image3');

        if ($request->image1) {
            image_delete($section->image1 , 'park');
            $data['image1'] = image_manipulate($request->image1 , 'park' , 270 , 270);
        }

        if ($request->image2) {
            image_delete($section->image2 , 'park');
            $data['image2'] = image_manipulate($request->image2 , 'park' , 990 , 840);
        }

        if ($request->image3) {
            image_delete($section->image3 , 'park');
            $data['image3'] = image_manipulate($request->image3 , 'park' , 620 , 320);
        }

        try {
            $section->update($data);

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }

    /**
     * Update consultances
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update2(Request $request)
    {
        $validation = validator($request->all() ,[
            'name1' => ['required' ,'string' , 'max:225'],
            'description1' => 'required',
            'name1' => ['required' ,'string' , 'max:225'],
            'description2' => 'required'
        ] ,[
            'name1.required' => 'Please enter first name',
            'name1.string' => 'first name shall be string',
            'name1.max' => 'Maximum size allowed for first name is 225 characters',
            'description1.required' => 'Please enter first text',
            'name2.required' => 'Please enter second name',
            'name2.string' => 'second name shall be string',
            'name2.max' => 'Maximum size allowed for second name is 225 characters',
            'description2.required' => 'Please enter second text',
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $section = Consultant::firstOrFail();

        try {
            $section->update($request->all());

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }
}
