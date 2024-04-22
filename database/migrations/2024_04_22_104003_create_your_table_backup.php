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
        Schema::create('backup', function (Blueprint $table) {
            $table->id();
            $table->string('client');
            $table->string('libelle_pov');
            $table->string('libelle_appliance'); 
            $table->date('dateDebut');
            $table->date('dateFin');
            $table->string('description');
            $table->string('analyseCybersecurity');
            $table->string('compteManager');
            $table->string('ingenieurCybersecurity');
         
         
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
        Schema::dropIfExists('backup');
    }
};
