@extends('site.layouts.master')
@section('content')
    <div class="page-content">
        <section class="main_sec page_head">
            <div class="container">
                <div class="row text-center">
                    <div class="col">
                        <h3>Contact Us</h3>
                        <ul class="breadcrumb">
                            <li><a href="{{ route('site.index') }}"> Home</a></li>
                            <li class="active">Contact us</li>
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
                        <form data-aos="fade-up" data-aos-delay="50" class="aos-init aos-animate ajax-form"
                            action="{{ route('site.contact.store') }}" method="post">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <h3>GET IN TOUCH</h3>
                                    <p>
                                        For more details send your contact info and one our team
                                        will contact you
                                    </p>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name </label>
                                        <input type="text" class="form-control" name="name" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email Address</label>
                                        <input type="email" class="form-control" name="email" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone Number </label>
                                        <input type="text" class="form-control" name="phone" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label> Subject </label>
                                        <input type="text" class="form-control" name="subject" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label> Message </label>
                                        <textarea class="form-control" name="message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button class="custom-btn" type="submit">
                                        <span>
                                            Send Message <i class="fa fa-angle-right"></i></span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-6 aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4643.295658596516!2d31.342496245874454!3d30.050735338498033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583e7c774a9d0d%3A0xaa46c7bc199a7022!2sSamir%20Abd%20El-Raouf%2C%20Al%20Manteqah%20Ath%20Thamenah%2C%20Nasr%20City%2C%20Cairo%20Governorate!5e0!3m2!1sen!2seg!4v1616937389002!5m2!1sen!2seg"
                            width="100%" height="580" style="border: 0" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </section>
        @include('site.layouts.subscribe')
    </div>
@endsection
