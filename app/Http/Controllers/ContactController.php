<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;



class ContactController extends Controller
{
    public function index()
    {
        return Contact::select('id', 'nom',	'prenom',	'telephone','fonction','id_client','email')->get();

    }

    public function store(Request $request)
    {
        $request->validate([
            'nom'=>'required',
            'prenom' => 'nullable',
            'telephone'=>'nullable',
            'fonction'=>'nullable',
            'id_client' => 'required',
            'email'=>'nullable'
            

        ]);

       
        Contact::create($request->post());
        return response()->json([
            'message'=>'Contact added successfully'
        ]);
    }
    public function show(Contact $contact)
    {
        return response()->json([
            'Contact' => $contact
        ]);
    }

    public function update(Request $request, Contact $contact)
    {
        $request->validate([
            'nom'=>'required',
            'prenom' => 'nullable',
            'telephone'=>'nullable',
            'function'=>'nullable',
            'id_client' => 'required',
            'email'=>'nullable'
            

        ]);



        $contact->fill($request->post())->update();


        return response()->json([
            'message' => 'Contact updated successfully'
        ]);
    }

    public function destroy(Contact $contact)
    {
        $contact->delete();
        return response()->json([
            'message' => 'contact deleted successfully'
        ]);
        }


}
