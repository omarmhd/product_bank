@extends('layout.app')
@push('css')
    <style>
        :root{
            --first-class-width:0%;
        }
        .post-container .header figure img{
            height: inherit;
        }
        .edit-product .post-container .footer .path-product .first{
            position: relative;
            background-color: #8e2f8d;
        }
        .edit-product .post-container .footer .path-product .first::before {
            position: absolute;
            content: '';
            background-color: #1e1656;
            width: var(--first-class-width);
            height: 100%;
        }
        .edit-product .post-container .footer .path-product .first h6{
            z-index: 1;
        }
    </style>
@endpush
@section('content')
    <section class="details-section bg-container edit-product">
        <div class="border-bottom-c">
            <div class="post-container">
                <div class="header">
                    <figure>
                        <img src="{{asset('files')}}/{{$project->image}}" alt="" class="img-fluid" srcset="">
                    </figure>
                    <div class="user-info">
                        <h2>مدير المنتج: محمد ولي خان</h2>
                        <p>إدارة الأبحاث و الابتكار</p>
                        <div class="contact">
                            <a href="#">
                                <span >جوال:</span>
                                0542205824
                            </a>
                            <a href="mailto:Mwalikhan@elm.sa">
                                <span>:إيميل</span>
                                Mwalikhan@elm.sa
                            </a>
                        </div>
                    </div>
                </div>
                <div class="body">
                    <h2 class="title">{{$project->name}}</h2>
                    <p>{{$project->description}}</p>
                </div>
                <div class="footer">
                    <div class="info">
                        <span class="project-status">حالة المشروع :  {{$project->status}}</span>
                        <span class="project-health"> صحة المشروع: {{$project->project_health}}</span>
                        <span class="last-edit">اخر تعديل:{{$project->updated_at->toDateString()}}</span>
                        <a href="javascript:void(0)" class="like" id="like" data-id="{{$project->id}}">
                           <span class="like-count">{{$project->likes()}}</span>
                            <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="mt-3 text-center">
                        <a href="{{route('project.createUpdate',['id'=>$project->id])}}" class="btn custom-btn-edit">تعديل <i class="fa fa-pencil"
                                                                                                                              aria-hidden="true"></i></a>
                    </div>
                    <div class="path-product">
                        <h2>رحلة المنتج</h2>
                        <div class="d-flex justify-content-between visit">
                            <div class="first" >

                                <h6>البداية</h6>
                                <h6>120يوم</h6>
                            </div>
                            <div class="rate rate-first" data-toggle="modal" data-target="#rate">
                                <svg xmlns="http://www.w3.org/2000/svg" width="53.034" height="61.224"
                                     viewBox="0 0 53.034 61.224">
                                    <g id="Group_240" data-name="Group 240"
                                       transform="translate(-651.518 -757.444)">
                                        <g id="Group_239" data-name="Group 239">
                                            <path id="Path_3054" data-name="Path 3054"
                                                  d="M5158.5,2757.58l-25.482,13.467v33.437l25.482,13.2,26.551-13.2v-33.437Z"
                                                  transform="translate(-4481 -1999.573)" fill="#90268f"
                                                  stroke="rgba(112,112,112,0.54)" stroke-width="1" />
                                            <path id="Path_3056" data-name="Path 3056"
                                                  d="M5153.717,2757.58l-20.7,10.939v27.161l20.7,10.72,21.568-10.72v-27.161Z"
                                                  transform="translate(-4476.117 -1993.933)" fill="#fff" />
                                        </g>
                                        <text id="تقييم_الاولي" data-name="تقييم
                                          الاولي" transform="translate(706  784)" class="rate">
                                            <tspan x="-12.87" y="15">تقييم</tspan>
                                            <tspan y="0"></tspan>
                                            <tspan x="-12.868" y="0">الاولي</tspan>
                                        </text>
                                    </g>
                                </svg>
                            </div>
                            <div class="rate rate-final" data-toggle="modal" data-target="#rate">
                                <svg xmlns="http://www.w3.org/2000/svg" width="53.034" height="61.224"
                                     viewBox="0 0 53.034 61.224">
                                    <g id="Group_240" data-name="Group 240"
                                       transform="translate(-651.518 -757.444)">
                                        <g id="Group_239" data-name="Group 239">
                                            <path id="Path_3054" data-name="Path 3054"
                                                  d="M5158.5,2757.58l-25.482,13.467v33.437l25.482,13.2,26.551-13.2v-33.437Z"
                                                  transform="translate(-4481 -1999.573)" fill="#90268f"
                                                  stroke="rgba(112,112,112,0.54)" stroke-width="1" />
                                            <path id="Path_3056" data-name="Path 3056"
                                                  d="M5153.717,2757.58l-20.7,10.939v27.161l20.7,10.72,21.568-10.72v-27.161Z"
                                                  transform="translate(-4476.117 -1993.933)" fill="#fff" />
                                        </g>
                                        <text id="تقييم_الاولي" data-name="تقييم
                                          الاولي" transform="translate(706  784)" class="rate">
                                            <tspan x="-12.87" y="15">تقييم</tspan>
                                            <tspan y="0"></tspan>
                                            <tspan x="-12.868" y="0">نهائي</tspan>
                                        </text>
                                    </g>
                                </svg>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="border-bottom-c">
            <div class="targets">
                <h2>المستهدفات</h2>
                <form action="{{route('target.update',['id'=>$project->id])}}"  class="form-edit-target" method="post">
                    @csrf
                    @method('put')
                    <div class="row">
                        <div class="col-11 col-md-9">
                            <div class="hor-card clone d-none">
                                <div class="main-custom-input">

                                    <input type="text" disabled name="factor[]" class="title-text" value="" placeholder="العامل">
                                    <input type="text" disabled name="target_number[]" class="goal" value="100000" placeholder="الهدف">
                                    <input type="text" disabled name="result[]" class="total" value="90000"  placeholder="النتيجة">
                                    <input type="text" disabled name="note[]" class="note" placeholder="ملاحظات">
                                    <input type="hidden" name="target_name[]" value="">

                                </div>
                                <h2 class="title" style="display: none;"></h2>
                                <div class="info">
                                    <div class="nubmer-of" style="display: none;">
                                        <span></span>
                                        <small></small>
                                    </div>
                                    <span class="percentage">
                                         <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"
                                              viewBox="0 0 64.875 64.875">
                                             <g id="circles_group" data-name="Group 239"
                                                transform="translate(-628.41 -670.062)">
                                                 <ellipse id="circle_1" data-name="Ellipse 8" cx="2.417" cy="2.417"
                                                          rx="2.417" ry="2.417" transform="translate(658.424 670.062)"
                                                          class="circle-svg active-circle-svg"></ellipse>
                                                 <path id="circle_2" data-name="Path 66"
                                                       d="M657.382,204.528a2.417,2.417,0,1,1-2.924-1.709A2.416,2.416,0,0,1,657.382,204.528Z"
                                                       transform="translate(-1.975 468.351)"
                                                       class="circle-svg active-circle-svg"></path>
                                                 <path id="circle_3" data-name="Path 68"
                                                       d="M651.723,206.195a2.417,2.417,0,1,1-3.3-.895A2.417,2.417,0,0,1,651.723,206.195Z"
                                                       transform="translate(-3.793 469.101)" class="circle-svg"></path>
                                                 <path id="circle_4" data-name="Path 70"
                                                       d="M646.674,209.257a2.4,2.4,0,1,1-1.7-.707A2.417,2.417,0,0,1,646.674,209.257Z"
                                                       transform="translate(-5.353 470.298)" class="circle-svg"></path>
                                                 <path id="circle_5" data-name="Path 72"
                                                       d="M642.612,213.533a2.417,2.417,0,1,1-1.839-.248,2.417,2.417,0,0,1,1.839.248Z"
                                                       transform="translate(-6.552 471.857)" class="circle-svg"></path>
                                                 <path id="circle_6" data-name="Path 74"
                                                       d="M639.756,218.709a2.417,2.417,0,1,1-2.937,1.749A2.417,2.417,0,0,1,639.756,218.709Z"
                                                       transform="translate(-7.301 473.677)" class="circle-svg"></path>
                                                 <ellipse id="circle_7" data-name="Ellipse 9" cx="2.417" cy="2.417"
                                                          rx="2.417" ry="2.417" transform="translate(628.41 700.077)"
                                                          class="circle-svg"></ellipse>
                                                 <path id="circle_8" data-name="Path 77"
                                                       d="M638.53,230.351a2.417,2.417,0,1,1-1.469,1.127,2.417,2.417,0,0,1,1.469-1.127Z"
                                                       transform="translate(-7.303 477.577)" class="circle-svg"></path>
                                                 <path id="circle_9" data-name="Path 79"
                                                       d="M640.2,236.021a2.4,2.4,0,1,1-1.136,1.462A2.417,2.417,0,0,1,640.2,236.021Z"
                                                       transform="translate(-6.552 479.397)" class="circle-svg"></path>
                                                 <path id="circle_10" data-name="Path 81"
                                                       d="M643.243,241.032a2.417,2.417,0,1,1,.094,3.31,2.416,2.416,0,0,1-.094-3.31Z"
                                                       transform="translate(-5.327 480.982)" class="circle-svg"></path>
                                                 <path id="Path_83" data-name="Path 83"
                                                       d="M647.53,245.135a2.417,2.417,0,1,1,.894,3.3A2.417,2.417,0,0,1,647.53,245.135Z"
                                                       transform="translate(-3.793 482.152)" class="circle-svg"></path>
                                                 <path id="Path_85" data-name="Path 85"
                                                       d="M652.722,247.959a2.4,2.4,0,1,1,.235,1.839,2.417,2.417,0,0,1-.235-1.839Z"
                                                       transform="translate(-1.975 482.907)" class="circle-svg"></path>
                                                 <path id="Path_65" data-name="Path 65"
                                                       d="M663.283,249.343a2.417,2.417,0,1,1-2.417-2.4,2.417,2.417,0,0,1,2.417,2.4Z"
                                                       transform="translate(-0.026 483.164)" class="circle-svg"></path>

                                                 <path id="Path_67" data-name="Path 67"
                                                       d="M669.023,247.96a2.417,2.417,0,1,1-1.128-1.469A2.417,2.417,0,0,1,669.023,247.96Z"
                                                       transform="translate(1.925 482.905)" class="circle-svg"></path>

                                                 <path id="Path_69" data-name="Path 69"
                                                       d="M674.2,245.132a2.417,2.417,0,1,1-3.3-.881,2.417,2.417,0,0,1,3.3.881Z"
                                                       transform="translate(3.743 482.155)" class="circle-svg"></path>

                                                 <path id="Path_71" data-name="Path 71"
                                                       d="M678.476,241.059a2.4,2.4,0,1,1-1.709-.714A2.4,2.4,0,0,1,678.476,241.059Z"
                                                       transform="translate(5.303 480.954)" class="circle-svg"></path>

                                                 <path id="Path_73" data-name="Path 73"
                                                       d="M681.55,236.021a2.417,2.417,0,1,1-3.3.881,2.417,2.417,0,0,1,3.3-.881Z"
                                                       transform="translate(6.502 479.396)" class="circle-svg"></path>

                                                 <path id="Path_75" data-name="Path 75"
                                                       d="M683.215,230.35a2.417,2.417,0,1,1-2.964,1.709,2.417,2.417,0,0,1,2.964-1.709Z"
                                                       transform="translate(7.253 477.577)" class="circle-svg"></path>

                                                 <path id="Path_76" data-name="Path 76"
                                                       d="M683.357,224.45a2.417,2.417,0,1,1-2.417,2.417,2.417,2.417,0,0,1,2.417-2.417Z"
                                                       transform="translate(7.512 475.627)" class="circle-svg"></path>

                                                 <path id="Path_78" data-name="Path 78"
                                                       d="M681.959,218.711a2.417,2.417,0,1,1-1.709,2.964,2.417,2.417,0,0,1,1.709-2.964Z"
                                                       transform="translate(7.254 473.675)" class="circle-svg"></path>

                                                 <path id="Path_80" data-name="Path 80"
                                                       d="M679.132,213.532a2.417,2.417,0,1,1-.881,3.3,2.417,2.417,0,0,1,.881-3.3Z"
                                                       transform="translate(6.502 471.858)" class="circle-svg"></path>

                                                 <path id="Path_82" data-name="Path 82"
                                                       d="M675.056,209.256a2.417,2.417,0,1,1,0,3.418A2.43,2.43,0,0,1,675.056,209.256Z"
                                                       transform="translate(5.305 470.299)" class="circle-svg"></path>

                                                 <path id="Path_84" data-name="Path 84"
                                                       d="M670.022,206.194a2.4,2.4,0,1,1-.247,1.833A2.417,2.417,0,0,1,670.022,206.194Z"
                                                       transform="translate(3.743 469.102)" class="circle-svg"></path>

                                                 <ellipse id="Ellipse_10" data-name="Ellipse 10" cx="2.417" cy="2.417"
                                                          rx="2.417" ry="2.417"
                                                          transform="translate(665.472 674.822) rotate(-67.42)"
                                                          class="circle-svg"></ellipse>
                                             </g>
                                             <text class="text-svg" x="47" y="37">
                                                0%

                                      </text>
                                         </svg>
                                     </span>
                                    <div class="actions">
                                         <span class="remove" >
                                             <svg id="outline-delete_forever-24px" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                                 <g id="Bounding_Boxes">
                                                   <path id="Path_2320" data-name="Path 2320" d="M0,0H24V24H0Z" fill="none"/>
                                                 </g>
                                                 <g id="Outline">
                                                   <g id="Group_46" data-name="Group 46">
                                                     <path id="Path_2321" data-name="Path 2321" d="M14.12,10.47,12,12.59,9.87,10.47,8.46,11.88,10.59,14,8.47,16.12l1.41,1.41L12,15.41l2.12,2.12,1.41-1.41L13.41,14l2.12-2.12Z" fill="#1e1656"/>
                                                     <path id="Path_2322" data-name="Path 2322" d="M15.5,4l-1-1h-5l-1,1H5V6H19V4Z" fill="#1e1656"/>
                                                     <path id="Path_2323" data-name="Path 2323" d="M6,19a2.006,2.006,0,0,0,2,2h8a2.006,2.006,0,0,0,2-2V7H6ZM8,9h8V19H8Z" fill="#1e1656"/>
                                                   </g>
                                                 </g>
                                               </svg>
                                         </span>
                                        <span class="edit">
                                             <svg id="outline-edit-24px" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                                 <g id="Bounding_Boxes">
                                                   <path id="Path_3051" data-name="Path 3051" d="M0,0H24V24H0Z" fill="none"/>
                                                 </g>
                                                 <g id="Outline_1_">
                                                   <path id="XMLID_37_" d="M14.06,9.02l.92.92L5.92,19H5v-.92l9.06-9.06M17.66,3a1,1,0,0,0-.7.29L15.13,5.12l3.75,3.75,1.83-1.83a1,1,0,0,0,0-1.41L18.37,3.29A.982.982,0,0,0,17.66,3Zm-3.6,3.19L3,17.25V21H6.75L17.81,9.94,14.06,6.19Z" fill="#1e1656"/>
                                                 </g>
                                               </svg>

                                         </span>
                                    </div>
                                </div>

                            </div>
                            <div class="cards">

                                @foreach($project->targets as $target)
                                    <div class="hor-card">

                                        <div class="main-custom-input d-none">


                                            <input type="text" name="factor[]" class="title-text" value="{{$target->factor}}">
                                            <input type="text" name="target_number[]"   class="goal" value="{{$target->target_number}}">
                                            <input type="text" name="result[]"   class="total" value="{{$target->result}}">
                                            <input type="text" name="note[]"  class="note" value="{{$target->note}}">
                                            <input type="hidden" name="target_name[]" value="">


                                        </div>
                                        <h2 class="title">{{$target->factor}} </h2>
                                        <div class="info">

                                            <div class="nubmer-of">
                                                <span>{{$target->target_number}}</span>
                                                <small>{{$target->result}}</small>
                                            </div>

                                            <span class="percentage">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"
                                                 viewBox="0 0 64.875 64.875">
                                                <g id="circles_group" data-name="Group 239"
                                                   transform="translate(-628.41 -670.062)">
                                                    <ellipse id="circle_1" data-name="Ellipse 8" cx="2.417" cy="2.417"
                                                             rx="2.417" ry="2.417" transform="translate(658.424 670.062)"
                                                             class="circle-svg active-circle-svg"></ellipse>
                                                    <path id="circle_2" data-name="Path 66"
                                                          d="M657.382,204.528a2.417,2.417,0,1,1-2.924-1.709A2.416,2.416,0,0,1,657.382,204.528Z"
                                                          transform="translate(-1.975 468.351)"
                                                          class="circle-svg active-circle-svg"></path>
                                                    <path id="circle_3" data-name="Path 68"
                                                          d="M651.723,206.195a2.417,2.417,0,1,1-3.3-.895A2.417,2.417,0,0,1,651.723,206.195Z"
                                                          transform="translate(-3.793 469.101)" class="circle-svg"></path>
                                                    <path id="circle_4" data-name="Path 70"
                                                          d="M646.674,209.257a2.4,2.4,0,1,1-1.7-.707A2.417,2.417,0,0,1,646.674,209.257Z"
                                                          transform="translate(-5.353 470.298)" class="circle-svg"></path>
                                                    <path id="circle_5" data-name="Path 72"
                                                          d="M642.612,213.533a2.417,2.417,0,1,1-1.839-.248,2.417,2.417,0,0,1,1.839.248Z"
                                                          transform="translate(-6.552 471.857)" class="circle-svg"></path>
                                                    <path id="circle_6" data-name="Path 74"
                                                          d="M639.756,218.709a2.417,2.417,0,1,1-2.937,1.749A2.417,2.417,0,0,1,639.756,218.709Z"
                                                          transform="translate(-7.301 473.677)" class="circle-svg"></path>
                                                    <ellipse id="circle_7" data-name="Ellipse 9" cx="2.417" cy="2.417"
                                                             rx="2.417" ry="2.417" transform="translate(628.41 700.077)"
                                                             class="circle-svg"></ellipse>
                                                    <path id="circle_8" data-name="Path 77"
                                                          d="M638.53,230.351a2.417,2.417,0,1,1-1.469,1.127,2.417,2.417,0,0,1,1.469-1.127Z"
                                                          transform="translate(-7.303 477.577)" class="circle-svg"></path>
                                                    <path id="circle_9" data-name="Path 79"
                                                          d="M640.2,236.021a2.4,2.4,0,1,1-1.136,1.462A2.417,2.417,0,0,1,640.2,236.021Z"
                                                          transform="translate(-6.552 479.397)" class="circle-svg"></path>
                                                    <path id="circle_10" data-name="Path 81"
                                                          d="M643.243,241.032a2.417,2.417,0,1,1,.094,3.31,2.416,2.416,0,0,1-.094-3.31Z"
                                                          transform="translate(-5.327 480.982)" class="circle-svg"></path>
                                                    <path id="Path_83" data-name="Path 83"
                                                          d="M647.53,245.135a2.417,2.417,0,1,1,.894,3.3A2.417,2.417,0,0,1,647.53,245.135Z"
                                                          transform="translate(-3.793 482.152)" class="circle-svg"></path>
                                                    <path id="Path_85" data-name="Path 85"
                                                          d="M652.722,247.959a2.4,2.4,0,1,1,.235,1.839,2.417,2.417,0,0,1-.235-1.839Z"
                                                          transform="translate(-1.975 482.907)" class="circle-svg"></path>
                                                    <path id="Path_65" data-name="Path 65"
                                                          d="M663.283,249.343a2.417,2.417,0,1,1-2.417-2.4,2.417,2.417,0,0,1,2.417,2.4Z"
                                                          transform="translate(-0.026 483.164)" class="circle-svg"></path>

                                                    <path id="Path_67" data-name="Path 67"
                                                          d="M669.023,247.96a2.417,2.417,0,1,1-1.128-1.469A2.417,2.417,0,0,1,669.023,247.96Z"
                                                          transform="translate(1.925 482.905)" class="circle-svg"></path>

                                                    <path id="Path_69" data-name="Path 69"
                                                          d="M674.2,245.132a2.417,2.417,0,1,1-3.3-.881,2.417,2.417,0,0,1,3.3.881Z"
                                                          transform="translate(3.743 482.155)" class="circle-svg"></path>

                                                    <path id="Path_71" data-name="Path 71"
                                                          d="M678.476,241.059a2.4,2.4,0,1,1-1.709-.714A2.4,2.4,0,0,1,678.476,241.059Z"
                                                          transform="translate(5.303 480.954)" class="circle-svg"></path>

                                                    <path id="Path_73" data-name="Path 73"
                                                          d="M681.55,236.021a2.417,2.417,0,1,1-3.3.881,2.417,2.417,0,0,1,3.3-.881Z"
                                                          transform="translate(6.502 479.396)" class="circle-svg"></path>

                                                    <path id="Path_75" data-name="Path 75"
                                                          d="M683.215,230.35a2.417,2.417,0,1,1-2.964,1.709,2.417,2.417,0,0,1,2.964-1.709Z"
                                                          transform="translate(7.253 477.577)" class="circle-svg"></path>

                                                    <path id="Path_76" data-name="Path 76"
                                                          d="M683.357,224.45a2.417,2.417,0,1,1-2.417,2.417,2.417,2.417,0,0,1,2.417-2.417Z"
                                                          transform="translate(7.512 475.627)" class="circle-svg"></path>

                                                    <path id="Path_78" data-name="Path 78"
                                                          d="M681.959,218.711a2.417,2.417,0,1,1-1.709,2.964,2.417,2.417,0,0,1,1.709-2.964Z"
                                                          transform="translate(7.254 473.675)" class="circle-svg"></path>

                                                    <path id="Path_80" data-name="Path 80"
                                                          d="M679.132,213.532a2.417,2.417,0,1,1-.881,3.3,2.417,2.417,0,0,1,.881-3.3Z"
                                                          transform="translate(6.502 471.858)" class="circle-svg"></path>

                                                    <path id="Path_82" data-name="Path 82"
                                                          d="M675.056,209.256a2.417,2.417,0,1,1,0,3.418A2.43,2.43,0,0,1,675.056,209.256Z"
                                                          transform="translate(5.305 470.299)" class="circle-svg"></path>

                                                    <path id="Path_84" data-name="Path 84"
                                                          d="M670.022,206.194a2.4,2.4,0,1,1-.247,1.833A2.417,2.417,0,0,1,670.022,206.194Z"
                                                          transform="translate(3.743 469.102)" class="circle-svg"></path>

                                                    <ellipse id="Ellipse_10" data-name="Ellipse 10" cx="2.417" cy="2.417"
                                                             rx="2.417" ry="2.417"
                                                             transform="translate(665.472 674.822) rotate(-67.42)"
                                                             class="circle-svg"></ellipse>
                                                </g>
                                                <text class="text-svg" x="47" y="37">
                                                   % {{$target->percent_result}}

                                                </text>
                                            </svg>
                                        </span>
                                            <div class="actions">
                                            <span class=" delete-btn-target" data-id="{{$target->id}}">
                                                <svg id="outline-delete_forever-24px" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                                    <g id="Bounding_Boxes">
                                                      <path id="Path_2320" data-name="Path 2320" d="M0,0H24V24H0Z" fill="none"/>
                                                    </g>
                                                    <g id="Outline">
                                                      <g id="Group_46" data-name="Group 46">
                                                        <path id="Path_2321" data-name="Path 2321" d="M14.12,10.47,12,12.59,9.87,10.47,8.46,11.88,10.59,14,8.47,16.12l1.41,1.41L12,15.41l2.12,2.12,1.41-1.41L13.41,14l2.12-2.12Z" fill="#1e1656"/>
                                                        <path id="Path_2322" data-name="Path 2322" d="M15.5,4l-1-1h-5l-1,1H5V6H19V4Z" fill="#1e1656"/>
                                                        <path id="Path_2323" data-name="Path 2323" d="M6,19a2.006,2.006,0,0,0,2,2h8a2.006,2.006,0,0,0,2-2V7H6ZM8,9h8V19H8Z" fill="#1e1656"/>
                                                      </g>
                                                    </g>
                                                  </svg>
                                            </span>
                                                <span class="edit">
                                                <svg id="outline-edit-24px" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                                    <g id="Bounding_Boxes">
                                                      <path id="Path_3051" data-name="Path 3051" d="M0,0H24V24H0Z" fill="none"/>
                                                    </g>
                                                    <g id="Outline_1_">
                                                      <path id="XMLID_37_" d="M14.06,9.02l.92.92L5.92,19H5v-.92l9.06-9.06M17.66,3a1,1,0,0,0-.7.29L15.13,5.12l3.75,3.75,1.83-1.83a1,1,0,0,0,0-1.41L18.37,3.29A.982.982,0,0,0,17.66,3Zm-3.6,3.19L3,17.25V21H6.75L17.81,9.94,14.06,6.19Z" fill="#1e1656"/>
                                                    </g>
                                                  </svg>

                                            </span>
                                            </div>

                                        </div>
                                    </div>

                                @endforeach

                            </div>
                            <div>
                                <button  type="button" class="btn btn-custom btn-add"> +  إضافة عامل جديد  </button>
                            </div>
                            <div class="mt-3 mb-3 mr-5 pr-3 text-right">
                                <button type="submit" class="btn custom-btn-edit btn-edit-target" data-id="{{$project->id}}">حفظ</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="border-bottom-c">
            <div class="attachment">
                <h2>المرفقات</h2>
                <div class="row">


                    @foreach($project->attachments as $attachment)

                        <div class="col-11 col-md-8">
                            <div class="hor-card">
                                <h2>{{$attachment->attachment_name}}</h2>
                                <div class="info">
                                    <a  href="{{asset('files')}}/{{$attachment->attachment}}" class="btn btn-custom"  download>تحميل</a>
                                </div>
                            </div>
                        </div>

                    @endforeach


                    <div class="col-11 col-md-8">
                        <div class="text-right mb-3">
                            <button class="btn custom-btn-edit w-25" >إضافة / تعديل
                                <i class="fa fa-pencil" aria-hidden="true"></i></button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <div class="border-bottom-c">
            <div class="form-status">
                <form action="{{route('status.update',['id'=>$project->id])}}" method="post"  id="form-edit-status" class="form-edit-status" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    <div class="row">
                        <div class="col-md-5">
                            <h2>تغيير حالة المشروع</h2>
                            <p>شكرا لك لحفظ موارد الشركة و سيتم تكريم فريق العمل من
                                قبل إدارة الابتكار</p>


                            <label for="" class="mt-2">حالة المشروع</label>
                            <select name="status" class="w-100">
                                <option value="قيد التنفيذ">قيد التنفيذ</option>
                                <option value="تم التنفيذ">تم التنفيذ</option>
                                <option value="معلق">معلق</option>
                                <option value="مغلق">مغلق</option>

                            </select>

                            <div class="main-custom-input mt-2">
                                <input name="reason_status" type="text" placeholder="توضيح السبب" value="{{$project->reason_status}}">
                            </div>
                            <div class="main-custom-input mt-2 ">
                                <textarea name="notes" id="" cols="37" rows="5" placeholder="ملاحظات" >{{$project->notes}}</textarea>
                                <!-- <input type="text" class="note" > -->
                            </div>
                            <div class="upload">
                                <h3>مرفق</h3>
                                <p>إرفاق ملف للدروس المستفادة من اغلاق المشروع</p>
                                <div class="main-custom-input upload-input">
                                    <input type="file" class="d-none" name="attachment" id="file-upload">
                                    <button class="btn custom-btn-edit choose-file-btn">اختار ملف</button>
                                    <input type="text" placeholder="اسم الملف" name="attachment_name">
                                    <button type="button" class="btn custom-btn-edit upload-file-btn" name="upload" value ="upload">
                                        <span style="display: none" class="spinner-border spinner-border-sm " role="status" aria-hidden="true"></span>
                                        رفع</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="mt-3 mb-3 text-right">
                                <input type="submit" class="btn custom-btn-edit btn-edit-status" value="حفظ" name="save" data-id="{{$project->id}}">
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </section>


    @include('layout.modals.review')



