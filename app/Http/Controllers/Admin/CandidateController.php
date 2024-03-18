<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Candidate;
use Illuminate\Http\Request;

class CandidateController extends Controller
{
    //

    public function index(Request $request)
    {
        $candidates = Candidate::orderBy('id' , 'desc')->paginate(8);

        if ($request->ajax()) {
            $candidates = Candidate::orderBy('id', 'desc')->paginate( 8, [ '*' ], 'page', request()->page );

            return view('admin.pages.candidates.templates.candidates', compact('candidates'));
        }

        return view('admin.pages.candidates.index' ,compact('candidates'));
    }

}
