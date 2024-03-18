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
    <!-- Page content
                                                                            ==========================================-->
    <div class="page-head">
        <i class="fa fa-file-alt"></i>
        Career Page
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">Career page</li>
        </ul>
    </div>
    <!-- Page content
                                                                            ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">
                <i class="fa fa-file-alt"></i>
                Career Page
            </div>
            <div class="widget-content">
                <div class="col" id="candidates-area">
                    @include('admin.pages.candidates.templates.candidates')
                </div>
                @if (sizeof($candidates) > 7)
                    <div class="row" style="margin: 0 -15px">
                        <div class="w-100"></div>
                        <button class="custom-btn" id="load-more-button" data-last="{{ $candidates->lastPage() }}"
                            data-count="{{ $candidates->currentPage() }}">
                            Load More
                        </button>
                    </div>
                @endif

            </div>
            <!--End Widget-content-->
        </div>
        <!--End Widget-->
    </div>
    <!--End Page content-->
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
                    $('#candidates-area').append(response);

                }
            });
            return false;
        });

    </script>
@endpush
