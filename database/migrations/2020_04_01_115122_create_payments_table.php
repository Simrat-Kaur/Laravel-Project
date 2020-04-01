<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            //$table->id();
            $table->bigIncrements('id');
        $table->string('payment_id');
        $table->string('name');
        $table->string('address');
        $table->string('payer_email');
        $table->float('amount', 10, 2);
        $table->string('currency');
        $table->string('description');
        $table->string('payment_status');
        $table->timestamps();
           // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payments');
    }
}
