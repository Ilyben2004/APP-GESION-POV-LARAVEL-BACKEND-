<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Client;

class ClientController extends Controller
{
    public function index()
    {
        return Client::select('id', 'libelle', 'secteur', 'activite')
                     ->orderBy('id', 'desc')
        
                     ->get();
    }
    public function noContact()
{
    return Client::select('clients.id', 'clients.libelle', 'clients.secteur', 'clients.activite')
        ->leftJoin('contacts', 'clients.id', '=', 'contacts.id_client')
        ->whereNull('contacts.id_client')
        ->orderBy('clients.id', 'desc')
        ->get();
}

    
    public function store(Request $request)
    {
        $request->validate([
            'libelle'=>'required',
            'secteur' => 'required',
            'activite'=>'required'

        ]);

       
        Client::create($request->post());
        return response()->json([
            'message'=>'Client added successfully'
        ]);
    }
    public function show(Client $client)
    {
        return response()->json([
            'client' => $client
        ]);
    }

    public function update(Request $request, Client $client)
    {
        $request->validate([
            'libelle'=>'required',
            'secteur' => 'required',
            'activite'=>'required'

        ]);


        $client->fill($request->post())->update();


        return response()->json([
            'message' => 'Client updated successfully'
        ]);
    }
    public function destroy(Client $client)
    {
        $client->delete();
        return response()->json([
            'message' => 'client deleted successfully'
        ]);
        }
        public function getClientContact($clientId)
        {
            $client = Client::findOrFail($clientId);

    
            if ($client) {
                $contact = $client->contact;
                if($contact){
                    return response()->json(['contact' => $contact]);
                }
                else{
                    return 0;
                }
               
            }
            else{
                return 0 ;
            }
    
            return 0;
        }

        

    //
}
