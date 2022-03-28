<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kop;
use App\DaftarRiwayat;
use App\Referensi;
use App\ReferensiTemp;
use App\TenagaAhli;

class ReferensiController extends Controller
{
    public function index_referensi(){
        // $model = new Riwayat();
        // $data = Riwayat::getPerencanaan_Jalan();
        $alls = Kop::all();
        return view('referensi.index-referensi',['alls'=>$alls]);
    }

    public function pilih_template_a(Request $request){
        // dd(Session::get('user'));
        $nama_personil = \Session::get("personil")->nama_personil;
        $jabatan = \Session::get("personil")->posisi_penugasan;

        $fix_kop_template = $request->kop_template;
        if ($fix_kop_template!="") {
            $data='
            <!-- left column -->
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Input Data- Surat</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="col-md-6">
                        <img src="storage/template1.JPG">
                    </div>
                    <div class="col-md-6">
                    <form method="POST" action="'.url("/referensi").'" enctype="multipart/form-data">
                        <input id="kopsurat" style="" type="hidden" name="kopsurat" value="'.$fix_kop_template.'">
                        <input id="template_surat" style="" type="hidden" name="template_surat" value="a">
                        <div class="form-group">
                        <input id="tempattanggalttd" style="" type="text" name="tempattanggalttd" class="form-control" placeholder="Tempat, Tanggal TTD">
                        </div>
                        <div class="form-group">
                        <input id="nosurat" style="" type="text" name="nosurat" class="form-control" placeholder="No. Surat">
                        </div>
                        <div class="form-group">
                        <input id="namappk" style="" type="text" name="namappk" class="form-control" placeholder="Nama PPK">
                        </div>
                        <div class="form-group">
                        <input id="jabatanppk" type="text" name="jabatanppk" class="form-control" placeholder="Jabatan PPK">
                        </div>
                        <div class="form-group">
                        <input id="nip" type="text" name="nip" class="form-control" placeholder="NIP">
                        </div>
                        <div class="form-group">
                        <input id="namapersonil" disabled type="text" name="namapersonil" class="form-control" placeholder="Nama Personil" value="'.$nama_personil.'">
                        </div>
                        <div class="form-group">
                        <input id="jabatan" disabled type="text" name="jabatan" class="form-control" placeholder="Jabatan Personil" value="'.$jabatan.'">
                        </div>
                        <div class="form-group">
                        <input id="perusahaan" type="text" name="perusahaan" class="form-control" placeholder="Perusahaan">
                        </div>
                        <div class="form-group">
                        <input id="pekerjaan" type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan">
                        </div>
                        <div class="form-group">
                        <input id="lokasi" type="text" name="lokasi" class="form-control" placeholder="Lokasi">
                        </div>
                        <div class="form-group">
                        <input id="nokontrak" type="text" name="nokontrak" class="form-control" placeholder="No. Kontrak">
                        </div>
                        
                        <div class="form-group">
                        <label for="waktuawal">Waktu Awal</label>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="date" class="form-control" name="waktuawal" id="waktuawal">
                        </div>
                        </div>

                        <div class="form-group">
                        <label for="waktuakhir">Waktu Akhir</label>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="date" class="form-control" name="waktuakhir" id="waktuakhir">
                        </div>
                        </div>

                        <div class="form-group">
                            <input type="button" name="btn_buatlagi" class="btn btn-success" value="Buat Lagi" onclick="aksiLagiSurat()">
                        </div>
                    </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->
                </div>
                
            ';
        }else{
            $data='
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-check"></i> Alert!</h4>
                    Belum memilih kop surat.
                </div>
                </div>
                </div>
            </div>
            ';
        }

        return $data;
    }

