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
        Schema::create('Appliance', function (Blueprint $table) {
            $table->id();
            $table->string('libelle');
            $table->unsignedInteger('type'); 
            $table->string('DBID');
            $table->boolean('disponible')->default(0);
            $table->string('references'); 

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Appliance');
    }
};
