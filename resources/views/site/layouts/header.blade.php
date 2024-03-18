<header>
    <div class="container">
        <div class="row">
            <div class="col">
                <a href="{{ route('site.index') }}" class="navbar-brand">
                    <img src="{{ asset('public/site/images/logo.png') }}" />
                </a>
                <div class="btns">
                    <ul class="social">
                        <li>
                            <a target="_blank" href="{{ $settings->facebook }}"><i class="fab fa-facebook"></i></a>
                        </li>

                        <li>
                            <a target="_blank" href="{{ $settings->instagram }}"><i class="fab fa-instagram"></i></a>
                        </li>
                    </ul>
                    <button class="menu-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</header>