    public function pilih_template_b(Request $request){
        // dd($request);
        $fix_template = $request->jenis_template;
        if ($fix_template="template_b") {
            $data='
            <!-- left column -->
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Input Data- Surat</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="col-md-6">
                        <img src="storage/template2.JPG">
                    </div>
                    <div class="col-md-6">
                    <form method="POST" action="{{url(\'/riwayat\')}}" enctype="multipart/form-data">
                        <div class="form-group">
                        <input id="tempattanggalttd" style="" type="text" name="tempattanggalttd" class="form-control" placeholder="Tempat, Tanggal TTD">
                        </div>
                        <div class="form-group">
                        <input id="nosurat" style="" type="text" name="nosurat" class="form-control" placeholder="No. Surat">
                        </div>
                        <div class="form-group">
                        <input id="namappk" style="" type="text" name="namappk" class="form-control" placeholder="Nama PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatanppk" class="form-control" placeholder="Jabatan PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nip" class="form-control" placeholder="NIP">
                        </div>
                        <div class="form-group">
                        <input type="text" name="namapersonil" class="form-control" placeholder="Nama Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatan" class="form-control" placeholder="Jabatan Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="perusahaan" class="form-control" placeholder="Perusahaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="lokasi" class="form-control" placeholder="Lokasi">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nokontrak" class="form-control" placeholder="No. Kontrak">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuawal" class="form-control" placeholder="Waktu Awal">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuakhir" class="form-control" placeholder="Waktu Akhir">
                        </div>
                    </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->
                </div>
            ';
        }
        else{
            $data="Template belum tersedia";
        }

        return $data;
    }

    public function pilih_template_c(Request $request){
        // dd($request);
        $fix_template = $request->jenis_template;
        if ($fix_template="template_c") {
            $data='
            <!-- left column -->
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Input Data- Surat</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="col-md-6">
                        <img src="storage/template3.JPG">
                    </div>
                    <div class="col-md-6">
                    <form method="POST" action="{{url(\'/riwayat\')}}" enctype="multipart/form-data">
                        <div class="form-group">
                        <input id="tempattanggalttd" style="" type="text" name="tempattanggalttd" class="form-control" placeholder="Tempat, Tanggal TTD">
                        </div>
                        <div class="form-group">
                        <input id="nosurat" style="" type="text" name="nosurat" class="form-control" placeholder="No. Surat">
                        </div>
                        <div class="form-group">
                        <input id="namappk" style="" type="text" name="namappk" class="form-control" placeholder="Nama PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatanppk" class="form-control" placeholder="Jabatan PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nip" class="form-control" placeholder="NIP">
                        </div>
                        <div class="form-group">
                        <input type="text" name="namapersonil" class="form-control" placeholder="Nama Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatan" class="form-control" placeholder="Jabatan Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="perusahaan" class="form-control" placeholder="Perusahaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="lokasi" class="form-control" placeholder="Lokasi">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nokontrak" class="form-control" placeholder="No. Kontrak">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuawal" class="form-control" placeholder="Waktu Awal">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuakhir" class="form-control" placeholder="Waktu Akhir">
                        </div>
                    </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->
                </div>
            ';
        }
        else{
            $data="Template belum tersedia";
        }

        return $data;
    }

    public function pilih_template_d(Request $request){
        // dd($request);
        $fix_template = $request->jenis_template;
        if ($fix_template="template_d") {
            $data='
            <!-- left column -->
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Input Data- Surat</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="col-md-6">
                        <img src="storage/template4.JPG">
                    </div>
                    <div class="col-md-6">
                    <form method="POST" action="{{url(\'/riwayat\')}}" enctype="multipart/form-data">
                        <div class="form-group">
                        <input id="tempattanggalttd" style="" type="text" name="tempattanggalttd" class="form-control" placeholder="Tempat, Tanggal TTD">
                        </div>
                        <div class="form-group">
                        <input id="nosurat" style="" type="text" name="nosurat" class="form-control" placeholder="No. Surat">
                        </div>
                        <div class="form-group">
                        <input id="namappk" style="" type="text" name="namappk" class="form-control" placeholder="Nama PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatanppk" class="form-control" placeholder="Jabatan PPK">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nip" class="form-control" placeholder="NIP">
                        </div>
                        <div class="form-group">
                        <input type="text" name="namapersonil" class="form-control" placeholder="Nama Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="jabatan" class="form-control" placeholder="Jabatan Personil">
                        </div>
                        <div class="form-group">
                        <input type="text" name="perusahaan" class="form-control" placeholder="Perusahaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan">
                        </div>
                        <div class="form-group">
                        <input type="text" name="lokasi" class="form-control" placeholder="Lokasi">
                        </div>
                        <div class="form-group">
                        <input type="text" name="nokontrak" class="form-control" placeholder="No. Kontrak">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuawal" class="form-control" placeholder="Waktu Awal">
                        </div>
                        <div class="form-group">
                        <input type="text" name="waktuakhir" class="form-control" placeholder="Waktu Akhir">
                        </div>
                    </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->
                </div>
            ';
        }
        else{
            $data="Template belum tersedia";
        }

        return $data;
    }

