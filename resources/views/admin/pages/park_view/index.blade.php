@extends('admin.layouts.master')
@push('modals')
    <div class="modal fade" id="add_service" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center ajax-form" method="post"
                action="{{ route('admin.park.services.store') }}">
                @csrf
                @method('post')
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Service</h5>
                    <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
                        X
                    </button>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" name="title" />
                        </div>
                        <div class="form-group">
                            <label> Text </label>
                            <textarea class="form-control" name="description"></textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Service Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input6" />
                                <span class="media-file-info6"></span>
                                <button type="button" class="custom-btn media-browse-btn6">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 870 * 490
                            </span>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="modal fade" id="add_facilitie" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center ajax-form" method="post"
                action="{{ route('admin.park.facilities.store') }}">
                @csrf
                @method('post')
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        Add New facilitie
                    </h5>
                    <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
                        X
                    </button>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" name="title" type="text" />
                        </div>
                        <div class="form-group">
                            <label> Text </label>
                            <textarea class="form-control" name="description"></textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> facility Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input8" />
                                <span class="media-file-info8"></span>
                                <button type="button" class="custom-btn media-browse-btn8">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 640 * 430
                            </span>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center" id="delete-form" method="post">
                @csrf
                @method('delete')
                <div class="modal-header">
                    <h5 class="modal-title text-center" id="exampleModalLabel">Are you sure ?</h5>
                </div>
                <div class=" text-center">
                    <button type="submit" class="custom-btn red-bc">
                        <i class="fa fa-trash"></i> Delete
                    </button>
                    <button type="button" class="custom-btn" data-dismiss="modal">
                        <i class="fa fa-times"></i> Close
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="common-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document" id="edit-area">

        </div>
    </div>
    <div class="modal fade" id="add_gallery" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center ajax-form" method="post"
                action="{{ route('admin.park.gallery.store') }}">
                @csrf
                @method('post')
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        Add New Gallery Photo
                    </h5>
                    <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
                        X
                    </button>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label> Add Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input4" />
                                <span class="media-file-info4"></span>
                                <button type="button" class="custom-btn media-browse-btn4">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 1920 * 960
                            </span>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endpush
