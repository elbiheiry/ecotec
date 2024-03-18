<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::all()->sortByDesc('id');

        return view('admin.pages.sliders.index' ,compact('sliders'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = validator($request->all() , [
            'title' => ['required' ,'string' ,'max:225'],
            'title1' => ['required' ,'string' ,'max:225'],
            'description' => ['required'],
            'image' => ['required' ,'image' , 'max:2024']
        ] ,[
            'title.required' => 'Please enter slide title first word',
            'title.string' => 'Slide title first word shall be string',
            'title.max' => 'Maximum size allowed for slide title first word is 225 characters',
            'title1.required' => 'Please enter slide title second word',
            'title1.string' => 'Slide title second word shall be string',
            'title1.max' => 'Maximum size allowed for slide title second word is 225 characters',
            'description.required' => 'Please enter slide text',
            'image.required' => 'Please choose slide image',
            'image.image' => 'Please select an image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $data = [
            'title' => $request->title,
            'title1' => $request->title1,
            'description' => $request->description,
            'image' => image_manipulate($request->image , 'sliders' , 1920 , 960)
        ];

        try {
            Slider::create($data);

            return response()->json('Slide has been created successfully' , 200);
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
        $slider = Slider::findOrFail($id);

        return view('admin.pages.sliders.show' ,compact('slider'));
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
            'title' => ['required' ,'string' ,'max:225'],
            'title1' => ['required' ,'string' ,'max:225'],
            'description' => ['required'],
            'image' => ['image' , 'max:2024']
        ] ,[
            'title.required' => 'Please enter slide title',
            'title.string' => 'Slide title shall be string',
            'title.max' => 'Maximum size allowed for slide title is 225 characters',
            'title1.required' => 'Please enter slide title second word',
            'title1.string' => 'Slide title second word shall be string',
            'title1.max' => 'Maximum size allowed for slide title second word is 225 characters',
            'description.required' => 'Please enter slide text',
            'image.image' => 'Please select an image not file',
            'image.max' => 'Maximum size allowed for image is 2MB'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        $slide = Slider::findOrFail($id);

        $data = [
            'title' => $request->title,
            'title1' => $request->title1,
            'description' => $request->description,
        ];

        if ($request->image) {
            image_delete($slide->image , 'sliders');
            $data['image'] = image_manipulate($request->image , 'sliders' , 1920 , 960);
        }

        try {
            $slide->update($data);

            return response()->json('Slide has been updated successfully' , 200);
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
        Slider::findOrFail($id)->delete();

        return redirect()->back();
    }
}
