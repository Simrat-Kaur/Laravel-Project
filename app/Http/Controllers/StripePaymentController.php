<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Stripe;

class StripePaymentController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('stripe');
    }
      
     
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        \Stripe\Stripe::setApiKey('sk_test_rWiqGQKjFvRppinhrcHPehBJ00B5wgL3XK');

$customer = \Stripe\Customer::create([
  'name' => 'Jenny Rosen',
  'address' => [
    'line1' => '510 Townsend St',
    'postal_code' => '98140',
    'city' => 'San Francisco',
    'state' => 'CA',
    'country' => 'US',
    
  ],
]);

       
  
        $stripe = Stripe::charges()->create([
            'source' => $request->get('tokenId'),
            'currency' => 'USD',
            'amount' => $request->get('amount') * 100,
            'description'=>"hi",
        ]);
  
        return $stripe;
    }

}
