<!DOCTYPE html>
<html lang="ar" dir="rtl">

@include('layout._head')


<body>
<style>
    .home .content .bottom .card-1 .body-card h1{
        word-break: break-all;
    }
    @media(max-width:419px){
        .home .content .top .filter{
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .home .content .top {
            flex-flow: column;
        }
        .home .content .top .number-project{
            font-size:18px;
        }
        footer .footer > div {
            display: flex;
            align-items: center;
            flex-direction: column;
            margin-bottom: 20px;
        }
        .home .content .top .filter select{
            width: 100%;

        }

    }
    @media(max-width:992px){
        .aside-bar-menu .search i {
            transform: translate(0%, 0%);
        }
    }
</style>

@include('layout.modals.filter')
@include('layout.modals.login')

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
