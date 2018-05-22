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
class PaymentController extends Controller
{

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
         $stripe = Stripe::make("sk_test_p1CeaBzazLEji0gufAM72v1d");
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