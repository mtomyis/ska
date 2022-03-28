<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TenagaAhli;

class TenagaAhliController extends Controller
{
    public function addTenagaAhli(){
        return view('add-tenagaAhli');
    }
    
   public function createTenagaAhli(Request $request){
        $post = new TenagaAhli();
        $nama_sertifikat = $request->nama_sertifikat;
        $tingkatan = $request->tingkatan;
        $sertifikat = $nama_sertifikat.'-'.$tingkatan;
        $post->nama = $request->nama;
        $post->sertifikat = $sertifikat;
        $post->tanggal_penetapan = $request->tanggal_penetapan;
       

        if($request->file('file')){
            $file = $request->file('file');
            $nama = $request->nama;
            $status_sertifikat = "Elektronik";
            $ext = $file->getClientOriginalExtension();
            $newName =$nama.'_'.$sertifikat.'_'.rand(100000,1001238912).'.'.$ext;
            $file->move('uploads/file',$newName);
            $post->status_sertifikat = $status_sertifikat;
            $post->file = $newName;
        }else {
            $status_sertifikat = "Non Elektronik";
            $post->status_sertifikat = $status_sertifikat;
        }

        // $file = $request->file('file');
        // 
        
        
        $post->save();
        return view('layouts.input');
    }

    public function getTenagaAhli(Request $request){
        $alls = TenagaAhli::all();
        return view('showtenagaAhli',['alls'=>$alls]);
    }

    public function tableTenagaAhli(Request $request){


        $alls = TenagaAhli::all();
        return view('layouts.table',['alls'=>$alls]);
    }

    public function input(){
        return view('layouts.input');
    }

    public function getfile($file){

        return response()->download('uploads/file/'.$file);

    }

    public function edit($id)
    {
            $up = TenagaAhli::find($id);
            return view('layouts.edit',compact('up'));
    }


    public function update(Request $request){
       
        if($request->file('file')){
            $file = $request->file('file');
            $nama = $request->nama;
            $sertifikat = $request->sertifikat;
            $status_sertifikat = "Elektronik";
            $ext = $file->getClientOriginalExtension();
            $newName =$nama.'_'.$sertifikat.'_'.rand(100000,1001238912).'.'.$ext;
            $file->move('uploads/file',$newName);
            // $post->status_sertifikat = $status_sertifikat;
            // $post->file = $newName;
            $up = TenagaAhli::where('id',$request->id)
        ->update([
           'nama' => $request->nama,
           'sertifikat' => $request->sertifikat,
           'tanggal_penetapan' => $request->tanggal_penetapan,
           'status_sertifikat' => $status_sertifikat,
           'file' => $newName

         ]);
        }else {
            $status_sertifikat = "Non Elektronik";
            // $post->status_sertifikat = $status_sertifikat;
            $up = TenagaAhli::where('id',$request->id)
        ->update([
           'nama' => $request->nama,
           'sertifikat' => $request->sertifikat,
           'tanggal_penetapan' => $request->tanggal_penetapan

         ]);
        }

        
        return redirect()->back();
       }

       public function delete($id)
       {
            $up = TenagaAhli::where('id',$id)->delete();
            return redirect()->back();
       }

       
}
