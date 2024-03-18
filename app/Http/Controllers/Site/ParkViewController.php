<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Consultant;
use App\Models\Facility;
use App\Models\Gallery;
use App\Models\ParkView;
use App\Models\Service;
use Illuminate\Http\Request;

class ParkViewController extends Controller
{
    //
    public function index()
    {
        $section = ParkView::firstOrFail();
        $images = Gallery::all();
        $services = Service::all();
        $facilities = Facility::all()->sortByDesc('id');
        $consultant = Consultant::firstOrFail();

        return view('site.pages.park.index' ,compact('section' , 'images' ,'services' ,'facilities' ,'consultant'));
    }
}
