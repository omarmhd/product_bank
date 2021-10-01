@extends('layout.app')
@section('content')

    <section class="details-section bg-container">
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
                                <span>جوال:</span>
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
                        <span>حالة المشروع :  {{$project->status}}</span>
                        <span class="project-health"> صحة المشروع: {{$project->project_health}}</span>
                        <span class="last-edit">اخر تعديل:{{$project->updated_at->toDateString()}}</span>
                        <a href="javascript:void(0)" class="like" id="like" data-id="{{$project->id}}">
                            <span class="like-count">{{$project->likes()}}</span>
                            <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>


        <div class="border-bottom-c">
            <div class="targets">
                <h2>المستهدفات</h2>
                <div class="row">

                    <div class="col-11 col-md-8">
                        @foreach($project->targets as $target)
                        <div class="hor-card">
                            <h2>{{$target->factor}}</h2>
                            <div class="info">
                                <div class="nubmer-of">
                                    <span>عدد التحميلات</span>
                                    <small>{{$target->target_number}}</small>
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

                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>
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




                </div>

            </div>
        </div>





    </section>

@endsection
