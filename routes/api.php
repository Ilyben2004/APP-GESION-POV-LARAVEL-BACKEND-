<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApplianceController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\ContactController

;


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

Route::resource('appliance',ApplianceController::class);
Route::resource('type',TypeController::class);
Route::resource('contact',ContactController::class);

Route::get('appliance/{userId}/type', [ApplianceController::class, 'getApplianceType']);





Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
