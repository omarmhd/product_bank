<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{

    public function login(){
        Session::put('user_id', 1);
        return redirect()->route('project.index');
    }
}
