$(document).on('submit' , '.ajax-form' , function () {
    var form = $(this);
    var url = form.attr('action');
    var formData = new FormData(form[0]);
    form.find(":submit").attr('disabled' , true).html('Please wait <i class="fa fa-long-arrow-alt-right"></i>');

    $.ajax({
        url : url,
        method : 'POST',
        dataType: 'json',
        data : formData,
        contentType:false,
        cache: false,
        processData:false,
        success : function (response) {
            notification("success", response ,"fas fa-check");
            setTimeout(function () {
                window.location.reload();
            }, 2000);
        },
        error : function (jqXHR) {
            var response = $.parseJSON(jqXHR.responseText);
            notification("danger", response ,"fas fa-times");
            form.find(":submit").attr('disabled' , false).html('Save Change <i class="fa fa-long-arrow-alt-right"></i>');
        }
    });
    $.ajaxSetup({
        headers:
            {
                'X-CSRF-Token': $('input[name="_token"]').val()
            }
    });
    return false;
});

////Delete method
$(document).on('click' ,'.deleteBTN',function () {
    var url = $(this).data('url');

    $('#delete-form').attr('action' , url);
});

//bootstrap notify
function notification(type, message ,icon) {
    var content = {};

    content.message = message;
    content.icon = icon;

    var notify = $.notify(content, {
        type: type,
        allow_dismiss: false,
        newest_on_top: true,
        mouse_over: true,
        spacing: 10,
        timer: 2000,
        placement: {
            from: 'bottom',
            align: "right" // isRTL() ? 'left' :
        },
        offset: {
            x: 10,
            y: 10
        },
        delay: 1000,
        z_index: 99999999,
        animate: {
            enter: "animated fadeInUp",
            exit: "animated fadeOutDown"
        }
    });
}