@extends('site.layouts.master')
@section('content')
    <div class="page-content">
        <section class="main_sec project_head">
            <div class="container">
                <div class="row text-center">
                    <div class="col">
                        <img src="{{ get_image($section->image1, 'park') }}" />
                    </div>
                    <!-- End Col -->
                </div>
                <!--End Row-->
            </div>
            <!--End Container-->
        </section>
        <section class="about">
            <div class="container">
                <div class="row about_wrap">
                    <div class="col-lg-7 about-content green aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                        <h1 data-aos="fade-up" data-aos-delay="150" class="aos-init aos-animate">
                            {{ $section->title }}
                        </h1>
                        <p data-aos="fade-up" data-aos-delay="200" class="aos-init aos-animate">
                            {{ $section->description1 }}
                        </p>
                    </div>
                    <div class="col-lg-5 about-img aos-init aos-animate" data-aos="fade-up" data-aos-delay="50">
                        <img src="{{ get_image($section->image2, 'park') }}" />
                    </div>
                </div>
            </div>
        </section>
        <section class="project white_bc">
            <div class="container">
                <div class="row">
                    <div class="sec_id" id="about"></div>
                    <div class="col" data-aos="fade-up" data-aos-delay="100">
                        <div class="widget">
                            <div class="row">
                                <div class="col-12">
                                    <h3>{{ $section->title }}</h3>
                                </div>
                                <div class="col-lg-8">
                                    @foreach (explode("\n", $section->description2) as
                                        $item)
                                        <p>
                                            {{ $item }}
                                        </p>
                                    @endforeach

                                </div>
                                <div class="col-lg-4">
                                    <ul>
                                        <li>
                                            <i class="fa fa-object-group"></i>
                                            {{ $section->square }}
                                        </li>
                                        <li>
                                            <i class="far fa-building"></i>
                                            {{ $section->building }}
                                        </li>
                                        <li>
                                            <i class="fas fa-map-marked-alt"></i>
                                            {{ $section->address }}
                                        </li>

                                        <a href="{{ route('site.contact') }}">
                                            <span>
                                                Contact us
                                                <i class="fa fa-long-arrow-alt-right"></i> </span></a>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="gallery">
            <div class="container-fluid">
                <div class="row">
                    <div class="sec_id" id="gallery"></div>
                    <div class="col-12 swiper">
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                @foreach ($images as $image)
                                    <div class="swiper-slide">
                                        <img src="{{ get_image($image->image, 'gallery') }}" />
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next swiper-button-white"></div>
                        <div class="swiper-button-prev swiper-button-white"></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="project gray">
            <div class="container">
                <div class="row">
                    <div class="sec_id" id="location"></div>
                    <div class="col" data-aos="fade-up" data-aos-delay="100">
                        <div class="widget">
                            <div class="row">
                                <div class="col-lg-5">
                                    <h3>{{ $section->location_title }}</h3>
                                    <p>
                                        {{ $section->location_description }}
                                    </p>
                                </div>
                                <div class="col-lg-7">
                                    <img src="{{ get_image($section->image3, 'park') }}" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @foreach ($services as $index => $service)
            @if ($index % 2 == 0)
                <section class="project">
                    <div class="container">
                        <div class="row">
                            <div class="sec_id" id="services"></div>
                            <div class="col-12" data-aos="fade-up" data-aos-delay="200">
                                <div class="widget">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <h3>
                                                <span> Services </span>
                                                {{ $service->title }}
                                            </h3>
                                            <p>
                                                {{ $service->description }}
                                            </p>
                                        </div>
                                        <div class="col-lg-6">
                                            <img src="{{ get_image($service->image, 'services') }}" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            @else
                <section class="project gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5" data-aos="fade-up" data-aos-delay="200">
                                <img src="{{ get_image($service->image, 'services') }}" />
                            </div>
                            <div class="col-lg-7" data-aos="fade-up" data-aos-delay="100">
                                <div class="widget">
                                    <h3><span>Services</span> {{ $service->title }}</h3>
                                    <p>
                                        {{ $service->description }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            @endif
        @endforeach
        <section class="project facilt">
            <div class="container">
                <div class="row">
                    <div class="sec_id" id="facilities"></div>
                    <div class="col-12 text-center" data-aos="fade-up" data-aos-delay="50">
                        <h3>Our FACILITIES</h3>
                    </div>
                    @php
                        $x = 50;
                    @endphp
                    @foreach ($facilities as $index => $facility)
                        <div class="col-lg-{{ $loop->last || $loop->iteration == sizeof($facilities) - 1 ? '6' : '4' }} col-md-6"
                            data-aos="fade-up" data-aos-delay="{{ $x }}">
                            <div class="widget">
                                <img src="{{ get_image($facility->image, 'facilities') }}" />
                                <h4>{{ $facility->title }}</h4>
                                <h6>{{ $facility->description }}</h6>
                            </div>
                        </div>
                        @php
                            $x += 50;
                        @endphp
                    @endforeach
                </div>
            </div>
        </section>
        <section class="project gray">
            <div class="container">
                <div class="row">
                    <div class="sec_id" id="consultants"></div>
                    <div class="col-12" id="consultants" data-aos="fade-up" data-aos-delay="250">
                        <div class="widget">
                            <h3>Project Consultants</h3>
                            <p>
                                <span>{{ $consultant->name1 }}</span>
                                {{ $consultant->description1 }}
                            </p>
                            <p>
                                <span>{{ $consultant->name2 }}</span>

                                {{ $consultant->description2 }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @include('site.layouts.subscribe')
    </div>
@endsection
