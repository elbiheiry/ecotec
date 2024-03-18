<html lang="en" dir="ltr">

<head>
    <!-- Meta Tags
        ==============================-->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="keywords" content="" />
    <meta name="copyright" content="" />
    <title>ECOTEC Developments</title>

    <!-- Fave Icons
    ================================-->
    <link rel="shortcut icon" href="{{ asset('public/site/images/fav-icon.png') }}" />

    <!-- CSS Files
    ================================-->
    <link rel="stylesheet" href="{{ asset('public/site/vendor/bootstrap/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
        integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous" />
    <link rel="stylesheet" href="{{ asset('public/site/vendor/aos/aos.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/site/vendor/aos/animate.css') }}" />
    @if (request()->routeIs('site.park'))
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    @endif
    <link rel="stylesheet" href="{{ asset('public/site/css/style.css') }}" />
</head>

<body>
    <!-- Loading -->
    <div class="loading">
        <div class="load_cont">
            <img src="{{ asset('public/site/images/logo.png') }}" />
        </div>
    </div>
    @include('site.layouts.header')
    @if (request()->routeIs('site.park'))
        @include('site.layouts.project_header')
    @endif
    @include('site.layouts.aside')
    <!-- Main Section -->
    @yield('content')
    @include('site.layouts.footer')
    <button class="up-btn {{ request()->routeIs('site.park') ? 'green' : '' }}">
        <i class="fa fa-long-arrow-alt-up"></i>
    </button>
    <div class="cursor {{ request()->routeIs('site.park') ? 'green' : '' }}"></div>
    <!-- JS & Vendor Files
    ==========================================-->
    <script src="{{ asset('public/site/vendor/jquery/jquery.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="{{ asset('public/site/vendor/bootstrap/bootstrap.min.js') }}"></script>
    <script src="{{ asset('public/site/vendor/bootstrap-notify/bootstrap-notify.js') }}"></script>
    <script src="{{ asset('public/site/vendor/aos/aos.js') }}"></script>
    @if (request()->routeIs('site.park'))
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    @endif
    <script src="{{ asset('public/site/js/main.js') }}"></script>
    @if (request()->routeIs('site.park'))
        <script>
            var galleryTop = new Swiper(".gallery-top", {
                spaceBetween: 0,
                grabCursor: true,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });

        </script>
    @endif
    <script>
        function notification(type, message, icon) {
            var content = {};

            content.message = message;
            content.icon = icon;

            var notify = $.notify(content, {
                type: type,
                allow_dismiss: false,
                newest_on_top: true,
                mouse_over: true,
                spacing: 10,
                timer: 2000,
                placement: {
                    from: 'bottom',
                    align: "{{ app()->getLocale() == 'en' ? 'right' : 'left' }}" // isRTL() ? 'left' :
                },
                offset: {
                    x: 10,
                    y: 10
                },
                delay: 1000,
                z_index: 99999999,
                animate: {
                    enter: "animated fadeInUp",
                    exit: "animated fadeOutDown"
                }
            });
        }
        $(document).on('submit', '.ajax-form', function() {
            var form = $(this);
            var url = form.attr('action');
            var formData = new FormData(form[0]);
            form.find(":submit").attr('disabled', true);

            $.ajax({
                url: url,
                method: 'POST',
                dataType: 'json',
                data: formData,
                contentType: false,
                cache: false,
                processData: false,
                success: function(response) {
                    form.find(":submit").attr('disabled', false);
                    notification("success", response, "fas fa-check");
                    form[0].reset();
                },
                error: function(jqXHR) {
                    var response = $.parseJSON(jqXHR.responseText);
                    form.find(":submit").attr('disabled', false);
                    notification("danger", response, "fas fa-times");
                }
            });

            $.ajaxSetup({
                headers: {
                    'X-CSRF-Token': $('input[name="_token"]').val()
                }
            });
            return false;
        });

    </script>
</body>

</html>
