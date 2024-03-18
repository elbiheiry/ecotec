@extends('admin.layouts.master')
@push('modals')
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
        <i class="fa fa-envelope"></i>
        Messages
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">Messages</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">
                <div class="alert-text">You have {{ \App\Models\Message::count() }} Message</div>
            </div>
            <!--End Widget Title-->
            <div class="widget-content">
                <div class="row">
                    <div class="col" id="messages-area">
                        @include('admin.pages.messages.templates.messages')
                    </div>
                    <!--End Item List-->
                    <div class="w-100"></div>
                    @if (sizeof($messages) > 6)
                        <button class="custom-btn" id="load-more-button" data-last="{{ $messages->lastPage() }}"
                            data-count="{{ $messages->currentPage() }}">
                            Load More
                        </button>
                    @endif

                </div>
            </div>
            <!--End Widget-content-->
        </div>
        <!--End Widget-->
    </div>
@endsection
@push('js')
    <script>
        $('.delete-btn').on('click', function() {
            var url = $(this).data('url');

            $('#delete-form').attr('action', url);
            $('#delete').modal('show');
        });

        //load more button
        $(document).on('click', '#load-more-button', function() {

            var button = $(this);
            var url = "{{ url()->current() }}";
            var last_page = parseInt($(this).attr('data-last'));
            var counter = parseInt($(this).attr('data-count')) + 1;

            $.ajax({
                url: url,
                method: 'GET',
                data: {
                    page: counter,
                    _token: $('input[name="_token"]').val()
                },
                success: function(response) {
                    button.attr('data-count', counter);
                    if (counter + 1 > last_page) {
                        button.css('display', 'none');
                    }
                    $('#messages-area').append(response);

                }
            });
            return false;
        });

    </script>
@endpush
