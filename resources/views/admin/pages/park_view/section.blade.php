@extends('admin.layouts.master')
@push('modals')
    <div class="modal fade" id="common-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document" id="edit-area">

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
    <div class="modal fade" id="add_feature" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center ajax-form" method="post" action="{{ route('admin.features.store') }}">
                @csrf
                @method('post')
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Feature</h5>
                    <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
                        X
                    </button>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" name="name" />
                        </div>
                    </div>
                    <!--End Col-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Feature Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input" />
                                <span class="media-file-info"></span>
                                <button type="button" class="custom-btn media-browse-btn">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        Add Photo
                                    </span>
                                </button>
                            </div>
                            <span class="text-danger">Please note that image dimensions should be : 40 * 40
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
    <!-- Page head ==========================================-->
    <div class="page-head">
        Park View Section
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">Park View Section</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">Park View Section</div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.park.section.update') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" placeholder="Title" value="{{ $park->title }}" name="title" />
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label> Text </label>
                            <textarea class="form-control" name="description">{{ $park->description }}</textarea>
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
        <!--End Widget-->
        <div class="widget">
            <div class="widget-title">Feature Section</div>
            <div class="widget-content">
                <form class="row ajax-form" method="put" action="{{ route('admin.features.section.update') }}">
                    @csrf
                    @method('put')
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title </label>
                            <input class="form-control" placeholder="Title" value="{{ $section->title }}" name="title" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label> Text </label>
                            <textarea class="form-control" name="description">{{ $section->description }}</textarea>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label> Feature Photo 1</label>
                            <div class="input-container">
                                <input type="file" name="image1" id="media-input1" />
                                <span class="media-file-info1"></span>
                                <button type="button" class="custom-btn media-browse-btn1">
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
        <div class="widget">
            <div class="widget-title">
                Features List
                <button class="custom-btn green-bc" data-toggle="modal" data-target="#add_feature">
                    <i class="fa fa-edit"></i> Add New
                </button>
            </div>
            <div class="widget-content">
                <div class="row">
                    @foreach ($features as $feature)
                        <div class="col-lg-4 col-md-6">
                            <div class="feat_item">
                                <img src="{{ get_image($feature->image, 'features') }}" />
                                <h3>{{ $feature->name }}</h3>
                                <div class="w-100">
                                    <button class="custom-btn btn-modal-view"
                                        data-url="{{ route('admin.features.show', ['id' => $feature->id]) }}">
                                        <i class="fa fa-edit"></i> Edit
                                    </button>
                                    <button class="custom-btn red-bc delete-btn"
                                        data-url="{{ route('admin.features.delete', ['id' => $feature->id]) }}">
                                        <i class="fa fa-trash-alt"></i> Delete
                                    </button>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
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
