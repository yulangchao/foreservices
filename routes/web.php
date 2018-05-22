<?php

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

Route::get('/', 'UserController@checkLogin');

Route::get('/login', 'UserController@getLogin');

Route::post('auth/login', 'UserController@postLogin');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['middleware' => 'auth:web'], function() {
  Route::get('/services', function () {
      return view('services');
  });
    Route::get('/orders', function () {
      return view('orders');
  });
    Route::get('/settings', function () {
      return view('settings');
  });
  Route::get('/logout','UserController@getLogout' );

});