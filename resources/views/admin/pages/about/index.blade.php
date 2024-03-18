@extends('admin.layouts.master')
@section('content')
    <!-- Page head ==========================================-->
    <div class="page-head">
        <i class="fa fa-info"></i>
        About page
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">About page</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">
                <i class="fa fa-info"></i>
                About Page
            </div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.about.update') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label>Main Heding </label>
                            <textarea class="form-control" name="heading">{{ $about->heading }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-md-6-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Company Name #1 : </label>
                            <input type="text" class="form-control" name="name1" value=" {{ $about->name1 }}" />
                        </div>
                        <div class="form-group">
                            <label> brief </label>
                            <textarea class="form-control" name="brief1">{{ $about->brief1 }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <!--End Col-md-6-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Company Name #2: </label>
                            <input type="text" class="form-control" name="name2" value=" {{ $about->name2 }}" />
                        </div>
                        <div class="form-group">
                            <label> brief </label>
                            <textarea class="form-control" name="brief2">{{ $about->brief2 }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <!--End Col-md-6-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Company Name #3 : </label>
                            <input type="text" class="form-control" name="name3" value=" {{ $about->name3 }}" />
                        </div>
                        <div class="form-group">
                            <label> brief </label>
                            <textarea class="form-control" name="brief3">{{ $about->brief3 }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label> Feature Photo 1</label>
                            <div class="input-container">
                                <input type="file" name="image1" id="media-input" />
                                <span class="media-file-info"></span>
                                <button type="button" class="custom-btn media-browse-btn">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        add image
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 580 * 420
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label> Feature Photo 2</label>
                            <div class="input-container">
                                <input type="file" name="image2" id="media-input2" />
                                <span class="media-file-info2"></span>
                                <button type="button" class="custom-btn media-browse-btn2">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        add image
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 580 * 420
                            </span>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </form>
                <!--End Form-->
            </div>
            <!--End Widget-content-->
        </div>
        <!--End Widget-->
    </div>
    <!--End Page content-->
@endsection
@push('js')
    <script>
        const mediauploadButton = document.querySelector(".media-browse-btn");
        const mediafileInfo = document.querySelector(".media-file-info");
        const mediaInput = document.getElementById("media-input");
        mediauploadButton.addEventListener("click", (e) => {
            mediaInput.click();
        });
        mediaInput.addEventListener("change", () => {
            const name = mediaInput.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo.innerHTML = truncated;
        });

        const mediauploadButton2 = document.querySelector(".media-browse-btn2");
        const mediafileInfo2 = document.querySelector(".media-file-info2");
        const mediaInput2 = document.getElementById("media-input2");
        mediauploadButton2.addEventListener("click", (e) => {
            mediaInput2.click();
        });
        mediaInput2.addEventListener("change", () => {
            const name = mediaInput2.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo2.innerHTML = truncated;
        });

    </script>
@endpush
