<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class ClientsTableSeederContacts extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 100) as $index) {
            DB::table('contacts')->insert([
                'nom' => $faker->lastName,
                'prenom' => $faker->firstName,
                'telephone' => $faker->phoneNumber,
                'fonction' => $faker->jobTitle,
                'id_client' => $index, // Assuming you have 100 clients in the database
                'email' => $faker->unique()->safeEmail
            ]);
            
        }
    }
}
