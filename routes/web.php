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
\Illuminate\Support\Facades\Auth::routes([
    'reset' => false,
    'verify' => false,
    'register' => false,
]);
Route::get('/', [ProjectController::class, 'index']);

Route::resource('project', ProjectController::class);
Route::get('projectt/search', [ProjectController::class, 'search'])->name('project.search');
Route::get('project/create-update/{id}', [ProjectController::class, 'createUpdateProject'])->name('project.createUpdate');
Route::put('target/update/{id}', [ProjectController::class, 'target_update'])->name('target.update');
Route::put('status/update/{id}', [ProjectController::class, 'status_update'])->name('status.update');
Route::delete('target/destroy/{id}', [ProjectController::class, 'target_destroy'])->name('target.destroy');
Route::get('log', [ProjectController::class, 'log'])->name('target.destroy');

//attachments
//Route::post('attachment/{indexd}',ProjectController::class);


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
