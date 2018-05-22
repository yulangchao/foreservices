<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::group(['namespace' => 'api'], function () {
    Route::post('/checkPhone', 'UserController@checkPhone');
    Route::post('/login', 'UserController@login');
    Route::post('/register', 'UserController@register');
    Route::post('/sendcode', 'UserController@sendcode');
    Route::post('/forgetPassword', 'UserController@forgetPassword');
    Route::post('/test1', 'UserController@test1');
});

Route::group(['middleware' => 'auth:api', 'namespace' => 'api'], function() {
  
    Route::post('/resetPassword', 'UserController@resetPassword');
    Route::post('/logout', 'UserController@logout');
    Route::post('/details', 'UserController@details');

});