<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProjectController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[ProjectController::class,'index']);

    Route::resource('project',ProjectController::class);
    Route::get('projectt/search',[ProjectController::class,'search'])->name('project.search');
    Route::get('project/create-update/{id}',[ProjectController::class,'createUpdateProject'])->name('project.createUpdate');

Route::put('target/update/{id}',[ProjectController::class,'target_update'])->name('target.update');
    Route::put('status/update/{id}',[ProjectController::class,'status_update'])->name('status.update');



//attachments
//Route::post('attachment/{indexd}',ProjectController::class);


