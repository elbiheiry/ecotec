<form class="modal-content text-center ajax-form" method="put"
    action="{{ route('admin.park.facilities.update', ['id' => $facility->id]) }}">
    @csrf
    @method('put')
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit facility</h5>
        <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
            X
        </button>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="form-group">
                <label>Title </label>
                <input class="form-control" placeholder="Title" value="{{ $facility->title }}" name="title" />
            </div>
            <div class="form-group">
                <label> Text </label>
                <textarea class="form-control" name="description">{{ $facility->description }}</textarea>
            </div>
            <!--End Form Group-->
        </div>
        <!--End Col-->
        <div class="col-12">
            <div class="form-group">
                <label> facility Photo</label>
                <div class="input-container">
                    <input type="file" name="image" id="media-input9" />
                    <span class="media-file-info9"></span>
                    <button type="button" class="custom-btn media-browse-btn9">
                        <span>
                            <i class="fa fa-upload"></i>
                            Add Photo
                        </span>
                    </button>
                </div>
                <span class="text-danger">Please note that image dimensions should be : 890 * 490
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
    const mediauploadButton9 = document.querySelector(".media-browse-btn9");
    const mediafileInfo9 = document.querySelector(".media-file-info9");
    const mediaInput9 = document.getElementById("media-input9");
    mediauploadButton9.addEventListener("click", (e) => {
        mediaInput9.click();
    });
    mediaInput9.addEventListener("change", () => {
        const name = mediaInput9.value.split(/\\|\//).pop();
        const truncated =
            name.length > 20 ? name.substr(name.length - 20) : name;

        mediafileInfo9.innerHTML = truncated;
    });

</script>
