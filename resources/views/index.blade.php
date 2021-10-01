@extends('layout.app')
@section('content')

    <section class="home bg-container">
                    <div class="content">
                        <div class="top">
                            @if(isset($search))
                                <div class="number-project">نتائج البحث عن :
                                    <p>{{$search}}</p>
                                </div>

                            @else

                                <div class="number-project"> عدد المشاريع :  {{$count}} </div>
                                <div class="filter">
                                    <i class="fa fa-sliders" aria-hidden="true"></i>
                                    <select name="sort" class="sort">
                                        <option selected disabled>الترتيب حسب</option>
                                        <option value="oldest"> الأقدم </option>
                                        <option value="latest"> الأحدث </option>
                                    </select>
                                </div>
                            @endif


                        </div>
                        <div class="bottom">
                            <div class="row projects" >

                                @forelse ($projects as $project)





                                <div class="col-md-6 mb-4">
                                    @if(isset($type_page))
                                        <a href="{{route('project.edit',['project'=>$project->id])}}">

                                        @else
                                  <a href="{{route('project.show',['project'=>$project->id])}}">

                               @endif
                                        <div class="card-1">
                                            <figure>
                                                <img src="{{asset('files')}}/{{$project->image}}" class='img-fluid' alt="" srcset="">
                                            </figure>
                                            <div class="body-card">
                                                <h1>{{$project->name}}</h1>
                                                <p>{{$project->description}}</p>
                                            </div>
                                            <div class="footer-card">
                                                <span>حالة المشروع: {{$project->status}} </span>
                                                <span> صحة المشروع : {{$project->project_health}}</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                @empty

                                   <H3>  لا يوجد نتائج </H3>
                                @endforelse

                            </div>

                        </div>
                    </div>
            </section>
@endsection


@push('js')
    <script>


        $(document).ready(function(){


            $('.sort').change(function (){
                filter(date= $(this).val(),project_health="",project_status="")

            });







            function filter(date="",project_health="",project_status=""){

                $.ajax({
                    url:"{{route('project.filter')}}" ,
                    type: "get",
                    data:{
                        date: {date:date},
                        project_health: project_health,
                        project_status: project_status,
                    },
                    success: (data) => {
                        $('.projects').empty()
                        var projects = JSON.parse( JSON.stringify(data.projects));

                        $.each(projects,function(index, value){
                            var url="{{route('project.edit',['project'=>":project"])}}"
                            url =url.replace(':project',value.id)




                            $('.projects').append(
                                `  <div class="col-md-6 mb-4">
                                    <a href=`+url+`>
                                        <div class="card-1">
                                            <figure>
                                                <img src="{{asset('files')}}/`+value.image+`" class='img-fluid' alt="" srcset="">
                                            </figure>
                                            <div class="body-card">
                                                <h1>`+value.name+`</h1>
                                                <p>`+value.description+`</p>
                                            </div>
                                            <div class="footer-card">
                                                <span>حالة المشروع: `+value.status+`</span>
                                                <span> صحة المشروع : `+value.project_health+`</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>`
                            )
                        });

                    }
                })
            }


        })

    </script>
@endpush
