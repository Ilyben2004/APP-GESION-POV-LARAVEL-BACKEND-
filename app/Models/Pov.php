<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pov extends Model
{
    protected $table = 'povs';

    // Specify any fillable fields
    protected $fillable = [
        'id_appliance',
        'id_client',
        'dateDebut',
        'dateFin',
        'description',
        'compteManager',
        'ingenieurCybersecurity',
        'analyseCybersecurity',
        'libelle_pov',
    ];

    // Define relationships if needed
    public function client()
    {
        return $this->belongsTo(Client::class, 'id_client');
    }

    public function appliance()
    {
        return $this->belongsTo(Appliance::class, 'id_appliance');
    }
    use HasFactory;
}
