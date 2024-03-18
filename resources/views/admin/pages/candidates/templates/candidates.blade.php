<div class="row" style="margin: 0 -15px">
    @foreach ($candidates as $candidate)
        <div class="col-md-6">
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
        </div>
    @endforeach

</div>
