<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApplianceController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\PovController;


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
Route::resource('client',ClientController::class);
Route::resource('pov',PovController::class);
Route::get('pov/{povId}/client', [PovController::class, 'getClient']);
Route::get('appliance/{userId}/type', [ApplianceController::class, 'getApplianceType']);
Route::get('Client/{clientId}/Contact', [ClientController::class, 'getClientContact']);
Route::get('pov/{povId}/Client', [PovController::class, 'getClient']);
Route::get('pov/{povId}/Appliance', [PovController::class, 'getAppliance']);
Route::get('appliance/{id}/pov', [ApplianceController::class, 'getPov']);
Route::get('appliance/{id}/client', [ApplianceController::class, 'getClient']);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
