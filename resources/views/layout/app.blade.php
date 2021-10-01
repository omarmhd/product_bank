<!DOCTYPE html>
<html lang="ar" dir="rtl">

@include('layout._head')
@include('layout.modals.login')
<body>
<div class="se-pre-con"></div>

@include('layout._header')
<div class="container">

    @yield('content')
</div>



@include('layout._footer')
</body>



@include('layout._script')
@stack('js')
@include('layout.messages')


</html>
