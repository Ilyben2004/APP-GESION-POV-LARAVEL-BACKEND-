<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected  $table = "clients";
    protected $primarykey="id";
    protected $fillable=["libelle","secteur","activite"];
    public function contact()
    {
        return $this->belongsTo(Contact::class, 'id_client');
    }
    use HasFactory;
}
