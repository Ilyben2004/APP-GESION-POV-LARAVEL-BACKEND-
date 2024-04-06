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
        Schema::table('appliance', function (Blueprint $table) {
            // Drop the existing column
            $table->dropColumn('type_id');

            // Add a new column as a foreign key
            $table->unsignedBigInteger('type_id')->nullable();

            // Add foreign key constraint
            $table->foreign('type_id')->references('id')->on('types');
        });
        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('appliance', function (Blueprint $table) {
            // Drop the foreign key constraint
            $table->dropForeign(['type_id']);

            // Drop the new column
            $table->dropColumn('type_id');

            // Recreate the original column
            $table->unsignedInteger('type');
        });
        //
    }
};
