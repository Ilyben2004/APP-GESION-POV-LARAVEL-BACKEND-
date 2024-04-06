<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Type;

class TypeSeeder extends Seeder
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
        $numberOfRecords = 10;

        for ($i = 0; $i < $numberOfRecords; $i++) {
            Type::create([
                'libelle' => $faker->word // Generate a random word for the 'libelle' field
            ]);
        }
        //
    }
}
