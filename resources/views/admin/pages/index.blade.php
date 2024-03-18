@extends('admin.layouts.master')
@section('content')
    <div class="page-content">
        <div class="widget">
            <div class="widget-content">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="counter">
                                    <i class="fa fa-envelope"></i>
                                    <div class="counter-cont">
                                        <h3 class="timer" data-to="{{ \App\Models\Message::count() }}" data-speed="1500">
                                            {{ \App\Models\Message::count() }}
                                        </h3>
                                        <div class="count-name">Messages</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="counter">
                                    <i class="fa fa-file"></i>
                                    <div class="counter-cont">
                                        <h3 class="timer" data-to="{{ \App\Models\Candidate::count() }}"
                                            data-speed="1500">{{ \App\Models\Candidate::count() }}</h3>
                                        <div class="count-name">Requests</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="counter">
                                    <i class="fa fa-user-alt"></i>
                                    <div class="counter-cont">
                                        <h3 class="timer" data-to="{{ \App\Models\Subscriber::count() }}"
                                            data-speed="1500">
                                            {{ \App\Models\Subscriber::count() }}
                                        </h3>
                                        <div class="count-name">subscriber</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-100"></div>
        <div class="row" style="margin: 0 -15px">
            <div class="col-lg-6">
                <div class="widget">
                    <div class="widget-title">
                        <i class="fa fa-envelope"></i> Latest Messages
                        <a href="{{ route('admin.messages.index') }}" class="custom-btn"> see all</a>
                    </div>
                    <div class="widget-content" style="padding: 0">
                        @foreach ($messages as $message)
                            <div class="item-list">
                                <a href="{{ route('admin.messages.show', ['id' => $message->id]) }}">
                                    <img src="{{ $message->image() }}" />
                                    <div class="item-content">
                                        {{ $message->subject }}
                                        <br />
                                        <span> <i class="fa fa-clock"></i> {{ $message->created_at->diffForHumans() }}
                                        </span>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="widget">
                    <div class="widget-title">
                        <i class="fa fa-file-alt"></i>
                        Latest Request

                        <a href="{{ route('admin.candidates.index') }}" class="custom-btn"> see all</a>
                    </div>
                    <div class="widget-content">
                        @foreach ($candidates as $candidate)
                            <div class="career_item">
                                <ul class="row">
                                    <li class="col-md-6">
                                        <i class="fa fa-info"></i> {{ $candidate->name }}
                                    </li>
                                    <li class="col-md-6">
                                        <i class="fa fa-envelope"></i> {{ $candidate->email }}
                                    </li>
                                    <li class="col-md-6"><i class="fa fa-tag"></i> {{ $candidate->position }}</li>
                                    <li class="col-md-6">
                                        <i class="fa fa-file-alt"></i>
                                        <a href="{{ get_image($candidate->cv, 'candidates') }}" download="download"
                                            target="_blank">Download cv</a>
                                    </li>
                                </ul>
                            </div>
                        @endforeach
                    </div>
                    <!--End Widget-content-->
                </div>
            </div>
        </div>
    </div>
@endsection
