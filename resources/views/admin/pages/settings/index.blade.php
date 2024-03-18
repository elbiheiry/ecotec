@extends('admin.layouts.master')
@section('content')
    <!-- Page head ==========================================-->
    <div class="page-head">
        <i class="fa fa-cog"></i>
        Main Setting
        <ul class="breadcrumb">
            <li>
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard</a>
            </li>
            <li class="active">Main Setting</li>
        </ul>
    </div>
    <!-- Page content ==========================================-->
    <div class="page-content">
        <div class="widget">
            <div class="widget-title">Main Setting</div>
            <div class="widget-content">
                <form method="put" action="{{ route('admin.settings.update') }}" class="ajax-form">
                    @csrf
                    @method('put')
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Site Title </label>
                                <input type="text" class="form-control" value="{{ $settings->title }}" name="title" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Copy Rights Text </label>
                                <input type="text" class="form-control" value="{{ $settings->copy }}" name="copy" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Address</label>
                                <input type="text" class="form-control" name="address" value="{{ $settings->address }}" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Email Address </label>
                                <input type="email" class="form-control" name="email" value="{{ $settings->email }}" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Phone Number #1 </label>
                                <input type="text" class="form-control" value="{{ $settings->phone1 }}" name="phone1" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Phone Number #2 </label>
                                <input type="text" class="form-control" value="{{ $settings->phone2 }}" name="phone2" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Phone Number #3 </label>
                                <input type="text" class="form-control" value="{{ $settings->phone3 }}" name="phone3" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Mobile Number #1 </label>
                                <input type="text" class="form-control" value="{{ $settings->mobile1 }}" name="mobile1" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Mobile Number #2 </label>
                                <input type="text" class="form-control" value="{{ $settings->mobile2 }}"
                                    name="mobile2" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Mobile Number #3 </label>
                                <input type="text" class="form-control" value="{{ $settings->mobile3 }}"
                                    name="mobile3" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Facebook Links </label>
                                <input type="text" class="form-control" value="{{ $settings->facebook }}"
                                    name="facebook" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label> Instagram </label>
                                <input type="text" class="form-control" value="{{ $settings->instagram }}"
                                    name="instagram" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-12">
                        <button class="custom-btn" type="submit">
                            Save Change <i class="fa fa-long-arrow-alt-right"></i>
                        </button>
                    </div>
                </form>
            </div>
            <!--End Widget-content-->
        </div>

    </div>
    <!--End Page content-->
@endsection
