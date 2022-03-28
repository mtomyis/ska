<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TenagaKeterampilan;

class TenagaKeterampilanController extends Controller
{
    public function addTenagaKeterampilan(){
        return view('add-tenagaKeterampilan');
    }
    
   public function createTenagaKeterampilan(Request $request){
        $post = new TenagaKeterampilan();
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
        return view('layouts.input_keterampilan');
    }

    public function getTenagaKeterampilan(Request $request){
        $alls = TenagaKeterampilan::all();
        return view('showtenagaKeterampilan_keterampilan',['alls'=>$alls]);
    }

    public function tableTenagaKeterampilan(Request $request){


        $alls = TenagaKeterampilan::all();
        return view('layouts.table_keterampilan',['alls'=>$alls]);
    }

    public function input_keterampilan(){
        return view('layouts.input_keterampilan');
    }

    public function getfile_keterampilan($file){

        return response()->download('uploads/file/'.$file);

    }

    public function edit_keterampilan($id)
    {
            $up = TenagaKeterampilan::find($id);
            return view('layouts.edit_keterampilan',compact('up'));
    }


    public function update_keterampilan(Request $request){
       
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
            $up = TenagaKeterampilan::where('id',$request->id)
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
            $up = TenagaKeterampilan::where('id',$request->id)
        ->update([
           'nama' => $request->nama,
           'sertifikat' => $request->sertifikat,
           'tanggal_penetapan' => $request->tanggal_penetapan

         ]);
        }

        
        return redirect()->back();
       }

       public function delete_keterampilan($id)
       {
            $up = TenagaKeterampilan::where('id',$id)->delete();
            return redirect()->back();
       }

       
}
