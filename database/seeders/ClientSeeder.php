<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Client;

class ClientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        // Define the number of records you want to generate
        $numberOfRecords = 50;

        for ($i = 0; $i < $numberOfRecords; $i++) {
            Client::create([
                'libelle' => $faker->company,
                'secteur' => $faker->randomElement(['prive', 'public']), // Randomly select 'prive' or 'public'
                'activite' => $faker->jobTitle
            ]);
        }
        //
    }
}
