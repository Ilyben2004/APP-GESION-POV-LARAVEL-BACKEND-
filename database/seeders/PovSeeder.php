<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Pov;


class PovSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Generate and insert 50 rows of sample data
        for ($i = 0; $i < 50; $i++) {
            Pov::create([
                'id_appliance' => rand(1, 50), // Replace 10 with the maximum ID of your appliance table
                'id_client' => rand(1, 50), // Replace 10 with the maximum ID of your client table
                'dateDebut' => now(),
                'dateFin' => now()->addDays(rand(1, 30)),
                'description' => 'Sample description ' . ($i + 1),
                'compteManager' => 'Sample manager ' . ($i + 1),
                'ingenieurCybersecurity' => 'Sample cybersecurity engineer ' . ($i + 1),
                'analyseCybersecurity' => 'Sample cybersecurity analysis ' . ($i + 1),
                'libelle_pov' => 'Sample POV ' . ($i + 1),
            ]);
        }
    }
}
