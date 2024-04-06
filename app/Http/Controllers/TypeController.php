<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Type;


class TypeController extends Controller
{
    public function index()
    {
        return Type::select('id', 'libelle')->get();

    }

    public function store(Request $request)
    {
        $request->validate([
            'libelle'=>'required'

        ]);

       
       Type::create($request->post());
        return response()->json([
            'message'=>'Type added successfully'
        ]);
    }
    public function show(Type $type)
    {
        return response()->json([
            'type' => $type
        ]);
    }

    public function update(Request $request, Type $type)
    {
        $request->validate([
            'libelle'=>'required'
           ]);


        $type->fill($request->post())->update();


        return response()->json([
            'message' => 'Type updated successfully'
        ]);
        
    }
    public function destroy(Type $type)
    {
        $type->delete();
        return response()->json([
            'message' => 'type deleted successfully'
        ]);
        }
}
