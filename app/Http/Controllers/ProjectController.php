<?php

namespace App\Http\Controllers;

use App\Models\Attachment;
use App\Models\Like;
use App\Models\Log;
use App\Models\Project;
use App\Models\Target;
use App\services\FilesService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::all();
        $count=$projects->count();
        return view('index', compact('projects','count'));
    }
    public function myProjects()
    {
        $projects = Project::where('user_id',session('user_id'))->get();
        $count=$projects->count();
        $type_page="myProjects";
        return view('index', compact('projects','count','type_page'));
    }


    public function search(Request $request){
        $projects = Project::where('name', 'LIKE', '%'.$request->search.'%' )->Orwhere('description','LIKE', '%'.$request->search.'%' )->get();
        $search=$request->search;
        $count=$projects->count();
        return view('index',compact('projects','search','count'));

    }

    public function create()
    {

        return view('new_project');

    }
    public function store(Request $request, FilesService $filesService)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'image' => 'nullable',
            'description' => 'required',
            'target_name.*' => 'required',
            'target_number.*' => 'required|numeric',
            'attachment.*' => 'required',
            'attachment_name.*' => 'required',
            'factor.*' => 'required',

        ],['name.required'=>'اسم المشروع مطلوب','description.required'=>'وصف المشروع مطلوب']);
        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->first()]);
        }
        $data = $request->except(['factor', 'target_name', 'target_number', 'attachment', 'attachment_name']);
        $data['status'] = "قيد التنفيذ";
        $data['project_health'] = "عالية";
        $data['user_id']=1;
        if ($request->hasFile('image')) {
            $data['image'] = $filesService->upload($request->image, 'files', 'project-image');
        }

        $project = Project::create($data);

        $targets = [];

        foreach ($request->factor as $key => $value) {
            $targets[$key]['factor'] = $request->factor[$key];;
            $targets[$key]['target_name'] = $request->target_name[$key];;
            $targets[$key]['target_number'] = $request->target_number[$key];;

        }
        $project->targets()->createMany($targets);

        $attachments = [];
        foreach ($request->attachment as $key => $value) {
            $attachments[$key]['attachment'] = $filesService->upload($request->attachment[$key], 'files', $project->name);;
            $attachments[$key]['attachment_name'] = $request->attachment_name[$key];;

        }
        $project->attachments()->createMany($attachments);


        if ($project) {
            return response()->json(['status' => 'success', 'message' => " تم إضافة مشروع$project->name",'redirect'=>route('project.index')]);

        } else {
            return response()->json(['status' => 'error', 'message' => "خطأ في اضافة المشروع"]);

        }

    }

    public function createUpdateProject($id)
    {
        $projects=Project::find($id);
        return view('createUpdate_project',compact('projects'));

    }

    public function update(Request $request,$id, FilesService $filesService)
    {

        $this->validate($request, [
            'name' => 'required',
            'image' => 'required|image',
            'description' => 'required',
            'target_name.*' => 'required',
            'target_number.*' => 'required',
            'attachment.*' => 'required',
            'attachment_name.*' => 'required',
            'factor.*' => 'required',

        ]);


     if ($request->hasFile('image')) {
            $data['image'] = $filesService->upload($request->image, 'files', 'project-image');
        }

        $project = Project::update($data);

        $targets = [];

        foreach ($request->factor as $key => $value) {
            $targets[$key]['factor'] = $request->factor[$key];;
            $targets[$key]['target_name'] = $request->target_name[$key];;
            $targets[$key]['target_number'] = $request->target_number[$key];;

        }
        $project = Project::find($id);

        $project->targets()->delete();
        $target = $project->targets()->createMany(
            $targets
        );

        $attachments = [];
        foreach ($request->attachment as $key => $value) {
            $attachments[$key]['attachment'] = $filesService->upload($request->attachment[$key], 'files', $project->name);;
            $attachments[$key]['attachment_name'] = $request->attachment_name[$key];;

        }
        $project->attachments()->delete();
        $project->attachments()->createMany($attachments);


        if ($project) {
            return redirect()->route('project.index')->with('success', " تم تعديل بنجاح  $project->name");
        } else {
            return redirect()->back()->with('error', 'خطأ في اضافة المشروع ');

        }

    }

    public function show($id)
    {
        $project = Project::findOrFail($id);
        return view('details', compact('project'));


    }
    public function edit($id)
    {

        $project = Project::findOrFail($id);
//        $create_date=$project->created_at;
//        $first_travel=120;
//        $secand_travel=200;
        $start = new \DateTime($project->created_at );
        $origin = new \DateTime(now()->format('Y-m-d H:i:s'));
        $target = new \DateTime('2022-1-1 14:23:00');

        $diff_time_start = $start->diff($target);
        $diff_time_origin = $origin->diff($target)->invert != 0 ? 0 : $origin->diff($target);
        $seconds = (($diff_time_start->days * 24 + $diff_time_start->h) * 60 + $diff_time_start->i) * 60 + $diff_time_start->s;
        $current_day = $origin->diff($start)->days;
        $seconds_now =is_int($diff_time_origin) ? 0 : (($diff_time_origin->days * 24 + $diff_time_origin->h) * 60 + $diff_time_origin->i) * 60 + $diff_time_origin->s;
        $seconds_final = $seconds_now != 0 ? ($seconds - $seconds_now) : $seconds ;
        $seconds_final = ($seconds_final / $seconds) * 200;//get current percentage from start datetime to now datetime for fill color


        return view('edit_project', compact('project','seconds_final','seconds','current_day'));




    }

    public function target_update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'factor.*' => 'required',
            'target_number.*' => 'required|numeric',//numeric
            'result.*' =>  'required|numeric',//numeric
            'note.*'=>'required'
        ],[
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->first()]);
        }
        $targets = [];

        foreach ($request->factor as $key => $value) {
            $targets[$key]['factor'] = $request->factor[$key];
            $targets[$key]['target_number'] = $request->target_number[$key];
            $targets[$key]['result'] = $request->result[$key];
            $targets[$key]['percent_result'] = round(($request->result[$key] / $request->target_number[$key]) * 100);
            $targets[$key]['note'] = $request->note[$key];

            Log::updateOrCreate(['note'=>$request->note[$key],'project_id'=>$id],[
                'user_id'=>1,
                'project_id'=>$id ,
                'event'=>'عامل',
                'note'=>$request->note[$key]
            ]);
        }

        $project = Project::find($id);
        $project->targets()->delete();
        $target = $project->targets()->createMany(
            $targets
        );

        if ($target) {
            return response()->json(['status' => 'success', 'message' => 'تم تعديل المستهدفات بنجاح']);
        }


    }

    public function status_update(Request $request, $id, FilesService $filesService)
    {


        if ($request->input('upload')) {
            $validator = Validator::make($request->all(), [
                'attachment_name' => 'required',
                'attachment' => 'required|mimes:pdf'
            ]);

            if ($validator->fails()) {
                return response()->json(['status' => 'error', 'message' => $validator->errors()->first()]);
            }
            if ($request->hasFile('attachment')) {
                $attachment = $filesService->upload($request->file('attachment'), 'files', $request->attachment_name);
                $arr_attachment = [
                    'project_id' => $id,
                    'attachment' => $attachment,
                    'attachment_name' => $request->attachment_name,
                    'type' => 'الدروس المستفادة'
                ];
                $attach_create = Attachment::query()->updateOrInsert(['project_id' => $id, 'type' => 'الدروس المستفادة'], $arr_attachment);
                return response()->json(['status' => 'success', 'message' => ""]);
            }
        }

        if ($request->input('save')) {

            $project = Project::findorfail($id);
                   $project->update([
                    'reason_status' => $request->reason_status,
                    'notes' => $request->notes,
                    'status' => $request->status,
                ]);

            return response()->json(['status' => 'success', 'message' =>"تم التحديث إلى الحالة    " . "( ".$project->status ."). "]);

    }
    }

    public function target_destroy(Request $request,$id){


       $log=Log::create([
            'user_id'=>1,
            'project_id'=>$request->project_id ,
            'event'=>'حذف عامل',
            'note'=>$request->note
       ]);
       $target=Target::find($id)->delete();


        if (!$target){
            return response()->json(['status'=>'error','message'=>"خطأ في عملية الحذف"]);
    }
        return response()->json(['status'=>'success','message'=>"تم الحذف بنجاح "]);

    }


    public function log(){
        $logs=Log::all();
        return view('log',compact('logs'));
    }
    public function like($id){
        $like= Like::where('project_id',$id)->where('user_id',1);
        $color="#1E1656";

            if (!$like->first()){
            $like=Like::create([
            'project_id'=>$id,
            'user_id'=>1,
            'like'=>1
            ]);
            $color="#0056B3";

            } else{
                $like=$like->delete();

            }
        $count_like=Like::where('project_id',$id)->sum('like');

        return response()->json(['status'=>'success','sum'=>$count_like,'color'=>$color]);




    }

    public function project_evaluation(Request $request,$id){
        $initial=$request->initial_evaluation;
        $final=$request->final_evaluation;
        Project::findorfail($id)->update([
            'initial_evaluation'=>$initial,
            'final_evaluation'=>$final

        ]);




    }
    public function filter(Request $request){

        $order=$request->date=="oldest"?"asc":"desc";

        $projects =Project::orderby('created_at',$order)->get();

        return response()->json(['projects'=>$projects]);

    }









}
