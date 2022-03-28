<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Riwayat;
use PDF;

class RiwayatController extends Controller
{
    // public function index_riwayat(){
    //     // $model = new Riwayat();
    //     $data = Riwayat::getPengawasan_Gedung();
    //     return view('riwayat.index-riwayat', ['data' => $data]);
    // }
    public function index_pengG_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPengawasan_Gedung();
        return view('riwayat.index-pengG-riwayat', ['data' => $data]);
    }
    public function index_pengA_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPengawasan_Air();
        return view('riwayat.index-pengA-riwayat', ['data' => $data]);
    }
    public function index_pengJ_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPengawasan_Jalan();
        return view('riwayat.index-pengJ-riwayat', ['data' => $data]);
    }
    public function index_perG_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPerencanaan_Gedung();
        return view('riwayat.index-perG-riwayat', ['data' => $data]);
    }
    public function index_perA_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPerencanaan_Air();
        return view('riwayat.index-perA-riwayat', ['data' => $data]);
    }
    public function index_perJ_riwayat(){
        // $model = new Riwayat();
        $data = Riwayat::getPerencanaan_Jalan();
        return view('riwayat.index-perJ-riwayat', ['data' => $data]);
    }

    public function create_riwayat(Request $request){
        // dd($request);

        $posisiyangdiusulkan = $request->posisiyangdiusulkan;
        $namaperusahaan = $request->namaperusahaan;
        $namapersonil = $request->namapersonil;
        $namatempatanggallahir = $request->namatempatanggallahir;
        $pendidikan = $request->pendidikan;
        $pendidikannonformal = $request->pendidikannonformal;
        // $penguasaanbahasaindonesia = $request->penguasaanbahasaindonesia;
        // $penguasaanbahasainggris = $request->penguasaanbahasainggris;
        $penguasaanbahasaindonesia = 'Baik';
        $penguasaanbahasainggris = 'Cukup';
        $tanggalpembuatan = $request->tanggalpembuatan;
        $pembuatpernyataan = $request->pembuatpernyataan;
        $menyetujui = $request->menyetujui;
        // $jenispengalaman = $request->customRadio;
        $jenispengalaman = $request->jenispengalaman;
        
        // dd($jenispengalaman);


        // if($request->file('file') && $request->file('filettd_pernyataan') && $request->file('filettd_menyetujui')){
        if($request->file('file')){
            $filepengalaman = $request->file('file');
            $ext = $filepengalaman->getClientOriginalExtension();
            $filenamepengalaman = $jenispengalaman.'_'.$namaperusahaan.'_'.$posisiyangdiusulkan.'_'.$namapersonil.rand(100000,1001238912).'.'.$ext;
            $filepengalaman->move('uploads/csv',$filenamepengalaman);

            // $filettd_pernyataan = $request->file('filettd_pernyataan');
            // $extfilettd_pernyataan = $filettd_pernyataan->getClientOriginalExtension();
            // $filenamettd_pernyataan = rand(100000,1001238912).'.'.$extfilettd_pernyataan;
            // $filettd_pernyataan->move('uploads/file',$filenamettd_pernyataan);

            // $filettd_menyetujui = $request->file('filettd_menyetujui');
            // $extfilettd_menyetujui = $filettd_menyetujui->getClientOriginalExtension();
            // $filenamettd_menyetujui = rand(100000,1001238912).'.'.$extfilettd_menyetujui;
            // $filettd_menyetujui->move('uploads/file',$filenamettd_menyetujui);

            // ditaroh di view
            // $file = fopen("assets/" . $filepengalaman, "r");
            // $i = 0;
            // $importData_arr = array();

            // while (($filedata = fgetcsv($file, 1000, ",")) !== FALSE) {
            //     $num = count($filedata);
            //     for ($c = 0; $c < $num; $c++) {
            //         $importData_arr[$i][] = $filedata[$c];
            //     }
            //     $i++;
            // }
            // fclose($file);

            // $skip = 0;
            // foreach ($importData_arr as $userdata) {
            //     if ($skip != 0) {

            //     }
            //     $skip++;
            // }

        }else {
            $return = "File masih belum dimasukkan";
            dd($return);
        }

        if($request->file('filettd_pernyataan')){
            $filettd_pernyataan = $request->file('filettd_pernyataan');
            $extfilettd_pernyataan = $filettd_pernyataan->getClientOriginalExtension();
            $filenamettd_pernyataan = rand(100000,1001238912).'.'.$extfilettd_pernyataan;
            $filettd_pernyataan->move('uploads/ttd',$filenamettd_pernyataan);
        }else {
            $filenamettd_pernyataan="kosong";
        }

        if($request->file('filettd_menyetujui')){
            $filettd_menyetujui = $request->file('filettd_menyetujui');
            $extfilettd_menyetujui = $filettd_menyetujui->getClientOriginalExtension();
            $filenamettd_menyetujui = rand(100000,1001238912).'.'.$extfilettd_menyetujui;
            $filettd_menyetujui->move('uploads/ttd',$filenamettd_menyetujui);
        }else {
            $filenamettd_menyetujui="kosong";
        }

        // $datapersonal[] = array(
        //     "posisiyangdiusulkan"=>$posisiyangdiusulkan,
        //     "namaperusahaan"=>$namaperusahaan,
        //     "namapersonil"=>$namapersonil,
        //     "namatempatanggallahir"=>$namatempatanggallahir,
        //     "pendidikan"=>$pendidikan,
        //     "pendidikannonformal"=>$pendidikannonformal,
        //     "penguasaanbahasaindonesia"=>$penguasaanbahasaindonesia,
        //     "penguasaanbahasainggris"=>$penguasaanbahasainggris,
        //     "tanggalpembuatan"=>$tanggalpembuatan,
        //     "pembuatpernyataan"=>$pembuatpernyataan,
        //     "menyetujui"=>$menyetujui,
        //     "filepengalaman"=>$filepengalaman,
            // "filettd_pernyataan"=>$filettd_pernyataan,
            // "filettd_menyetujui"=>$filettd_menyetujui
        // );

        // dd($datapersonal);

        // return view('riwayat.index-riwayat',['datapersonal'=>$datapersonal]);
        // $model = Riwayat::find(1);
        // $model = Riwayat::find(1);


        // $view = \View::make('riwayat.daftarRiwayat', 
        // [
        //     "posisiyangdiusulkan"=>$posisiyangdiusulkan,
        //     "namaperusahaan"=>$namaperusahaan,
        //     "namapersonil"=>$namapersonil,
        //     "namatempatanggallahir"=>$namatempatanggallahir,
        //     "pendidikan"=>$pendidikan,
        //     "pendidikannonformal"=>$pendidikannonformal,
        //     "penguasaanbahasaindonesia"=>$penguasaanbahasaindonesia,
        //     "penguasaanbahasainggris"=>$penguasaanbahasainggris,
        //     "tanggalpembuatan"=>$tanggalpembuatan,
        //     "pembuatpernyataan"=>$pembuatpernyataan,
        //     "menyetujui"=>$menyetujui,
        //     "filepengalaman"=>$filenamepengalaman
        // ]);

        // $html_content = $view->render();
        // // PDF::SetTitle("List of users");
        // PDF::AddPage();
        // PDF::writeHTML($html_content, true, false, true, false, '');
        // // D is the change of these two functions. Including D parameter will avoid 
        // // loading PDF in browser and allows downloading directly
        // PDF::Output('Daftar Riwayat '.$namapersonil.'.pdf', 'D'); 

        return view('riwayat.daftarRiwayat', 
        [
            "posisiyangdiusulkan"=>$posisiyangdiusulkan,
            "namaperusahaan"=>$namaperusahaan,
            "namapersonil"=>$namapersonil,
            "namatempatanggallahir"=>$namatempatanggallahir,
            "pendidikan"=>$pendidikan,
            "pendidikannonformal"=>$pendidikannonformal,
            "penguasaanbahasaindonesia"=>$penguasaanbahasaindonesia,
            "penguasaanbahasainggris"=>$penguasaanbahasainggris,
            "tanggalpembuatan"=>$tanggalpembuatan,
            "pembuatpernyataan"=>$pembuatpernyataan,
            "menyetujui"=>$menyetujui,
            "jenispengalaman"=>$jenispengalaman,
            "filepengalaman"=>$filenamepengalaman,
            "filenamettd_pernyataan"=>$filenamettd_pernyataan,
            "filenamettd_menyetujui"=>$filenamettd_menyetujui
        ]);
    }

    public function index_posisi(){
        return view('riwayat.index-posisi');
    }

}
