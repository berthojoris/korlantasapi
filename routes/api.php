<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DailyController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('token', [AuthController::class, 'getTokenAuth']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('daily/submited', [DailyController::class, 'submitToday']);
    Route::apiResource('polda', 'PoldaController');
    Route::apiResource('operation', 'OperationController');
    Route::apiResource('daily', 'DailyController');

    Route::post('user', [AuthController::class, 'getUserLogin']);
    Route::post('user/logout', [AuthController::class, 'logout']);
});