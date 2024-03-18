@extends('site.layouts.master')
@section('content')
    <div class="page-content">
        <section class="main_sec page_head">
            <div class="container">
                <div class="row text-center">
                    <div class="col">
                        <h3>Careers</h3>
                        <ul class="breadcrumb">
                            <li><a href="{{ route('site.index') }}"> Home</a></li>
                            <li class="active">Careers</li>
                        </ul>
                    </div>
                    <!-- End Col -->
                </div>
                <!--End Row-->
            </div>
            <!--End Container-->
        </section>
        <section class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <form class="contact_form ajax-form" action="{{ route('site.careers.store') }}" method="post">
                            @csrf
                            <h3>WOULD YOU LIKE TO JOIN US?</h3>
                            <div class="form-group">
                                <label> Name</label>
                                <input type="text" class="form-control" placeholder="Full Name" name="name" />
                            </div>
                            <div class="form-group">
                                <label> Email Address </label>
                                <input type="email" class="form-control" placeholder="Email Address" name="email" />
                            </div>
                            <div class="form-group">
                                <label> Postion </label>
                                <input type="text" class="form-control" placeholder="Postion" name="position" />
                            </div>
                            <div class="form-group">
                                <label> Upload CV </label>
                                <input type="file" name="cv" />
                            </div>
                            <!--End Form Group-->
                            <button class="custom-btn" type="submit">
                                <span>
                                    send Message <i class="fa fa-long-arrow-alt-right"></i>
                                </span>
                            </button>
                        </form>
                    </div>
                    <div class="col-lg-6">
                        <img src="{{ asset('public/site/images/about.jpg') }}" />
                    </div>
                </div>
                <!--End Row-->
            </div>
            <!--End Container-->
        </section>
        @include('site.layouts.subscribe')
    </div>
@endsection