    public function input_riwayat(Request $request)
    {
        // \Session::put('personil', ['nama_personil' => $request->namapersonil, 'jabatan' => $request->posisiyangdiusulkan]);
        // dd($request);
        $post = new DaftarRiwayat();
        // $post = new TenagaAhli();
        // $nama_sertifikat = $request->jenispengalaman;
        // $tingkatan = $request->jenispengalaman;
        // $sertifikat = $nama_sertifikat;
        // $post->nama = $request->jenispengalaman;
        // $post->sertifikat = $nama_sertifikat;
        // $post->tanggal_penetapan = $request->jenispengalaman;

        $post->jenispengalaman = $request->jenispengalaman;
        $post->posisi_penugasan = $request->posisiyangdiusulkan;
        $post->nama_perusahaan = $request->namaperusahaan;
        $post->nama_personil = $request->namapersonil;
        $post->tmp_tgl_lahir = $request->tmp_tgl_lahir;
        $post->pendidikan = $request->pendidikan;
        $post->pendidikan_non = $request->pendidikannonformal;
        $post->tmp_tgl_pembuatan = $request->tanggalpembuatan;
        // $post->pembuat_pernyataan = $request->pembuatpernyataan;
        $post->pembuat_pernyataan = $request->namapersonil;
        $post->menyetujui = $request->menyetujui;
        // dd($post->save());

        if ($post->save()) {
            // $data_personil = DaftarRiwayat::where([
            //         'jenispengalaman' => $request->jenispengalaman,
            //         'posisi_penugasan' =>$request->posisiyangdiusulkan,
            //         'nama_perusahaan' =>$request->namaperusahaan,
            //         'nama_personil' =>$request->namapersonil,
            //         ])->first();
            $data_personil = DaftarRiwayat::latest()->first();
                // dd($data_personil);
            \Session::put('personil', $data_personil);
            $data='success';
        }else{
            $data='
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-check"></i> Alert!</h4>
                    Gagal Menyimpan data riwayat, Silahkan coba lagi.
                </div>';
        }

        return $data;
    }

    public function input_template(Request $request)
    {
        // dd($request);
        // $jabatan = \Session::get("personil")->posisi_penugasan;

        $post = new Referensi();
        $post->fk_idkop_surat = $request->kopsurat;
        $post->tempat_tanggal_ttd = $request->tempattanggalttd;
        $post->nosurat = $request->nosurat;
        $post->namappk = $request->namappk;
        $post->jabatanppk = $request->jabatanppk;
        $post->nip = $request->nip;
        $post->template_surat = $request->template_surat;
        $post->fk_iddaftar_riwayat = \Session::get("personil")->id;
        $post->perusahaan = $request->perusahaan;
        $post->pekerjaan = $request->pekerjaan;
        $post->lokasi = $request->lokasi;
        $post->nokontrak = $request->nokontrak;
        $post->waktuawal = $request->waktuawal;
        $post->waktuakhir = $request->waktuakhir;

        $post_temp = new ReferensiTemp();
        $post_temp->fk_idkop_surat = $request->kopsurat;
        $post_temp->tempat_tanggal_ttd = $request->tempattanggalttd;
        $post_temp->nosurat = $request->nosurat;
        $post_temp->namappk = $request->namappk;
        $post_temp->jabatanppk = $request->jabatanppk;
        $post_temp->nip = $request->nip;
        $post_temp->template_surat = $request->template_surat;
        $post_temp->fk_iddaftar_riwayat = \Session::get("personil")->id;
        $post_temp->perusahaan = $request->perusahaan;
        $post_temp->pekerjaan = $request->pekerjaan;
        $post_temp->lokasi = $request->lokasi;
        $post_temp->nokontrak = $request->nokontrak;
        $post_temp->waktuawal = $request->waktuawal;
        $post_temp->waktuakhir = $request->waktuakhir;

        if ($post->save() && $post_temp->save()) {
            $data_referensi = Referensi::latest()->first();

            // ambil template berapa
            $data=$data_referensi->template_surat;
            // $data_referensi = collect([
            //     "kopsurat" => $request->kopsurat,
            //     "tempattanggalttd" => $request->tempattanggalttd,
            //     "nosurat" => $request->nosurat,
            //     "namappk" => $request->namappk,
            //     "jabatanppk" => $request->jabatanppk,
            //     "nip" => $request->nip,
            //     "nama_personil" => $request->namapersonil,
            //     "jabatan" => $request->jabatan,
            //     "perusahaan" => $request->perusahaan,
            //     "pekerjaan" => $request->pekerjaan,
            //     "lokasi" => $request->lokasi,
            //     "nokontrak" => $request->nokontrak,
            //     "waktuawal" => $request->waktuawal,
            //     "waktuakhir" => $request->waktuakhir,
            // ]);
            // dd($data_referensi);
                // dd($data_personil);
            \Session::put('referensi', $data_referensi);
            // dd((Session::get('referensi'))->tempattanggalttd);
            
        }else{
            $data='
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                Gagal Menyimpan data riwayat, Silahkan coba lagi.
            </div>';
        }
        return $data;
    }

