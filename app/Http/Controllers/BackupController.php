<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Backup;


class BackupController extends Controller
{
    public function index()
    {
    return Backup::select('*')->get();

    }

}
