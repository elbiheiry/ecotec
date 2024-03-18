@extends('site.layouts.master')
@section('content')
    <div class="page-content">
        <section class="main_sec">
            <div class="container-fluid">
                <div class="row">
                    <div id="home_slider" class="carousel" data-ride="carousel">
                        <div class="carousel-inner">
                            @foreach ($sliders as $index => $slider)
                                <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
                                    <img src="{{ get_image($slider->image, 'sliders') }}" class="animated zoomOut"
                                        style="animation-duration: 7s" />
                                    <div class="caption">
                                        <div class="cont">
                                            <h1 class="animated fadeInUp" style="animation-delay: 0.5s">
                                                {{ $slider->title }} <span>{{ $slider->title1 }}</span>
                                            </h1>
                                            <p class="animated fadeInUp" style="animation-delay: 1s">
                                                @foreach (explode("\n", $slider->description)
                                                    as $desc)
                                                    {{ $desc }}<br />
                                                @endforeach
                                            </p>
                                            <a href="{{ route('site.about') }}" class="animated fadeInUp"
                                                style="animation-delay: 1.5s">
                                                <span>
                                                    More Details
                                                    <i class="fa fa-long-arrow-alt-right"></i>
                                                </span>
                                            </a>
                                        </div>
                                        <!--End cont-->
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <a class="carousel-control-prev" href="#home_slider" role="button" data-slide="prev">
                            <i class="fa fa-long-arrow-alt-left"></i>
                        </a>
                        <a class="carousel-control-next" href="#home_slider" role="button" data-slide="next">
                            <i class="fa fa-long-arrow-alt-right"></i>
                        </a>
                        <ol class="carousel-indicators">
                            @foreach ($sliders as $index => $slider)
                                <li data-target="#home_slider" data-slide-to="{{ $index }}"
                                    class="{{ $index == 0 ? 'active' : '' }}"></li>
                            @endforeach
                        </ol>
                    </div>
                </div>
                <!--End Row-->
            </div>
            <!--End Container-->
        </section>
        <section class="about">
            <div class="container">
                <div class="row about_wrap">
                    <div class="col-lg-6 about-content" data-aos="fade-up" data-aos-delay="100">
                        <h1 data-aos="fade-up" data-aos-delay="150">
                            {{ $about->title }} <span>{{ $about->title1 }}</span>
                        </h1>
                        <p data-aos="fade-up" data-aos-delay="200">
                            {{ $about->description }}
                        </p>
                        <div class="w-100" data-aos="fade-up" data-aos-delay="250">
                            <a href="{{ route('site.about') }}">
                                <span>
                                    More Details <i class="fa fa-long-arrow-alt-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 about-img" data-aos="fade-up" data-aos-delay="50">
                        <img src="{{ get_image($about->image, 'about') }}" />
                    </div>
                </div>
            </div>
        </section>
        <section class="park_view">
            <div class="container-fluid">
                <div class="row">
                    <div class="about-content">
                        <h1 data-aos="fade-up" data-aos-delay="100">{{ $park->title }}</h1>
                        @foreach (explode(" \n", $park->description) as $desc)
                            <p data-aos="fade-up" data-aos-delay="150">
                                {{ $desc }}
                            </p>
                        @endforeach
                        <div class="w-100" data-aos="fade-up" data-aos-delay="250">
                            <a href="{{ route('site.park') }}">
                                <span>
                                    More About ParkView
                                    <i class="fa fa-long-arrow-alt-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 data-aos="fade-up" data-aos-delay="50">
                            {{ $section->title }}
                        </h3>
                        <p data-aos="fade-up" data-aos-delay="100">
                            {{ $section->description }}
                        </p>
                        <div class="row">
                            @php
                                $x = 50;
                            @endphp
                            @foreach ($features as $feature)
                                <div class="col-md-6" data-aos="fade-up" data-aos-delay="{{ $x }}">
                                    <div class="feat_item">
                                        <img src="{{ get_image($feature->image, 'features') }}" />
                                        <h3> {{ $feature->name }}</h3>
                                    </div>
                                </div>
                                @php
                                    $x += 50;
                                @endphp
                            @endforeach
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <img src="{{ get_image($section->image1, 'features') }}" data-aos="fade-up"
                            data-aos-delay="100" />
                        <img src="{{ get_image($section->image2, 'features') }}" data-aos="fade-up"
                            data-aos-delay="150" />
                    </div>
                </div>
            </div>
        </section>
        @include('site.layouts.subscribe')
    </div>
@endsection
