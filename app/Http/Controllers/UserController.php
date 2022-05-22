<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{


    public  function  edit($user){
        $user=User::find($user);
        return view('profile',compact('user'));
    }

    public  function  update(Request $request,$id){
        $user=User::find($id);
        $data=$request->except('password');
        if($request->password){
            $data['password']=Hash::make($request->password);
        }
        $user->update($data);



        return redirect()->back()->with('success','تم تحديث البيانات في نجاح');



    }

}
