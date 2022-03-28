<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Riwayat extends Model
{
    protected $table = "posisi_penugasan";

    public static function getPenugasan($posisi,$jenispengalaman) {
        if ($jenispengalaman=="1") {
            # Perencanaan gedung
            $query = DB::table('posisi_penugasan')
            ->join('perencanaan_gedung', 'perencanaan_gedung.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('perencanaan_gedung.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }elseif($jenispengalaman=="2") {
            # pengawasan gedung
            $query = DB::table('posisi_penugasan')
            ->join('pengawasan_gedung', 'pengawasan_gedung.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('pengawasan_gedung.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }elseif($jenispengalaman=="3") {
            # Perencanaan jalan
            $query = DB::table('posisi_penugasan')
            ->join('perencanaan_jalan', 'perencanaan_jalan.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('perencanaan_jalan.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }elseif($jenispengalaman=="4") {
            # pengawasan jalan
            $query = DB::table('posisi_penugasan')
            ->join('pengawasan_jalan', 'pengawasan_jalan.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('pengawasan_jalan.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }elseif($jenispengalaman=="5") {
            # Perencanaan air
            $query = DB::table('posisi_penugasan')
            ->join('perencanaan_air', 'perencanaan_air.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('perencanaan_air.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }elseif($jenispengalaman=="6") {
            # pengawasan air
            $query = DB::table('posisi_penugasan')
            ->join('pengawasan_air', 'pengawasan_air.fk_idposisi_penugasan', '=', 'posisi_penugasan.id')
            ->select('pengawasan_air.keterangan as keterangan')->where('posisi_penugasan.posisi', '=', $posisi)
            ->get();
        }
        return $query;
    }

    public static function getPengawasan_Gedung() {
        $data = DB::table('pengawasan_gedung')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'pengawasan_gedung.fk_idposisi_penugasan')
        ->groupBy('pengawasan_gedung.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }
    public static function getPerencanaan_Gedung() {
        $data = DB::table('perencanaan_gedung')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'perencanaan_gedung.fk_idposisi_penugasan')
        ->groupBy('perencanaan_gedung.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }

    public static function getPengawasan_Jalan() {
        $data = DB::table('pengawasan_jalan')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'pengawasan_jalan.fk_idposisi_penugasan')
        ->groupBy('pengawasan_jalan.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }
    public static function getPerencanaan_Jalan() {
        $data = DB::table('perencanaan_jalan')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'perencanaan_jalan.fk_idposisi_penugasan')
        ->groupBy('perencanaan_jalan.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }

    public static function getPengawasan_Air() {
        $data = DB::table('pengawasan_air')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'pengawasan_air.fk_idposisi_penugasan')
        ->groupBy('pengawasan_air.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }
    public static function getPerencanaan_Air() {
        $data = DB::table('perencanaan_air')
        ->join('posisi_penugasan', 'posisi_penugasan.id', '=', 'perencanaan_air.fk_idposisi_penugasan')
        ->groupBy('perencanaan_air.fk_idposisi_penugasan')
        ->orderBy('posisi_penugasan.id', 'asc')
        ->get();
        return $data;
    }

}