    public function save_template(Request $request)
    {
        // dd($request);
        $post = new Referensi();
        $post->fk_idkop_surat = $request->kopsurat;
        $post->tempat_tanggal_ttd = $request->tempattanggalttd;
        $post->nosurat = $request->nosurat;
        $post->namappk = $request->namappk;
        $post->jabatanppk = $request->jabatanppk;
        $post->nip = $request->nip;
        // $post->nama_personil = $request->namapersonil;
        // $post->jabatan = $request->jabatan;
        $post->template_surat = $request->template_surat;
        $post->fk_iddaftar_riwayat = \Session::get("personil")->id;
        $post->perusahaan = $request->perusahaan;
        $post->pekerjaan = $request->pekerjaan;
        $post->lokasi = $request->lokasi;
        $post->nokontrak = $request->nokontrak;
        $post->waktuawal = $request->waktuawal;
        $post->waktuakhir = $request->waktuakhir;

        if ($post->save()) {
            $data='success';
        }else{
            $data='
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                Gagal Menyimpan data riwayat, Silahkan coba lagi.
            </div>';
        }
        return $data;
    }

    public function index_createpdf(){

        $fkid = \Session::get("personil")->id;
        // SELECT * FROM `referensi` join kop_surat on kop_surat.id = referensi.fk_idkop_surat where fk_iddaftar_riwayat = 23
        $data_referensi = ReferensiTemp::join('kop_surat', 'kop_surat.id', '=', 'referensi.fk_idkop_surat')
        ->where(['referensi_temp.fk_iddaftar_riwayat' => $fkid])->get();

        return view('referensi.index-createpdf', ['data_referensi'=>$data_referensi]);
    }
    
    public function index_createexisting(){
        // SELECT * FROM `referensi` join kop_surat on kop_surat.id = referensi.fk_idkop_surat where fk_iddaftar_riwayat = 23
        $all = Referensi::join('kop_surat', 'kop_surat.id', '=', 'referensi.fk_idkop_surat')
        ->select('kop_surat.nama AS namakop', 'referensi.*')
        ->get();

        return view('referensi.index-referensi-existing', ['alls'=>$all]);
    }

