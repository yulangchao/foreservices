<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Redirect;

class UserController extends Controller
{
    public function postLogin()
    {
        if (Auth::attempt(['email' => Request::get('email'), 'password' => Request::get('password')])) {
            return Redirect::away('/services')->with('message', 'Login Successfully!');

        } else {

            return Redirect::away('/login')->with('error', 'Please check your password & email');
        }
    }

  
    public function checkLogin(){
        if (Auth::check()) {
            return Redirect::away('/services');

        } else {
            return Redirect::away('/login');
        }
    }
    public function getLogin()
    {
        return view('login');
    }

    public function getRegister()
    {
        return Redirect::away('/');
    }

    public function postRegister()
    {
        return Redirect::away('/');
    }



    public function getLogout()
    {
        Auth::logout();

        return Redirect::away('/login')->with('message', 'Log Out Successfully!');
    }
}
