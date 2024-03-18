<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Facility;
use Illuminate\Http\Request;

class FacilityController extends Controller
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
            'title' => ['required' , 'string' , 'max:225'],
            'description' => 'required',
            'image' => ['required' , 'image' , 'max:2024']
        ] ,[
            'title.required' => 'Please enter the facility title',
            'title.string' => 'facility title shall be string',
            'title.max' => 'Maximum size allowed for facility title is 225 characters',
            'description.required' => 'Please enter facility description',
            'image.required' => 'Please choose facility image',
            'image.image' => 'You must upload image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        try {
            Facility::create([
                'title' => $request->title,
                'description' => $request->description,
                'image' => image_manipulate($request->image , 'facilities' , 870, 490)
            ]);

            return response()->json('Data has been created successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error, please try again later' , 400);
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
        $facility = Facility::findOrFail($id);

        return view('admin.pages.park_view.facility' , compact('facility'));
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
            'title' => ['required' , 'string' , 'max:225'],
            'description' => 'required',
            'image' => ['image' , 'max:2024']
        ] ,[
            'title.required' => 'Please enter the facility title',
            'title.string' => 'facility title shall be string',
            'title.max' => 'Maximum size allowed for facility title is 225 characters',
            'description.required' => 'Please enter facility description',
            'image.image' => 'You must upload image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $facility = Facility::findOrFail($id);

        $data = $request->except('image');

        if ($request->image) {
            image_delete($facility->image , 'facilities');
            $data['image'] = image_manipulate($request->image , 'facilities' , 870, 490) ;
        }

        try {
            $facility->update($data);

            return response()->json('Data has been updated successfully' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error, please try again later' , 400);
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
        Facility::findOrFail($id)->delete();

        return redirect()->back();
    }
}
