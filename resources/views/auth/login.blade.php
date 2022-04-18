@extends('layout.app')

@section('content')

    <!------ Include the above in your HEAD tag ---------->
    <div class="container">
        <br>    <h3  class="text-center"><a href="{{route('project.index')}}"> بنك التجارب</a> </h3>
        <hr>
        <div class="row">
            <aside class="col-sm-6 m-auto">

                <div class="card">
                    <article class="card-body">
                        <a href="{{route('register')}}" class="float-right btn btn-outline-primary">Sign up</a>
                        <h4 class="card-title mb-4 mt-1">تسجيل دخول</h4>

                            <form method="post" action="{{route('login')}}">
                                @csrf
                            <div class="form-group">
                                <label>البريد الإلكتروني </label>
                                <input type="email"  name="email" class="input-text-custom form-control @error('email') is-invalid @enderror" placeholder="email">

                                @error('email')
                                <p class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </p>
                                @enderror
                            </div>                            <!-- form-group// -->
                            <div class="form-group">
                                <label>كلمة المرور</label>
                                <input type="password" name="password" class="input-text-custom form-control @error('password') is-invalid @enderror" placeholder="كلمة المرور">
                                @error('password')
                                <p class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </p>
                                @enderror                            </div> <!-- form-group// -->
                            <div class="form-group">
                                <div class="checkbox">
                                    <label> <input type="checkbox" name="remember" > تذكرني </label>
                                </div> <!-- checkbox .// -->
                            </div> <!-- form-group// -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-custom-login"> تسجيل دخول </button>
                            </div> <!-- form-group// -->
                        </form>
                    </article>
                </div> <!-- card.// -->
            </aside> <!-- col.// -->

        </div> <!-- row.// -->
    </div>
    <!--container end.//-->



@endsection
