<!-- Modal -->
<div class="modal fade" id="login" tabindex="-1"  role="dialog" aria-labelledby="loginTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close text-right" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{route('login')}}">
                    @csrf
{{--                <form action="{{route('test.login')}}" method="get">--}}
                <div class="row">

                        <div class="col-12">
                            <h3>تسجيل الدخول</h3>
                            <p>سجل دخولك لإضافة المشروع الخاص بك</p>
                        </div>
                    <div class="col-12">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                    </div>
                        <div class="col-12">
                            <div class="custom-input mb-3">
{{--                                <span>--}}
{{--                                    <svg id="outline-email-24px" xmlns="http://www.w3.org/2000/svg" width="24"--}}
{{--                                         height="24" viewBox="0 0 24 24">--}}
{{--                                        <g id="Bounding_Boxes">--}}
{{--                                            <path id="Path_2731" data-name="Path 2731" d="M0,0H24V24H0Z" fill="none" />--}}
{{--                                        </g>--}}
{{--                                        <g id="Outline">--}}
{{--                                            <path id="XMLID_497_"--}}
{{--                                                  d="M22,6a2.006,2.006,0,0,0-2-2H4A2.006,2.006,0,0,0,2,6V18a2.006,2.006,0,0,0,2,2H20a2.006,2.006,0,0,0,2-2ZM20,6l-8,5L4,6Zm0,12H4V8l8,5,8-5Z"--}}
{{--                                                  fill="#707070" />--}}
{{--                                        </g>--}}
{{--                                    </svg>--}}
{{--                                </span>--}}
                                <input type="email"  name="email" class="input-text-custom form-control @error('email') is-invalid @enderror" placeholder="الايميل">

                                @error('email')
                                <p class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </p>
                                @enderror
                            </div>
                            <div class="custom-input ">
{{--                                <span>--}}
{{--                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="21" viewBox="0 0 16 21">--}}
{{--                                        <g id="Outline" transform="translate(-4 -1)">--}}
{{--                                            <path id="Path_2372" data-name="Path 2372"--}}
{{--                                                  d="M18,8H17V6A5,5,0,0,0,7,6V8H6a2.006,2.006,0,0,0-2,2V20a2.006,2.006,0,0,0,2,2H18a2.006,2.006,0,0,0,2-2V10A2.006,2.006,0,0,0,18,8ZM9,6a3,3,0,0,1,6,0V8H9Zm9,14H6V10H18Zm-6-3a2,2,0,1,0-2-2A2.006,2.006,0,0,0,12,17Z"--}}
{{--                                                  fill="#707070" />--}}
{{--                                        </g>--}}
{{--                                    </svg>--}}

{{--                                </span>--}}

                                <input type="password" name="password" class="input-text-custom form-control @error('password') is-invalid @enderror" placeholder="كلمة المرور">
                                @error('password')
                                <p class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </p>
                                @enderror

                            </div>
                        </div>

                        <div class="d-flex justify-content-between flex-wrap mx-auto mb-3 col-lg-6">
                            <div class="reset-padding-col">
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="remember">
                                    <span class="checkmark"></span>
                                    <label for="remember">تذكرني</label>
                                </div>



                                <!-- <label for="rembmer-me">تذكرني</label> -->

                            </div>
                            <div class="reset-padding-col">
                                <a href="#">
                                    نسيت كلمة المرور
                                </a>
                            </div>
                        </div>

                        <div class="col-12">
                            <button type="submit" class="btn btn-custom-login">دخول</button>
                        </div>



                </div>
                </form>
            </div>

        </div>
    </div>
</div>
<div class="side-overlay"></div>
