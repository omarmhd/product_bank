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

                <form action="{{route('project.store')}}" method="post" id="form1" enctype="multipart/form-data">
                    @csrf
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
                            <i class="fa fa-times px-3 cancel-file" style="margin-left: -33px; display: none" aria-hidden="true"></i>

                        </div>

                    </div>
                    <div class="main-custom-input mt-4">
                        <input type="text" name="name" placeholder="اسم المشروع">
                    </div>
                    <div class="main-custom-input mt-4">
                        <textarea name="description" id="" class="w-100" data-error rows="5"
                                  placeholder="وصف المشروع"></textarea>
                    </div>
                    <div class="input-section mt-4">
                        <h2>المستهدفات</h2>
                        <p>:مثال
                            العامل: عدد تحميلات التطبيق 5000 تحميل , اسم الهدف: عدد التحميلات , الهدف :5000 </p>
                        <div class="main-custom-input mb-3 clone d-none" style="display: none">
                            <div>
                                <input type="text" class="factor"  placeholder="العامل" disabled id="factor"
                                       name="factor[]">
                            </div>
                            <div>
                                <input type="text" class="target_name"  placeholder="اسم الهدف" disabled id="target_name"
                                       name="target_name[]">
                            </div>
                            <div>
                                <input type="text" class="target_number"  placeholder="الهدف(رقم)" disabled
                                       id="target_number" name="target_number[]">

                            </div>
                            <i class="fa fa-times  new-remove" aria-hidden="true"></i>
                        </div>

                        <div class="cards">
                            <div class="main-custom-input mb-3">
                                <div>
                                    <input type="text" class="factor"  placeholder="العامل" name="factor[]" id="factor">
                                </div>
                                <div>
                                    <input type="text" class="target_name"  placeholder="اسم الهدف" name="target_name[]"
                                           id="target_name">
                                </div>
                                <div>
                                    <input type="text" class="target_number"  placeholder="الهدف(رقم)"
                                           name="target_number[]" id="target_number">
                                </div>
                                <i class="fa fa-times  new-remove" style="opacity: 0;pointer-events: none" aria-hidden="true"></i>
                            </div>

                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-custom btn-add "> + إضافة عامل جديد</button>
                        </div>
                    </div>

                    <div class="input-section mt-4">
                        <h2>المرفقات</h2>
                        <p>إضافة المرفقات الخاصة بالمشروع مثل خطة العمل و الملفات المتعلقة بالمشروع </p>
                        <div class="main-custom-input upload-input clone d-none mb-3">
                            <input type="file" class="d-none" id="file-upload" name="attachment[]" disabled="">
                            <button class="btn custom-btn-edit choose-file-btn">اختار ملف</button>
                            <div>
                                <input type="text"  placeholder="اسم الملف" name="attachment_name[]" disabled="">
                            </div>
                            <i class="fa fa-times  new-remove" aria-hidden="true"></i>
                        </div>

                        <div class="cards">
                            <div class="main-custom-input upload-input mb-3">
                                <input type="file" class="d-none" id="file-upload" name="attachment[]">
                                <button class="btn custom-btn-edit choose-file-btn">اختار ملف</button>
                                <div>
                                    <input type="text" placeholder="اسم الملف" name="attachment_name[]">
                                </div>

                                <i class="fa fa-times  new-remove" style="opacity: 0;pointer-events: none" aria-hidden="true"></i>
                            </div>


                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-custom btn-add  "> + إضافة ملف جديد</button>
                        </div>
                    </div>
                    <div class="text-center save-project">
                        <button class="btn custom-btn-edit w-100">اضافة مشروع</button>
                    </div>
                </form>
            </div>


        </div>
    </div>

@endsection

@push('js')

    <script>
        $(function () {





            $('#form1').on('submit', function (e) {
                e.preventDefault()

                var  url="{{route('project.store')}}"
                var formData = new FormData(this);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $("input[name=_token]").val()
                    }
                });
                var sweet_loader = '<div class="sweet_loader"><svg viewBox="0 0 140 140" width="140" height="140"><g class="outline"><path d="m 70 28 a 1 1 0 0 0 0 84 a 1 1 0 0 0 0 -84" stroke="rgba(0,0,0,0.1)" stroke-width="4" fill="none" stroke-linecap="round" stroke-linejoin="round"></path></g><g class="circle"><path d="m 70 28 a 1 1 0 0 0 0 84 a 1 1 0 0 0 0 -84" stroke="#71BBFF" stroke-width="4" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-dashoffset="200" stroke-dasharray="300"></path></g></svg></div>';

                $.ajax({
                    type: 'POST',
                    url: url,
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {

                        Swal.fire({
                            html: '<h5>جاري  حفظ  المشروع ..</h5>',
                            showConfirmButton: false,
                            didOpen: () => {
                                Swal.showLoading()

                            }
                            ,
                            allowOutsideClick: false

                        });
                    },
                    success: (data) => {

                        if(data.status=="success") {
                            $('#form1').trigger("reset");

                            Swal.fire({
                                position: 'center',
                                icon: data.status,
                                title: data.message,
                                showConfirmButton: false,
                                timer: 2000
                            })
                            location.href = data.redirect;



                        }else {
                            Swal.fire({
                                position: 'center',
                                icon: data.status,
                                title: data.message,
                                showConfirmButton: false,
                                timer: 2000
                            })

                        }
                    },
                })
            })



            //upload files

            $('.upload-file-btn').click(function (){
                var form_data = new FormData();
                form_data.append('file',$(this).parent().find("input[name=attachment]").files[0])
                $.ajax({
                    url:"upload.php",
                    method:"POST",
                    data: form_data,
                    contentType: false,
                    cache: false,
                    processData: false,
                    beforeSend:function(){
                        $('#uploaded_image').html("<label class='text-success'>Image Uploading...</label>");
                    },
                    success:function(data)
                    {
                        $('#uploaded_image').html(data);
                    }
                });

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