@endsection

@push('js')

    <script>
        //width path product
        getComputedStyle(document.documentElement).getPropertyValue('--first-class-width').replace('%', '');
        let width_path_product = 0;
        var interval = setInterval(() => {
            document.documentElement.style.setProperty('--first-class-width', width_path_product++ + '%');
            if(width_path_product>100){
                clearInterval(interval);
            }
        }, 100);

        function loadIcon(){
            $('.spinner-border').show();
        }

        $(document).on('submit','.form-edit-status',function (e){
            e.preventDefault();
            var formData = new FormData(this);

            var id=$('.btn-edit-status').data('id')
            var  url="{{route('status.update',['id'=>':id'])}}"
            url= url.replace(':id',id)
            formData.append('save','save')

            Swal.fire({
                title: 'هل ترغب في  تغير حالة المشروع؟',
                text: "",
                icon: 'info',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'نعم',
                cancelButtonText: 'إلغاء'

            }).then((result) => {
                if (result.isConfirmed) {

                    $.ajax({
                        type: 'POST',
                        url: url,
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: (data) => {

                            if(data.status) {
                                Swal.fire(
                                    data.title,
                                    "تم تغير الحالة ل " +
                                    formData.get('status'), data.status
                                );
                                var status = $('select[name=status]').find(":selected").text()
                                var d = new Date();
                                var strDate = d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate();

                                $('.project-status').text("حالة المشروع : " + status)
                                $('.last-edit').text("اخر تعديل : " + strDate)

                            }


                        },
                    });

                }
            })


        })
        $('.upload-file-btn').click(function (){
            var id=$('.btn-edit-status').data('id')
            var  url="{{route('status.update',['id'=>':id'])}}"
            url= url.replace(':id',id)
            var fo= document.getElementById("form-edit-status")
            var formData = new FormData(fo);
            formData.append('upload','upload')

            $.ajax({
                type: 'POST',
                url: url,
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: (data) => {

                    if(data.status=="success") {

                        loadIcon()
                        let timerInterval
                        Swal.fire({
                            title: 'يتم رفع الملفات ',
                            html: 'سيتم إغلاق النافذة بعد <b></b> ثانية.',
                            timer: 2000,
                            allowOutsideClick: false,

                            timerProgressBar: true,
                            didOpen: () => {
                                Swal.showLoading()
                                const b = Swal.getHtmlContainer().querySelector('b')
                                timerInterval = setInterval(() => {
                                    b.textContent = Swal.getTimerLeft()
                                }, 100)
                            },
                            willClose: () => {
                                clearInterval(timerInterval)
                            }
                        }).then((result) => {
                            /* Read more about handling dismissals below */
                            if (result.dismiss === Swal.DismissReason.timer) {
                                $('.spinner-border').hide();


                                Swal.fire({
                                    position: 'center',
                                    icon: data.status,
                                    title: data.meessage,
                                    showConfirmButton: false,
                                    timer: 2000
                                })


                                setTimeout(function () {
                                    location.reload()
                                }, 1000);

                            }


                        })
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

        $(document).on('submit', '.form-edit-target',function (e) {
            e.preventDefault()
            let formData = new FormData(this);
            let url="{{route('target.update',['id'=>':id'])}}"
            let id=$('.btn-edit-target').data('id')
            url= url.replace(':id',id)
            $.ajax({
                type: 'POST',
                url: url,
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                timer: 100,
                success: (data) => {
                    if(data.status) {
                        Swal.fire({
                            position: 'center',
                            icon: data.status,
                            title: data.message,
                            showConfirmButton: false,
                            timer: 1600
                        })
                        if (data.status=="success"){
                            setTimeout(function () {
                                location.reload()
                            } , 1000);
                        }


                    }
                },
            });


        })

        $('.delete-btn-target').click(function (){
            Swal.fire({
                title: 'توضيح سبب الحذف ',
                input: 'text',
                showCancelButton: true,
                confirmButtonText: 'تأكيد',
                cancelButtonText: 'إلغاء',
                inputValidator: (value) => {
                    return !value && 'لم تقم بإدخال سبب الحذف !'
                },
            }).then((result,value) => {
                if (result.isConfirmed) {
                    let id=$(this).data('id')
                    var url ="{{route('target.destroy',['id'=>':id'])}}"
                    url=url.replace(":id",id)
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN':"{{ csrf_token() }}"
                        }
                    });
                    $.ajax({
                        type:'DELETE',
                        url:url,
                        data: {note:"text",project_id:"{{$project->id}}"},
                        success: (data) => {
                            if(data.status) {
                                Swal.fire({
                                    position: 'center',
                                    icon: data.status,
                                    title: data.message,
                                    showConfirmButton: false,
                                    timer: 1600
                                })
                                $(this).parent().parent().parent().fadeOut(300, function () { $(this).remove(); })


                            }
                        },
                    })





                }})

        })


        $(document).on('click','.like',function (){



            var id=$(this).data('id')
            var url="{{route('like',['id'=>':id'])}}"
            url= url.replace(':id',id);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN':"{{ csrf_token() }}"
                }
            });
            $.ajax({
                type: 'POST',
                url: url,
                data:{_token:"{{ csrf_token() }}"},
                cache: false,
                contentType: false,
                processData: false,
                success: (data) => {
                    if (data.status) {

                        $('.like-count').text(data.sum)
                        $(this).css({color: data.color})
                    }



                },
            })

        });


    </script>
@endpush



