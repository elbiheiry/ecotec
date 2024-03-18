<form class="modal-content text-center ajax-form" method="put"
    action="{{ route('admin.features.update', ['id' => $feature->id]) }}">
    @csrf
    @method('put')
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Feature</h5>
        <button type="button" class="close red-bc icon-btn" data-dismiss="modal" aria-label="Close">
            X
        </button>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="form-group">
                <label>Feature Name </label>
                <input class="form-control" placeholder="Title" value="{{ $feature->name }}" name="name" />
            </div>
        </div>
        <!--End Col-->
        <div class="col-12">
            <div class="form-group">
                <label> Feature Photo</label>
                <div class="input-container">
                    <input type="file" name="image" id="media-input3" />
                    <span class=" media-file-info3"></span>
                    <button type="button" class="custom-btn media-browse-btn3">
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
<script>
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

</script>
