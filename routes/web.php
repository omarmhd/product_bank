<?php

use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;

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

Route::group(['middleware' => ['auth','verified'],], function () {

    Route::get('/', [ProjectController::class, 'index']);

    Route::resource('project', ProjectController::class);
    Route::resource('user', \App\Http\Controllers\UserController::class);

    Route::get('myProjects', [ProjectController::class, 'myProjects'])->name('myProjects');
    Route::get('projectt/search', [ProjectController::class, 'search'])->name('project.search');

   //
    Route::get('project/create-update-page/{id}', [ProjectController::class, 'createUpdatePageProject'])->name('project.createUpdate');
    Route::put('project/create-update/{id}', [ProjectController::class, 'createUpdate'])->name('project.createUpdate.update');

    //
    Route::put('target/update/{id}', [ProjectController::class, 'target_update'])->name('target.update');
    Route::put('status/update/{id}', [ProjectController::class, 'status_update'])->name('status.update');
    Route::delete('target/destroy/{id}', [ProjectController::class, 'target_destroy'])->name('target.destroy');
    Route::put('evaluation/update/{id}', [ProjectController::class, 'project_evaluation'])->name('project.evaluation.update');
    //
    Route::get('log', [ProjectController::class, 'log'])->name('log');


    Route::post('upload/file', [ProjectController::class, 'upload_file'])->name('upload_file');
    Route::post('like/{id}', [ProjectController::class, 'like'])->name('like');


//attachments


    Route::get('filter', [ProjectController::class, 'filter'])->name('project.filter');


});
//Route::post('attachment/{indexd}',ProjectController::class);


//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//
//Auth::routes();
Auth::routes([
    'verify' => true,

]);
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
