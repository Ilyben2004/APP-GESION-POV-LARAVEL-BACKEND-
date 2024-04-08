<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Appliance;


class ApplianceController extends Controller
{
    public function index()
    {
        return Appliance::select('id', 'libelle',	'DBID','disponible','references','type_id')->get();
    }
   

    public function store(Request $request)
    {
        $request->validate([
            'libelle'=>'required',
            'DBID' => 'required',
            'disponible' => 'required',
            'references' => 'required',
            'type_id' => 'required',


        ]);

       
        Appliance::create($request->post());
        return response()->json([
            'message'=>'Appliance added successfully'
        ]);
    }
    public function show(Appliance $appliance)
    {
        return response()->json([
            'appliance' => $appliance
        ]);
    }
    

    public function update(Request $request, Appliance $appliance)
    {
        $request->validate([
            'libelle'=>'required',
            'DBID' => 'required',
            'disponible' => 'required',
            'references' => 'required',
            'type_id' => 'required',


        ]);
        $appliance->fill($request->post())->update();


        return response()->json([
            'message' => 'Appliance updated successfully'
        ]);
    }

    public function destroy(Appliance $Appliance)
    {
        $Appliance->delete();
        return response()->json([
            'message' => 'Appliance deleted successfully'
        ]);
        }

        public function getApplianceType($applianceId)
        {
            $appliance = Appliance::findOrFail($applianceId);

    
            if ($appliance) {
                $type = $appliance->type;
                return response()->json(['type' => $type]);
            }
    
            return response()->json(['error' => $appliance]);
        }






}
