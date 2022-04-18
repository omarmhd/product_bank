@extends('layout.app')

@section('content')
<div class="container">
    <div class="row justify-content-center m-10" style="margin:30px ">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">تحقق  من بريدك الإلكتروني</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            تم إرسال ارتباط تحقق جديد إلى عنوان بريدك الإلكتروني.
                        </div>
                    @endif

                        قبل المتابعة ، يرجى التحقق من بريدك الإلكتروني للحصول على رابط التحقق. إذا لم تتلق البريد الإلكتروني ، فإن.,
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('click here to request another') }}</button>.
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
