<?php
namespace App\Http\Controllers\api;
use App\Http\Requests;
use Illuminate\Http\Request;
use Validator;
use URL;
use Session;
use Redirect;
use Input;
use App\User;
use Stripe\Error\Card;
use Cartalyst\Stripe\Stripe;
use App\Http\Controllers\Controller;
use App\Order;
use App\Cleaner;
use App\Payment;
use Illuminate\Support\Facades\Auth;
class PaymentController extends Controller
{
public function postPayment()
 {
     $data = json_decode(request()->getContent(), true);
     $order = Order::where(["user_id" => Auth::user()->id, "id"=>$data['order_id']])->first();
     
     if (1) { 
         try{
                 $stripe = Stripe::make("sk_test_JG33GZrsKjIFGHhYcolZD8w8");
                 $charge = $stripe->charges()->create([
                   "card" => $data["token"],
                   "currency" => "cad",
                   "amount" => $order["price"] + $order["agent_fee"] ,
                   "description" => "Add in wallet",
                 ]);
                 
                 if($charge["status"] == "succeeded") {
                 /**
                 * Write Here Your Database insert logic.
                 */$order->order_status = 3;
                   $order->save();
                   Payment::create(['amount'=>($charge['amount']/100),'order_id'=>$data['order_id'],'payment_number'=>$charge["id"]]);
                   sendSMS(getPhoneFromCleaner($order['cleaner_id']), '您有订单已支付，请注意安排时间！');
                    return response()->json(['success'=> true,'charge'=>$charge,'message' => "支付成功, 支付金额".($charge['amount']/100)." ".strtoupper($charge['currency'])."."]); 
                 } else {

                 return response()->json(['success'=> false,"error"=>"Money not add in wallet!!"]); 
                 }
         } catch (Exception $e) {
          
          return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         } catch(\Cartalyst\Stripe\Exception\CardErrorException $e) {
          
          return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         } catch(\Cartalyst\Stripe\Exception\MissingParameterException $e) {
          
          return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         }
     }
 }
  
public function postPaymentWithStripe(Request $request)
 {
     $validator = Validator::make($request->all(), [
       "card_no" => "required",
       "ccExpiryMonth" => "required",
       "ccExpiryYear" => "required",
       "cvvNumber" => "required",
       "amount" => "required",
     ]);
     $input = $request->all();
     if ($validator->passes()) { 
         $input = array_except($input,array("_token"));
         $stripe = Stripe::make("sk_test_JG33GZrsKjIFGHhYcolZD8w8");
         try {
         $token = $stripe->tokens()->create([
           "card" => [
           "number" => $request->get("card_no"),
           "exp_month" => $request->get("ccExpiryMonth"),
           "exp_year" => $request->get("ccExpiryYear"),
           "cvc" => $request->get("cvvNumber"),
           ],
         ]);
//          $token = $stripe->tokens()->create([
//          "card" => [
//          "number" => "4242424242424242",
//          "exp_month" => 10,
//          "cvc" => 314,
//          "exp_year" => 2020,
//          ],
//          ]);
        if (!isset($token["id"])) {
            return response()->json(['success'=> false,"error"=>"支付失败"]); 
         }
         $charge = $stripe->charges()->create([
         "card" => $token["id"],
         "currency" => "cad",
         "amount" => $request->get("amount"),
         "description" => "Add in wallet",
         ]);

         if($charge["status"] == "succeeded") {
         /**
         * Write Here Your Database insert logic.
         */
            return response()->json(['success'=> true, 'message' => "支付成功, 支付金额".($charge['amount']/100)." ".strtoupper($charge['currency'])."."]); 
         } else {

         return response()->json(['success'=> false,"error"=>"Money not add in wallet!!"]); 
         }
         } catch (Exception $e) {
          
         return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         } catch(\Cartalyst\Stripe\Exception\CardErrorException $e) {
          
         return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         } catch(\Cartalyst\Stripe\Exception\MissingParameterException $e) {
          
         return response()->json(['success'=> false,"error"=>$e->getMessage()]); 
         }
     }
 }
}