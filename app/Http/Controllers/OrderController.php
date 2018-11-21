<?php

namespace App\Http\Controllers;
use App\User;
use App\Order;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Validator;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    //


    public function getOrderForm(Request $request){

        // dd(Input::get('type'));
        return view('services.serviceform', ["type"=>Input::get('type')]);
    }

    public function createOrder(Request $request){
        $data = $request->all();
        if (request('additional')){
            $data['additional'] = json_encode($data['additional']);
        }else{
            $data['additional']=null;
        }
        $data['order_status'] = 1;
        $order = Order::create($data);
        return Redirect::route('selectcleaner', array('order' => $order->id));
        
    }

    public function selectCleaner(){
        return view('services.selectcleaner');
    }

    public function getMore(){
        return response()->json(['success'=> false, 'message'=> '修改密码失败，请稍后再试']);
    }
}