    public function input_existing(Request $request){
        //lihat data template berapa dari id yang di pilih
        $data_existRef = Referensi::join('kop_surat', 'kop_surat.id', '=', 'referensi.fk_idkop_surat')
        ->select('kop_surat.nama AS namakop', 'referensi.*')
        ->where('referensi.id', '=', $request->id_referensi_existing)
        ->first();

        // dd($data_existRef);
        // $data_existRef = Referensi::join('kop_surat', 'kop_surat.id', '=', 'referensi.fk_idkop_surat')
        // ->where('id', '=', $request->id_referensi_existing)->first();

        $nama_personil = \Session::get("personil")->nama_personil;
        $jabatan = \Session::get("personil")->posisi_penugasan;
        // dd($data_existRef);

        //taruh di variable sesuai template
        if ($data_existRef->template_surat == "a") {
            $data='
            <!-- left column -->
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Input Data- Surat</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="col-md-12">
                    <form method="POST" action="'.url("/referensi").'" enctype="multipart/form-data">
                        <input id="kopsurat" style="" type="hidden" name="kopsurat" value="'.$data_existRef->fk_idkop_surat.'">
                        <input id="template_surat" style="" type="hidden" name="template_surat" value="a">
                        <div class="form-group">
                        <input id="namaKop" style="" type="text" name="namaKop" class="form-control" placeholder="Nama Kop" value="'.$data_existRef->namakop.'">
                        </div>
                        <div class="form-group">
                        <input id="tempattanggalttd" style="" type="text" name="tempattanggalttd" class="form-control" placeholder="Tempat, Tanggal TTD" value="'.$data_existRef->tempat_tanggal_ttd.'">
                        </div>
                        <div class="form-group">
                        <input id="nosurat" style="" type="text" name="nosurat" class="form-control" placeholder="No. Surat" value="'.$data_existRef->nosurat.'">
                        </div>
                        <div class="form-group">
                        <input id="namappk" style="" type="text" name="namappk" class="form-control" placeholder="Nama PPK" value="'.$data_existRef->namappk.'">
                        </div>
                        <div class="form-group">
                        <input id="jabatanppk" type="text" name="jabatanppk" class="form-control" placeholder="Jabatan PPK" value="'.$data_existRef->jabatanppk.'">
                        </div>
                        <div class="form-group">
                        <input id="nip" type="text" name="nip" class="form-control" placeholder="NIP" value="'.$data_existRef->nip.'">
                        </div>
                        <div class="form-group">
                        <input id="namapersonil" disabled type="text" name="namapersonil" class="form-control" placeholder="Nama Personil" value="'.$nama_personil.'">
                        </div>
                        <div class="form-group">
                        <input id="jabatan" disabled type="text" name="jabatan" class="form-control" placeholder="Jabatan Personil" value="'.$jabatan.'">
                        </div>
                        <div class="form-group">
                        <input id="perusahaan" type="text" name="perusahaan" class="form-control" placeholder="Perusahaan" value="'.$data_existRef->perusahaan.'">
                        </div>
                        <div class="form-group">
                        <input id="pekerjaan" type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan" value="'.$data_existRef->pekerjaan.'">
                        </div>
                        <div class="form-group">
                        <input id="lokasi" type="text" name="lokasi" class="form-control" placeholder="Lokasi" value="'.$data_existRef->lokasi.'">
                        </div>
                        <div class="form-group">
                        <input id="nokontrak" type="text" name="nokontrak" class="form-control" placeholder="No. Kontrak" value="'.$data_existRef->nokontrak.'">
                        </div>
                        
                        <div class="form-group">
                        <label for="waktuawal">Waktu Awal</label>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="date" class="form-control" name="waktuawal" id="waktuawal" value="'.$data_existRef->waktuawal.'">
                        </div>
                        </div>

                        <div class="form-group">
                        <label for="waktuakhir">Waktu Akhir</label>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="date" class="form-control" name="waktuakhir" id="waktuakhir" value="'.$data_existRef->waktuakhir.'">
                        </div>
                        </div>

                        <div class="form-group">
                            <input type="button" name="btn_lanjut" class="btn btn-success" value="Lanjut" onclick="aksiLanjut()">
                        </div>
                    </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->
                </div>
                
            ';
        
        }else{
            $data='
            <div class="col-md-12">
                <div class="box">
                <div class="box-header">
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-check"></i> Alert!</h4>
                    Terjadi kesalahan, silahkan coba lagi.
                </div>
                </div>
                </div>
            </div>
            ';
        }

        // return variable untuk show
        return $data;
    }

    public function input_template_exist(Request $request)
    {
            $data_referensi = collect([
                "kopsurat" => $request->kopsurat,
                "template_surat" => $request->template_surat,
                "tempattanggalttd" => $request->tempattanggalttd,
                "nosurat" => $request->nosurat,
                "namappk" => $request->namappk,
                "jabatanppk" => $request->jabatanppk,
                "nip" => $request->nip,
                "nama_personil" => $request->namapersonil,
                "jabatan" => $request->jabatan,
                "perusahaan" => $request->perusahaan,
                "pekerjaan" => $request->pekerjaan,
                "lokasi" => $request->lokasi,
                "nokontrak" => $request->nokontrak,
                "waktuawal" => $request->waktuawal,
                "waktuakhir" => $request->waktuakhir,
            ]);
            // dd($data_referensi);
                // dd($data_personil);
            \Session::put('referensi', $data_referensi);
            // dd((Session::get('referensi'))->tempattanggalttd);
        
        return $request->template_surat;
    }
}
