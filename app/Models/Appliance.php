<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appliance extends Model
{
  protected  $table = "appliance";
  protected $primarykey="id";
  protected $fillable=["libelle","DBID","disponible","references","type_id"];
  public $timestamps = false;
  
  public function type()
    {
        return $this->belongsTo(Type::class, 'type_id');
    }
    public function pov()
    {
        return $this->hasOne(Pov::class,'id_appliance');
    }


    





    use HasFactory;
}
