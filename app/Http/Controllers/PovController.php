<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pov;
use App\Models\Client;
use App\Models\Appliance;
use App\Models\Backup;


class PovController extends Controller
{
    public function createBackup(Request $request)
    {
      

        $idClient = $request->input('id_client');
        $client = Client::findOrFail($idClient);
        $idappliance = $request->input('id_appliance');
        $appliance = Appliance::findOrFail($idappliance);
        $request->merge([
            'client' => $client->libelle,
            'libelle_appliance' => $appliance->libelle,
        ]);

    $request->except(['id_client', 'id_appliance']);





    $backup = Backup::create($request->all());
    
    // Return the newly created backup entry as a JSON response
    return response()->json($backup, 201);
    }
    public function index()
    {
       return Pov::select('*')  ->orderBy('id', 'desc')
       ->get();;;
       

    }
   
    public function store(Request $request)
    {
        $request->validate([
            'id_appliance' => 'required',
            'id_client' => 'required',
            'dateDebut' => 'required',
            'dateFin' => 'required',
            'description' => 'required',
            'compteManager' => 'required',
            'ingenieurCybersecurity' => 'required',
            'analyseCybersecurity' => 'required',
            'libelle_pov' => 'required',
        ]);

        Pov::create($request->all());
       $this->createBackup($request);
        
        return response()->json([
            'message' => 'Pov added successfully'
        ]);
    }
    
    public function show(Pov $pov)
    {
        return response()->json([
            'pov' => $pov
        ]);
    }

    public function update(Request $request, Pov $pov)
{
    $request->validate([
        'id_appliance' => 'sometimes|required',
        'id_client' => 'sometimes|required',
        'dateDebut' => 'sometimes|required',
        'dateFin' => 'sometimes|required',
        'description' => 'sometimes|required',
        'compteManager' => 'sometimes|required',
        'ingenieurCybersecurity' => 'sometimes|required',
        'analyseCybersecurity' => 'sometimes|required',
        'libelle_pov' => 'sometimes|required',
    ]);

    $pov->update($request->only([
        'id_appliance',
        'id_client',
        'dateDebut',
        'dateFin',
        'description',
        'compteManager',
        'ingenieurCybersecurity',
        'analyseCybersecurity',
        'libelle_pov',
    ]));
    $this->createBackup($request);


    return response()->json([
        'message' => 'Pov updated successfully'
    ]);
}

    public function destroy(Pov $pov)
    {
        $pov->delete();

        return response()->json([
            'message' => 'Pov deleted successfully'
        ]);
    }

    public function getClient($povId)
    {
        $pov = Pov::findOrFail($povId);


        if ($pov) {
            $client = $pov->client;
            return response()->json(['client' => $client]);
        }

        return response()->json(['error' => $appliance]);
    }
    public function getAppliance($povId)
    {
        $pov = Pov::findOrFail($povId);


        if ($pov) {
            $appliance = $pov->appliance;
            return response()->json(['appliance' => $appliance]);
        }

        return response()->json(['error' => $appliance]);
    }
    
   



}
