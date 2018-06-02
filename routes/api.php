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
  
  
    Route::post('/getAccessCode', 'UserController@getAccessCode');
  
  
    Route::post('/sendcode', 'UserController@sendcode');
    Route::post('/forgetPassword', 'UserController@forgetPassword');
    Route::post('/test1', 'UserController@test1');
    Route::post('/getCleanerList', 'OrderController@getCleanerList');
    Route::post('/getCleanerListByOrder', 'OrderController@getCleanerListByOrder');
    

    Route::post('/upload', 'FileController@test');
});

Route::group(['middleware' => 'auth:api', 'namespace' => 'api'], function() {
    Route::post('/getOrdererList', 'OrderController@getOrdererList');
    Route::post('/createOrder', 'OrderController@createOrder');
    Route::post('/postPayment', 'PaymentController@postPayment');
    Route::post('/details', 'UserController@details');

});