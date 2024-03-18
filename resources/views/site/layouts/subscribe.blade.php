<section class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-4">
                <h3>Follow us</h3>
                <ul class="social">
                    <li>
                        <a target="_blank" href="{{ $settings->facebook }}"><i class="fab fa-facebook"></i></a>
                    </li>

                    <li>
                        <a target="_blank" href="{{ $settings->instagram }}"><i class="fab fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6 col-md-8">
                <form class="subscribe_form ajax-form" action="{{ route('site.subscribe') }}" method="post">
                    @csrf
                    <h3>Subscribe To Get Exclusive Benefits</h3>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email Address" />
                        <button type="submit">
                            <span> <i class="fa fa-envelope"></i> Subscribe </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
