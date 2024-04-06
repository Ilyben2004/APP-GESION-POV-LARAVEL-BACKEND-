<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected  $table = "types";
    protected $primarykey="id";
    protected $fillable=["libelle"];
    public function appliances()
    {
        return $this->hasMany(Appliance::class);
    }
    use HasFactory;
}
