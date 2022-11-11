<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });


Route::resource('/', 'App\\Http\\Controllers\\Admin\dosenController');
Route::resource('admin/dosen', 'App\\Http\\Controllers\\Admin\dosenController');
Route::resource('admin/matakuliah', 'App\\Http\\Controllers\\Admin\matakuliahController');