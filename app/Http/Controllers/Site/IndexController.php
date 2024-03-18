<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\AboutSection;
use App\Models\Feature;
use App\Models\FeatureSection;
use App\Models\ParkViewSection;
use App\Models\Slider;
use App\Models\Subscriber;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    //
    public function index()
    {
        $sliders = Slider::all()->sortByDesc('id');
        $about = AboutSection::firstOrFail();
        $park = ParkViewSection::firstOrFail();
        $section = FeatureSection::firstOrFail();
        $features = Feature::all()->sortByDesc('id');

        return view('site.pages.index' ,compact('sliders','about' ,'park' ,'section' ,'features'));
    }

    public function subscribe(Request $request)
    {
        $validation = validator($request->all() , [
            'email' => ['required', 'email' , 'unique:subscribers,email']
        ] ,[
            'email.required' => 'Please enter your email',
            'email.email' => 'Please enter a valid email',
            'email.unique' => 'This email is already in use'
        ]);

        if ($validation->fails()) {
            return response()->json($validation->errors()->first() , 400);
        }

        try {
            Subscriber::create([
                'email' => $request->email
            ]);

            return response()->json('Thanks for subscribing with us' , 200);
        } catch (\Throwable $th) {
            return response()->json('Error , please try again later' , 400);
        }
    }
}
