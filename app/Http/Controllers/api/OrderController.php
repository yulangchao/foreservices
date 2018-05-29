<?php

namespace App\Http\Controllers\api;
use App\User;
use App\Order;
use App\Cleaner;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderController extends Controller
{
    //
//创建订单
    public function createOrder(Request $request){
        $data = $request->all();
        if (request('additional')){
            $data['additional'] = json_encode($data['additional']);
        }else{
            $data['additional']=null;
        }
        $data['order_status'] = 1;
        $order = Order::create($data);
        return response()->json(['success'=> true, 'message'=> '修改密码失败，请稍后再试']);
        
    }
//提取所有单
public function getOrdererList(Request $request){
    $data = json_decode(request()->getContent(), true);
    $orders = Order::where([])->orderBy('created_at', 'desc')->get();

    return response()->json(['success'=> true, 'orders'=> $orders]);
}


//提取所有技工
    public function getCleanerList(Request $request){
        $data = json_decode(request()->getContent(), true);
        calculateHours($data['bedroom'],$data['bathroom'],$data['additional']);
        $cleaners = Cleaner::where([])->orderBy('created_at', 'desc')->get();

        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
//提取Order技工
    public function getCleanerListByOrder(Request $request){
        $data = json_decode(request()->getContent(), true);
        calculateHours($data['bedroom'],$data['bathroom'],$data['additional']);
        $cleaners = Cleaner::where([])->orderBy('created_at', 'desc')->get();

        return response()->json(['success'=> true, 'cleaners'=> $cleaners]);
    }
    
    public function getMore(){
        return response()->json(['success'=> false, 'message'=> '修改密码失败，请稍后再试']);
    }
}
