<form class="modal-content text-center ajax-form" method="put"
    action="{{ route('admin.park.services.update', ['id' => $service->id]) }}">
    @csrf
    @method('put')
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Service</h5>
        <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
            X
        </button>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="form-group">
                <label>Title </label>
                <input class="form-control" placeholder="Title" value="{{ $service->title }}" name="title" />
            </div>
            <div class="form-group">
                <label> Text </label>
                <textarea class="form-control" name="description">{{ $service->description }}</textarea>
            </div>
            <!--End Form Group-->
        </div>
        <!--End Col-->
        <div class="col-12">
            <div class="form-group">
                <label> Service Photo</label>
                <div class="input-container">
                    <input type="file" name="image" id="media-input7" />
                    <span class="media-file-info7"></span>
                    <button type="button" class="custom-btn media-browse-btn7">
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

<script>
    const mediauploadButton7 = document.querySelector(".media-browse-btn7");
    const mediafileInfo7 = document.querySelector(".media-file-info7");
    const mediaInput7 = document.getElementById("media-input7");
    mediauploadButton7.addEventListener("click", (e) => {
        mediaInput7.click();
    });
    mediaInput7.addEventListener("change", () => {
        const name = mediaInput7.value.split(/\\|\//).pop();
        const truncated =
            name.length > 20 ? name.substr(name.length - 20) : name;

        mediafileInfo7.innerHTML = truncated;
    });

</script>
