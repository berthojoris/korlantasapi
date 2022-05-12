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

Route::get('/', function () {
    return view('welcome2');
});

Route::get('/games', 'GameController@index');
Route::post('/games/add', 'GameController@add');
Route::post('/games/delete', 'GameController@delete');
Route::post('/games/edit', 'GameController@edit');
Route::post('/games/select', 'GameController@select');