<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    
    public function index()
    {
        $about = About::firstOrFail();
        return view('site.pages.about.index' ,compact('about'));
    }
}
