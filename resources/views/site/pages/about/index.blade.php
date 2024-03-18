@extends('site.layouts.master')
@section('content')
    <div class="page-content">
        <section class="main_sec page_head">
            <div class="container">
                <div class="row text-center">
                    <div class="col">
                        <h3>About us</h3>
                        <ul class="breadcrumb">
                            <li><a href="{{ route('site.index') }}"> Home</a></li>
                            <li class="active">About us</li>
                        </ul>
                    </div>
                    <!-- End Col -->
                </div>
                <!--End Row-->
            </div>
            <!--End Container-->
        </section>
        <section class="about">
            <div class="container">
                <div class="row hint">
                    <div class="col-12" data-aos="fade-up" data-aos-delay="50">
                        <h2>
                            {{ $about->heading }}
                        </h2>
                        <h3>
                            <span>- {{ $about->name1 }} </span>
                            {{ $about->brief1 }}
                        </h3>
                        <h3>
                            <span>- {{ $about->name2 }} </span>
                            {{ $about->brief2 }}
                        </h3>
                        <h3>
                            <span>- {{ $about->name3 }} </span>
                            {{ $about->brief3 }}
                        </h3>
                    </div>
                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                        <img src="{{ get_image($about->image1, 'about') }}" />
                    </div>
                    <div class="col-md-6" data-aos="fade-up" data-aos-delay="150">
                        <img src="{{ get_image($about->image2, 'about') }}" />
                    </div>
                </div>
            </div>
        </section>
        @include('site.layouts.subscribe')
    </div>
@endsection
