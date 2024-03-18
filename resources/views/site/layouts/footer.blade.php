<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-12">
                <h3>about us</h3>
                <p>
                    Ecotec Developments IS INTRODUCING AN UNPRECEDENTED TECHNOLOGY IN
                    THE REAL ESTATE MARKET IN THE NEW CAPITAL
                </p>
                <p>
                    Ecotec aims at putting together its efforts to benefit from the
                    rising opportunities in the Egyptian real estate market
                </p>
            </div>
            <!--End Col-->
            <div class="col-lg-3 col-md-6">
                <h3>quick links</h3>
                <ul>
                    <li><a href="{{ route('site.index') }}">Home</a></li>
                    <li><a href="{{ route('site.about') }}">About us</a></li>
                    <li>
                        <a href="{{ route('site.park') }}"> Park View </a>
                    </li>
                    <li><a href="{{ route('site.careers') }}">Careers</a></li>
                    <li>
                        <a href="{{ route('site.contact') }}">Contact us</a>
                    </li>
                </ul>
            </div>
            <!--end col-->
            <div class="col-lg-4 col-md-6">
                <h3>Get In Touch</h3>
                <ul class="contact_info">
                    <li>
                        <i class="fa fa-map-marker"></i>
                        <a
                            href="https://www.google.com/maps/place/Samir+Abd+El-Raouf,+Al+Manteqah+Ath+Thamenah,+Nasr+City,+Cairo+Governorate/@30.0476356,31.3378919,14.96z/data=!4m16!1m10!4m9!1m4!2m2!1d31.3198485!2d30.0839459!4e1!1m3!2m2!1d31.3463974!2d30.0506709!3m4!1s0x14583e7c774a9d0d:0xaa46c7bc199a7022!8m2!3d30.0506534!4d31.3464121">
                            {{ $settings->address }}
                        </a>
                    </li>
                    <li>
                        <i class="fa fa-envelope"></i>
                        <a href="mailto:{{ $settings->email }}"> {{ $settings->email }} </a>
                    </li>
                    <li>
                        <i class="fa fa-phone"></i>
                        <a href="tel:+{{ $settings->phone1 }}"> {{ $settings->phone1 }} </a> /
                        <a href="tel:+{{ $settings->phone2 }}"> {{ $settings->phone2 }} </a> /
                        <a href="tel:+{{ $settings->phone3 }}"> {{ $settings->phone3 }}</a>
                    </li>
                    <li>
                        <i class="fas fa-mobile-alt"></i>
                        <a href="tel:+{{ $settings->mobile1 }}"> {{ $settings->mobile1 }} </a> /
                        <a href="tel:+{{ $settings->mobile2 }}"> {{ $settings->mobile2 }} </a> /
                        <a href="tel:+{{ $settings->mobile3 }}"> {{ $settings->mobile3 }}</a>
                    </li>
                </ul>
            </div>
            <!--end col-->
        </div>
        <!--End row-->
    </div>
    <!--End Container-->
    <div class="copyrights">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p>{{ $settings->copy }}</p>
                    <p>
                        Powerd by :
                        <a href="https://brandbourne.com/" target="_blank">
                            <img src="public/site/images/brandbourne.png" />BrandBourne
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
