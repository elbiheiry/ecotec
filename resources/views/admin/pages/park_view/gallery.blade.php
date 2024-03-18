<form class="modal-content text-center ajax-form" method="put"
    action="{{ route('admin.park.gallery.update', ['id' => $image->id]) }}">
    @csrf
    @method('put')
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
            Edit Gallery Photo
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
                    <input type="file" name="image" id="media-input5" />
                    <span class="media-file-info5"></span>
                    <button type="button" class="custom-btn media-browse-btn5">
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
<script>
    const mediauploadButton5 = document.querySelector(".media-browse-btn5");
    const mediafileInfo5 = document.querySelector(".media-file-info5");
    const mediaInput5 = document.getElementById("media-input5");
    mediauploadButton5.addEventListener("click", (e) => {
        mediaInput5.click();
    });
    mediaInput5.addEventListener("change", () => {
        const name = mediaInput5.value.split(/\\|\//).pop();
        const truncated =
            name.length > 20 ? name.substr(name.length - 20) : name;

        mediafileInfo5.innerHTML = truncated;
    });

</script>