@section('content')
    <!-- Page head  ==========================================-->
    <div class="page-head">
        <i class="fa fa-tags"></i>
        ParkView
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">ParkView</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">1- Main Section</div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.park.update') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" placeholder="Title" value="{{ $section->title }}" name="title" />
                        </div>
                        <div class=" form-group">
                            <label> Text #1 </label>
                            <textarea class="form-control" name="description1">{{ $section->description1 }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-6">
                        <div class="form-group">
                            <label> Parkview Logo </label>
                            <div class="input-container">
                                <input type="file" name="image1" id="media-input1" />
                                <span class="media-file-info1"></span>
                                <button type="button" class="custom-btn media-browse-btn1">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 270 * 270
                            </span>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <label> Feature Photo</label>
                            <div class="input-container">
                                <input type="file" name="image2" id="media-input2" />
                                <span class="media-file-info2"></span>
                                <button type="button" class="custom-btn media-browse-btn2">
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
                        <hr />
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label> Text #2 </label>
                            <textarea class="form-control" name="description2">{{ $section->description2 }}</textarea>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label> Square </label>
                            <input type="text" class="form-control" value="{{ $section->square }}" name="square" />
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label>building </label>
                            <input type="text" class="form-control" value="{{ $section->building }}" name="building" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label> Address </label>
                            <input type="text" class="form-control" value="{{ $section->address }}" name="address" />
                        </div>
                    </div>
                    <div class="col-12">
                        <hr />
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Location section title </label>
                            <input class="form-control" placeholder="Title" value="{{ $section->location_title }}"
                                name="location_title" />
                        </div>
                        <div class="form-group">
                            <label> Location Photo </label>
                            <div class="input-container">
                                <input type="file" name="image3" id="media-input3" />
                                <span class="media-file-info3"></span>
                                <button type="button" class="custom-btn media-browse-btn3">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 620 * 320
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="form-group">
                            <label> Location section description </label>
                            <textarea class="form-control"
                                name="location_description">{{ $section->location_description }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
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
        <div class="widget">
            <div class="widget-title">
                2- Gallery
                <button class="custom-btn green-bc" data-toggle="modal" data-target="#add_gallery">
                    <i class="fa fa-edit"></i> Add New
                </button>
            </div>
            <div class="widget-content">
                <div class="row">
                    @foreach ($images as $image)
                        <div class="col-lg-4 col-md-6">
                            <div class="slide_item service_item">
                                <img src="{{ get_image($image->image, 'gallery') }}" />
                                <div class="slide_cont">
                                    <div class="w-100">
                                        <button class="custom-btn btn-modal-view"
                                            data-url="{{ route('admin.park.gallery.show', ['id' => $image->id]) }}">
                                            <i class="fa fa-edit"></i> Edit
                                        </button>
                                        <button class="custom-btn red-bc delete-btn"
                                            data-url="{{ route('admin.park.gallery.delete', ['id' => $image->id]) }}">
                                            <i class="fa fa-trash-alt"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="widget">
            <div class="widget-title">
                3- Services
                <button class="custom-btn green-bc" data-toggle="modal" data-target="#add_service">
                    <i class="fa fa-edit"></i> Add New
                </button>
            </div>
            <div class="widget-content">
                <div class="row">
                    @foreach ($services as $service)
                        <div class="col-lg-4 col-md-6">
                            <div class="slide_item service_item">
                                <img src="{{ get_image($service->image, 'services') }}" />
                                <div class="slide_cont">
                                    <h3>{{ $service->title }}</h3>
                                    <div class="w-100">
                                        <button class="custom-btn btn-modal-view"
                                            data-url="{{ route('admin.park.services.show', ['id' => $service->id]) }}">
                                            <i class="fa fa-edit"></i> Edit
                                        </button>
                                        <button class="custom-btn red-bc delete-btn"
                                            data-url="{{ route('admin.park.services.delete', ['id' => $service->id]) }}">
                                            <i class="fa fa-trash-alt"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <!--End Widget-content-->
        </div>
        <div class="widget">
            <div class="widget-title">
                4- facilities
                <button class="custom-btn green-bc" data-toggle="modal" data-target="#add_facilitie">
                    <i class="fa fa-edit"></i> Add New
                </button>
            </div>
            <div class="widget-content">
                <div class="row">
                    @foreach ($facilities as $facility)
                        <div class="col-lg-4 col-md-6">
                            <div class="slide_item service_item">
                                <img src="{{ get_image($facility->image, 'facilities') }}" />
                                <div class="slide_cont">
                                    <h3>{{ $facility->title }}</h3>
                                    <div class="w-100">
                                        <button class="custom-btn btn-modal-view"
                                            data-url="{{ route('admin.park.facilities.show', ['id' => $facility->id]) }}">
                                            <i class="fa fa-edit"></i> Edit
                                        </button>
                                        <button class="custom-btn red-bc delete-btn"
                                            data-url="{{ route('admin.park.facilities.delete', ['id' => $facility->id]) }}">
                                            <i class="fa fa-trash-alt"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
            <!--End Widget-content-->
        </div>
        <div class="widget">
            <div class="widget-title">5- Project Consultants</div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.park.update2') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label> Consultant #1 </label>
                            <input type="text" class="form-control" value="{{ $consultant->name1 }}" name="name1" />
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="description1">{{ $consultant->description1 }}</textarea>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label> Consultant #2 </label>
                            <input type="text" class="form-control" value="{{ $consultant->name2 }}" name="name2" />
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="description2">{{ $consultant->description2 }}</textarea>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--End Page content-->
@endsection
@push('js')
    <script>
        const mediauploadButton1 = document.querySelector(".media-browse-btn1");
        const mediafileInfo1 = document.querySelector(".media-file-info1");
        const mediaInput1 = document.getElementById("media-input1");
        mediauploadButton1.addEventListener("click", (e) => {
            mediaInput1.click();
        });
        mediaInput1.addEventListener("change", () => {
            const name = mediaInput1.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo1.innerHTML = truncated;
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

        const mediauploadButton3 = document.querySelector(".media-browse-btn3");
        const mediafileInfo3 = document.querySelector(".media-file-info3");
        const mediaInput3 = document.getElementById("media-input3");
        mediauploadButton3.addEventListener("click", (e) => {
            mediaInput3.click();
        });
        mediaInput3.addEventListener("change", () => {
            const name = mediaInput3.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo3.innerHTML = truncated;
        });

        const mediauploadButton4 = document.querySelector(".media-browse-btn4");
        const mediafileInfo4 = document.querySelector(".media-file-info4");
        const mediaInput4 = document.getElementById("media-input4");
        mediauploadButton4.addEventListener("click", (e) => {
            mediaInput4.click();
        });
        mediaInput4.addEventListener("change", () => {
            const name = mediaInput4.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo4.innerHTML = truncated;
        });

        const mediauploadButton6 = document.querySelector(".media-browse-btn6");
        const mediafileInfo6 = document.querySelector(".media-file-info6");
        const mediaInput6 = document.getElementById("media-input6");
        mediauploadButton6.addEventListener("click", (e) => {
            mediaInput6.click();
        });
        mediaInput6.addEventListener("change", () => {
            const name = mediaInput6.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo6.innerHTML = truncated;
        });

        const mediauploadButton8 = document.querySelector(".media-browse-btn8");
        const mediafileInfo8 = document.querySelector(".media-file-info8");
        const mediaInput8 = document.getElementById("media-input8");
        mediauploadButton8.addEventListener("click", (e) => {
            mediaInput8.click();
        });
        mediaInput8.addEventListener("change", () => {
            const name = mediaInput8.value.split(/\\|\//).pop();
            const truncated =
                name.length > 20 ? name.substr(name.length - 20) : name;

            mediafileInfo8.innerHTML = truncated;
        });

        $('.delete-btn').on('click', function() {
            var url = $(this).data('url');

            $('#delete-form').attr('action', url);
            $('#delete').modal('show');
        });


        $(document).on('click', '.btn-modal-view', function() {
            var $this = $(this);
            var url = $this.data('url');
            var originalHtml = $this.html();

            $.ajax({
                url: url,
                method: 'GET',
                success: function(data) {
                    $this.prop('disabled', false).html(originalHtml);
                    $('#common-modal').modal('show');
                    $('#edit-area').html(data);
                }
            });
        });

    </script>
@endpush
