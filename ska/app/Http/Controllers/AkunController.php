<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Akun;

class AkunController extends Controller
{
    public function index(Request $request){
        $alls = Akun::all();
        return view('akun.table',['alls'=>$alls]);
    }

    public function tambah_akun(){
        return view('akun.tambah_akun');
    }
    
    public function delete($id)
    {
        $up = Akun::where('id',$id)->delete();
        return redirect()->back();
    }
}
