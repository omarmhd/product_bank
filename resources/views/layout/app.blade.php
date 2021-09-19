<!DOCTYPE html>
<html lang="en">

@include('layout._head')
<body>

@include('layout._header')
<div class="container">

    @yield('content')
</div>



@include('layout._footer')
@include('layout.modals.login')
</body>



@include('layout._script')
@stack('js')
@include('layout.messages')

</html>
