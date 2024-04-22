<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Backup extends Model
{
    protected $table = 'backup';
    
    // Specify which attributes can be mass-assigned
    protected $fillable = [
        'client',
        'libelle_pov',
        'libelle_appliance',
        'dateDebut',
        'dateFin',
        'description',
        'analyseCybersecurity',
        'compteManager',
        'ingenieurCybersecurity'
    ];
}
