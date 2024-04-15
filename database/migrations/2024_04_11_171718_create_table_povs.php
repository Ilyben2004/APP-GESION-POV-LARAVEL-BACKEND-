<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('povs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_appliance');

            $table->unsignedBigInteger('id_client');
            $table->foreign('id_client')->references('id')->on('clients');
            $table->foreign('id_appliance')->references('id')->on('Appliance');
            $table->date('dateDebut');
            $table->date('dateFin');
            $table->string('description');
            $table->string('compteManager');
            $table->string('ingenieurCybersecurity');
            $table->string('analyseCybersecurity');
            $table->string('libelle_pov');




            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('povs');
    }
};
