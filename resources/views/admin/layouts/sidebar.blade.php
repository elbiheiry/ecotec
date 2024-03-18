<!-- Side Menu 
        ==========================================-->
<aside class="side-menu">
    <button class="toggle-btn">
        <i class="fa fa-times"></i>
    </button>
    <a href="{{ route('admin.dashboard') }}" class="logo">
        <img src="{{ asset('public/admin/images/logo.png') }}" />
    </a>
    <ul>
        <li class="{{ request()->routeIs('admin.dashboard') ? 'active' : '' }}">
            <a href="{{ route('admin.dashboard') }}">
                <i class="fas fa-tachometer-alt"></i>
                Dashboard
            </a>
        </li>
        <li class="{{ request()->routeIs('admin.settings.index') ? 'active' : '' }}">
            <a href="{{ route('admin.settings.index') }}">
                <i class="fa fa-cog"></i>
                Main Setting
            </a>
        </li>

        <li
            class="sub-menu 
        {{ request()->routeIs('admin.sliders.index') || request()->routeIs('admin.about.section.index') || request()->routeIs('admin.park.section.index') ? 'active' : '' }}">
            <a rel="noreferrer" href="javascript:void(0);">
                <i class="fa fa-home"></i>
                Home Page
                <i class="fa fa-angle-down"></i>
            </a>
            <ul>
                <li class="{{ request()->routeIs('admin.sliders.index') ? 'active' : '' }}">
                    <a href="{{ route('admin.sliders.index') }}"> Slider </a>
                </li>
                <li class="{{ request()->routeIs('admin.about.section.index') ? 'active' : '' }}">
                    <a href="{{ route('admin.about.section.index') }}"> About</a>
                </li>

                <li class="{{ request()->routeIs('admin.park.section.index') ? 'active' : '' }}">
                    <a href="{{ route('admin.park.section.index') }}"> Park view </a>
                </li>
            </ul>
        </li>
        <li class="{{ request()->routeIs('admin.about.index') ? 'active' : '' }}">
            <a href="{{ route('admin.about.index') }}">
                <i class="fa fa-info"></i>
                about Page
            </a>
        </li>
        <li class="{{ request()->routeIs('admin.messages.index') ? 'active' : '' }}">
            <a href="{{ route('admin.messages.index') }}">
                <i class="fa fa-envelope"></i>
                Messages
            </a>
        </li>
        <li class="{{ request()->routeIs('admin.candidates.index') ? 'active' : '' }}">
            <a href="{{ route('admin.candidates.index') }}">
                <i class="fa fa-file-alt"></i>
                Career
            </a>
        </li>
        <li class="{{ request()->routeIs('admin.park.index') ? 'active' : '' }}">
            <a href="{{ route('admin.park.index') }}">
                <i class="fa fa-tags"></i>
                ParkView
            </a>
        </li>
    </ul>
    <!--End Ul-->
</aside>
<!--End Aside-->
