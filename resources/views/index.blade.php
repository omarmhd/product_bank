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

                                <div class="number-project">عدد المشاريع : 4 </div>
                                <div class="filter">
                                    <i class="fa fa-sliders" aria-hidden="true"></i>
                                    <select name="sort">
                                        <option value="1">ترتيب حسب التاريخ</option>
                                        <option value="1">ترتيب حسب التاريخ</option>
                                        <option value="1">ترتيب حسب التاريخ</option>
                                    </select>
                                </div>
                            @endif


                        </div>
                        <div class="bottom">
                            <div class="row">

                                @forelse ($projects as $project)

                                <div class="col-md-6 mb-4">
                                    <a href="{{route('project.edit',['project'=>$project->id])}}">
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
                                                <span> صحة المشروع :حالة المشروع: {{$project->project_health}}</span>
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
