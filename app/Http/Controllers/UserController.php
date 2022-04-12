<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{


    public  function  edit($user){
        $user=User::find($user);
        return view('profile',compact('user'));
    }

    public  function  update(Request $request,$id){
        $user=User::find($id);

        $user->update($request->all());



        return redirect()->back()->with('success','تم تحديث البيانات في نجاح');



    }

}
