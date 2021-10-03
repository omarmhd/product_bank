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
                <h2>معلومات المشروع</h2>

                <form action="{{route('project.createUpdate.update',['id'=>$projects->id])}}" method="post" id="form1" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    <div class="drag-drop-image">
                        <svg xmlns="http://www.w3.org/2000/svg" width="39.75" height="39.75" viewBox="0 0 39.75 39.75">
                            <path id="Path_988" data-name="Path 988"
                                  d="M38.333,22.875V38.333H7.417V22.875H3V38.333A4.43,4.43,0,0,0,7.417,42.75H38.333a4.43,4.43,0,0,0,4.417-4.417V22.875Zm-13.25,1.48,5.72-5.7,3.114,3.114L22.875,32.813,11.833,21.771l3.114-3.114,5.72,5.7V3h4.417Z"
                                  transform="translate(-3 -3)" fill="#90268f"/>
                        </svg>
                        <h2>سحب الصور</h2>
                        <div class="main-custom-input">
                            <input type="file" class="d-none" name="image" id="file-upload">
                            <button class="btn custom-btn-edit choose-file-btn">اختيار</button>
                            <span class="choose-txt">لم يتم اختيار صور</span>
                        </div>
                    </div>
                    <div class="main-custom-input mt-4 ">
                        <input type="text" name="name" placeholder="اسم المشروع" value="{{$projects->name}}" >
                        <input type="text" name="note_name" placeholder="ملاحظات" value="" >

                    </div>
                    <div class="main-custom-input mt-4 col-10" >
                    </div>

                    <div class="main-custom-input mt-4">
                        <textarea name="description" id="" class="w-100" data-error rows="5"
                                  placeholder="وصف المشروع" >{{$projects->description}}</textarea>
                        <input type="text" name="note_description" placeholder="ملاحظات" value="" >

                    </div>

                    <div class="input-section mt-4">
                        <h2>المرفقات</h2>
                        <p>إضافة المرفقات الخاصة بالمشروع مثل خطة العمل و الملفات المتعلقة بالمشروع </p>



                        <div class="main-custom-input upload-input clone d-none mb-3">
                            <input type="file" required class="d-none" id="file-upload" name="attachment[]"disabled>
                            <button class="btn custom-btn-edit choose-file-btn">اختار ملف</button>
                            <input type="text" required placeholder="اسم الملف" name="attachment_name[]" value="" disabled>
                            <i class="fa fa-times px-3 new-remove" style="margin-left: -33px;" aria-hidden="true"></i>
                        </div>

                        @foreach($projects->attachments as $attachment)
                        <div class="cards">
                            <div class="main-custom-input upload-input mb-3">

                                <div class="col-11 col-md-12">
                                    <div class="hor-card">
                                        <h2>{{$attachment->attachment_name}}</h2>
                                        <div class="info">
                                            <a  href="{{asset('files')}}/{{$attachment->attachment}}" class="btn btn-custom"  download>تحميل</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        @endforeach
                        <div class="text-center">
                            <button type="button" class="btn btn-custom btn-add  "> + إضافة ملف جديد</button>
                        </div>
                    </div>
                    <div class="text-center save-project">
                        <button class="btn custom-btn-edit w-100"> <i class="fa fa-save"></i> حفظ </button>
                    </div>
                </form>
            </div>


        </div>
    </div>

@endsection

@push('js')

    <script>
        $(function () {



            var validator = $('#form1').validate({

                errorElement: 'div',
                errorClass: 'validation-error-message help-block form-helper bold',

                rules: {},

                errorPlacement: function (error, element) {
                    if (element.parent('.main-custom-input').length) {
                        error.insertBefore(element);
                    } else {
                        error.insertAfter(element);
                    }

                },

                submitHandler: function (form) {
                    form.submit();
                }
            });
            $('#form1').on('submit', function (e) {
                e.preventDefault();
                $('input.target_name').each(function () { $(this).rules('add', { required: true});   });
                $('input.factor').each(function () { $(this).rules('add', { required: true});   });
                $('input.target_number').each(function () { $(this).rules('add', { required: true});   });


                if (!$(this).valid()) {
                    validator.focusInvalid();

                    return false;

                }

            })

        })


    </script>
@endpush



{{--@push('js')--}}
{{--    <script>--}}

{{--        $('.upload-file-btn').click(function (){--}}


{{--        var postData=new FormData();--}}
{{--        postData.append('file',this.files[0]);--}}


{{--        var url="";--}}
{{--        $.ajax({--}}

{{--            type:"post",--}}
{{--            contentType:false,--}}
{{--            url:url,--}}
{{--            data:postData,--}}
{{--            processData:false,--}}
{{--            success:function(){--}}
{{--                console.log("success");--}}
{{--            }--}}


{{--        });--}}
{{--        })--}}
{{--    </script>--}}

{{-- @endpush--}}
