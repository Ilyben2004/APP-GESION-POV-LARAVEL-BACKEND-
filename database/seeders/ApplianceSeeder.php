<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Appliance;

class ApplianceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        // Get all type IDs from the 'types' table

        // Define the number of records you want to generate
        $numberOfRecords = 50;

        for ($i = 0; $i < $numberOfRecords; $i++) {
            Appliance::create([
                'libelle' => $faker->word,
                'DBID' => $faker->word,
                'disponible' => $faker->boolean,
                'references' => $faker->sentence,
                'type_id' => $faker->numberBetween(1, 11)

            ]);
        }
        //
    }
}
