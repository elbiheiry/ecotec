@extends('admin.layouts.master')
@push('modals')
    <div class="modal fade" id="common-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document" id="edit-area">

        </div>
    </div>
    <div class="modal fade" id="add_slide" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form class="modal-content text-center ajax-form" method="post" action="{{ route('admin.sliders.store') }}">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Slider</h5>
                    <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
                        X
                    </button>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Title first word</label>
                            <input class="form-control" name="title" />
                        </div>
                        <div class="form-group">
                            <label>Title second word</label>
                            <input class="form-control" name="title1" />
                        </div>
                        <div class="form-group">
                            <label> Text </label>
                            <textarea class="form-control" name="description"></textarea>
                            <span class="text-danger">Please click enter for each paragraph</span>
                        </div>
                        <!--End Form Group-->
                    </div>
                    <!--End Col-->
                    <div class="col-12">
                        <div class="form-group">
                            <label> Slide Photo</label>
                            <div class="input-container">
                                <input type="file" name="image" id="media-input" />
                                <span class="media-file-info"></span>
                                <button type="button" class="custom-btn media-browse-btn">
                                    <span>
                                        <i class="fa fa-upload"></i>
                                        add image
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
@endpush
@section('content')
    <!-- Page head ==========================================-->
    <div class="page-head">
        Slider
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">Slider</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">
                Slider
                <button class="custom-btn green-bc" data-toggle="modal" data-target="#add_slide">
                    <i class="fa fa-edit"></i> Add New
                </button>
            </div>
            <div class="widget-content">
                @foreach ($sliders as $index => $slider)
                    <div class="slide_item">
                        <img src="{{ get_image($slider->image, 'sliders') }}" />
                        <div class="slide_cont">
                            <span> #{{ $index + 1 }} </span>
                            <h3>{{ $slider->title }} {{ $slider->title1 }}</h3>
                            <p>
                                {{ $slider->description }}
                            </p>
                            <div class="w-100">
                                <button class="custom-btn btn-modal-view"
                                    data-url="{{ route('admin.sliders.show', ['id' => $slider->id]) }}">
                                    <i class="fa fa-edit"></i> Edit
                                </button>
                                <button class="custom-btn red-bc delete-btn"
                                    data-url="{{ route('admin.sliders.delete', ['id' => $slider->id]) }}">
                                    <i class="fa fa-trash-alt"></i> Delete
                                </button>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <!--End Widget-content-->
        </div>
    </div>
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
