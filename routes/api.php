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
    //客户端
    Route::post('/getAccessCode', 'UserController@getAccessCode');
  
  
  
  
  
  
    //cleaner端
    Route::post('/login', 'UserController@login');
  
    Route::post('/sendcode', 'UserController@sendcode');
  
  
    Route::post('/register', 'UserController@register');
    Route::post('/forgetPassword', 'UserController@forgetPassword');
  
  
  
    Route::get('/test1', 'UserController@test1');
  
  
  
    Route::post('/getCleanerList', 'OrderController@getCleanerList');
    Route::post('/getCleanerListByOrder', 'OrderController@getCleanerListByOrder');
    Route::post('/getResponseList', 'OrderController@getResponseList');
  

  
  
    Route::post('/getReviewForCleaner', 'CleanerController@getReviewForCleaner');
    Route::post('/getReviewForClient', 'UserController@getReviewForClient');
    Route::post('/getSavedCleanerList', 'UserController@getSavedCleanerList');
    Route::post('/getReviewForClientwithOrder', 'UserController@getReviewForClientwithOrder');
  
  
    Route::post('/upload', 'FileController@test');
  
  
  
  
    //testing
   
});

Route::group(['middleware' => 'auth:api', 'namespace' => 'api'], function() {
  
  
    Route::post('/getOrdererList', 'OrderController@getOrdererList');
    Route::post('/createOrder', 'OrderController@createOrder');
    Route::post('/changeOrderTime', 'OrderController@changeOrderTime');
    Route::post('/cancelOrder', 'OrderController@cancelOrder');
  
  
    Route::post('/postPayment', 'PaymentController@postPayment');
  
    Route::post('/changeUserSetting', 'UserController@changeUserSetting');
    Route::post('/changeCleanerSetting', 'UserController@changeCleanerSetting');
   
  
    Route::post('/getClientReviewForOrder', 'UserController@getClientReviewForOrder');
    Route::post('/postReviewForClient', 'UserController@postReviewForClient');
    Route::post('/saveOrUnsaveCleaner', 'UserController@saveOrUnsaveCleaner');
    
  
  
    Route::post('/postReviewForCleaner', 'CleanerController@postReviewForCleaner');
    Route::post('/getReviewForOrder', 'CleanerController@getReviewForOrder');
    Route::post('/getOrdererListForCleaner', 'CleanerController@getOrdererListForCleaner');
    Route::post('/getResponseOrder', 'CleanerController@getResponseOrder');
    Route::post('/cancelResponseOrder', 'CleanerController@cancelResponseOrder');
    Route::post('/acceptResponseOrder', 'CleanerController@acceptResponseOrder');
    Route::post('/startOrder', 'CleanerController@startOrder');
    Route::post('/finishOrder', 'CleanerController@finishOrder');
    Route::post('/acceptChangeTime', 'CleanerController@acceptChangeTime');
    Route::post('/declineChangeTime', 'CleanerController@declineChangeTime');
    Route::post('/getSchedual', 'CleanerController@getSchedual');
    Route::post('/saveSchedual', 'CleanerController@saveSchedual');
    Route::post('/getSummary', 'CleanerController@getSummary');
    Route::post('/getWiiPaymentForCleaner', 'CleanerController@getWiiPaymentForCleaner');
});