<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pov;
use App\Models\Appliance;
use App\Models\Client;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\PovController;
use Illuminate\Http\Request;

class PovSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Retrieve all IDs from the appliance and client tables
        $applianceIds = Appliance::pluck('id')->toArray();
        $clientIds = Client::pluck('id')->toArray();

        // Shuffle the arrays to randomize the order
        shuffle($applianceIds);
        shuffle($clientIds);

        // Determine the number of entries to create
        $numEntries = min(count($applianceIds), count($clientIds), 50);

        // Instantiate the PovController
        $povController = new PovController();

        // Create the specified number of Pov entries
        for ($i = 0; $i < $numEntries; $i++) {
            // Define the data for a single Pov entry
            $data = [
                'id_appliance' => $applianceIds[$i],
                'id_client' => $clientIds[$i],
                'dateDebut' => now(),
                'dateFin' => now()->addDays(rand(1, 30)),
                'description' => 'Sample description ' . ($i + 1),
                'compteManager' => 'Sample manager ' . ($i + 1),
                'ingenieurCybersecurity' => 'Sample cybersecurity engineer ' . ($i + 1),
                'analyseCybersecurity' => 'Sample cybersecurity analysis ' . ($i + 1),
                'libelle_pov' => 'Sample POV ' . ($i + 1),
            ];

            // Create a new Request object with the data
            $request = new Request([], [], [], [], [], [], $data);

            // Call the store method in the PovController
            $povController->store($request);
        }
    }
}
