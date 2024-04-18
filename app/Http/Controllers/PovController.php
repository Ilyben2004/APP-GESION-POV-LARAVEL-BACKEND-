<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pov;

class PovController extends Controller
{
    public function index()
    {
       return Pov::select('*')  ->orderBy('id', 'desc')
       ->get();;;
       

    }
   
    public function store(Request $request)
    {
        $request->validate([
            'id_appliance' => 'required',
            'id_pov' => 'required',
            'dateDebut' => 'required',
            'dateFin' => 'required',
            'description' => 'required',
            'compteManager' => 'required',
            'ingenieurCybersecurity' => 'required',
            'analyseCybersecurity' => 'required',
            'libelle_pov' => 'required',
        ]);

        Pov::create($request->all());
        
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
