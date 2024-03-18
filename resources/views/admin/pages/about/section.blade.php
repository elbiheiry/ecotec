@extends('admin.layouts.master')
@section('content')
    <!-- Page head ==========================================-->
    <div class="page-head">
        <i class="fa fa-info"></i>
        About Section
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">About Section</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">
                <i class="fa fa-info"></i>
                About Section
            </div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.about.section.update') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" value="{{ $about->title }}" name="title" />
                        </div>
                        <div class="form-group">
                            <label>Subtitle </label>
                            <input class="form-control" value="{{ $about->title1 }}" name="title1" />
                        </div>
                        <div class="form-group">
                            <label> brief </label>
                            <textarea class="form-control" name="description">{{ $about->description }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Feature Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input" add image />
                                <span class="media-file-info"></span>
                                <button type="button" class="custom-btn media-browse-btn">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 990 * 840
                            </span>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
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

    </script>
@endpush
