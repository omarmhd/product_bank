@extends('layout.app')
@section('content')
    <div class="new-project bg-container">
        <div class="row">


            @if ($errors->any())
                <div class="col-lg-12 mx-auto">
                    @foreach ($errors->all() as $error)

                    @endforeach

                </div>
            @endif



            <div class="col-lg-6 mx-auto">
                @if(!empty($message))
                    <div class="alert alert-info" >
                        {{$message}}
                    </div>
                @endif
                <h2>تعبئة  البيانات   </h2>

                <form action="{{route('user.update',['user'=>$user->id])}}" method="post" id="form1" enctype="multipart/form-data">
                    @csrf
                    @method('put')


                    <div class="main-custom-input mt-4">
                        <input type="text" name="name" placeholder="الاسم" readonly value="{{old('name',$user->name)}}">
                    </div>
                    <div class="main-custom-input mt-4">
                        <input type="email" name="email" placeholder="البريد الإلكتروني " readonly  value="{{old('email',$user->email)}}">
                    </div>

                    <div class="main-custom-input mt-4">
                        <input type="text" name="phone" placeholder="رقم الجوال" value="{{old('phone',$user->phone)}}">
                    </div>
                    <div class="main-custom-input mt-4">
                        <input type="text" name="job" placeholder="العنوان الوظيفي" value="{{old('job',$user->job)}}">
                    </div>
                    <div class="main-custom-input mt-4">
                        <label for="">تغير كلمة المرور</label>
                        <input type="password" name="password" placeholder="" >

                    </div>
                    <div class="main-custom-input mt-4">
                        <label for="">  الدور الوظيفي</label>
                        <select name="role" id="">
                            <option value="" selected disabled > </option>
                            <option {{ $user->role=='S'?'selected':'' }} value="S" >موظف</option>
                            <option {{ $user->role=='M'?'selected':'' }}  value="M">مدير مشاريع</option>

                        </select>
                    </div>



                    <div class="text-center save-project">
                        <button class="btn custom-btn-edit w-100">حفظ البيانات </button>
                    </div>
                </form>
            </div>


        </div>
    </div>

@endsection
