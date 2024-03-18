<form class="modal-content text-center ajax-form" method="put"
    action="{{ route('admin.sliders.update', ['id' => $slider->id]) }}">
    @csrf
    @method('put')
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Slider</h5>
        <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
            X
        </button>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="form-group">
                <label>Title first word</label>
                <input class="form-control" placeholder="Title" name="title" value="{{ $slider->title }}" />
            </div>

            <div class="form-group">
                <label>Title second word</label>
                <input class="form-control" placeholder="Title" name="title1" value="{{ $slider->title1 }}" />
            </div>

            <div class="form-group">
                <label> Text </label>
                <textarea class="form-control" name="description">{{ $slider->description }}</textarea>
                <span class="text-danger">Please click enter for each paragraph</span>
            </div>
            <!--End Form Group-->
        </div>
        <!--End Col-->
        <div class="col-12">
            <div class="form-group">
                <label> Slide Photo</label>
                <div class="input-container">
                    <input type="file" name="image" id="media-input2" />
                    <span class="media-file-info2"></span>
                    <button type="button" class="custom-btn media-browse-btn2">
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
<script>
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
