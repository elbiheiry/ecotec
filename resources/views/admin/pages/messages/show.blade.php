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
            <div class="widget-content only-message">
                <div class="row">
                    <div class="message-head">
                        <div class="sender-img">
                            <img src="{{ $message->image() }}" />
                        </div>
                        <div class="sender-name">
                            {{ $message->name }}
                            <br />
                            <span> <i class="fa fa-clock"></i> {{ $message->created_at->diffForHumans() }} </span>
                            <span> <i class="fa fa-envelope"></i> {{ $message->email }} </span>
                            <span> <i class="fa fa-phone"></i> {{ $message->phone }} </span>
                        </div>
                        <button class="icon-btn red-bc delete-btn"
                            data-url="{{ route('admin.messages.delete', ['id' => $message->id]) }}">
                            <i class="fa fa-trash"></i>
                        </button>
                    </div>
                    <div class="message-details">
                        <p>
                            {!! $message->message !!}
                        </p>
                    </div>
                </div>
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

    </script>
@endpush
