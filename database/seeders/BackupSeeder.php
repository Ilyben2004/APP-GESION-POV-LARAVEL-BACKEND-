<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Faker\Factory as FakerFactory;

class BackupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Initialize the Faker instance
        $faker = FakerFactory::create();

        // Array to hold backup data
        $backups = [];
       // Generate 50 rows of backup data
        for ($i = 0; $i < 50; $i++) {
            $backups[] = [
                'id' => $i + 1,
                'client' => $faker->company,
                'libelle_pov' => $faker->sentence(3),
                'libelle_appliance' => $faker->word,
                'dateDebut' => $faker->date(),
                'dateFin' => $faker->date(),
                'description' => $faker->paragraph,
                'analyseCybersecurity' => $faker->word,
                'compteManager' => $faker->name,
                'ingenieurCybersecurity' => $faker->name,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        // Insert the generated data into the backup table
        DB::table('backup')->insert($backups);
    }
}
