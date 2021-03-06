<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Riwayat</title>
</head>
<body>
<style type="text/css">
    #aligncenter{ text-align: center; }

    @page{margin-top: 75.8409554766px; margin-right: 56.64071358379px; margin-bottom: 56.64071358379px; margin-left: 113.2814271676px;}

    table, td, th {
        font-size: 12pt; font-family: 'Book Antiqua'; vertical-align: top; text-align: left; 
    }
    table { page-break-inside:auto }
    tr { page-break-inside:avoid; page-break-after:auto }
</style>

    <h2 style="font-family: 'Book Antiqua'; text-align: center; margin-top: 20px; font-size: 16pt;">Daftar Riwayat Hidup</h2>
    <br>
    <!-- a data personal -->
    <table style="width: 100%; text-align: justify;" >
		<tr>
			<td style="width: 4%;"> 1. </td>
			<td style="width: 45%">Posisi yang diusulkan</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->posisi_penugasan }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 2. </td>
			<td style="width: 45%">Nama Perusahaan</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->nama_perusahaan }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 3. </td>
			<td style="width: 45%">Nama Personil</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->nama_personil }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 4. </td>
			<td style="width: 45%">Tempat / Tanggal Lahir</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->tmp_tgl_lahir }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 5. </td>
			<td style="width: 45%">Pendidikan (Lembaga Pendidikan, <br> tempat dan tahun tamat belajar, <br> dilampirkan rekaman ijazah</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->pendidikan }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 6. </td>
			<td style="width: 45%">Pendidikan Non Formal</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">{{ (Session::get("personil"))->pendidikan_non }}</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 7. </td>
			<td style="width: 45%">Penguasaan Bahasa Indonesia</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">Baik</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 8. </td>
			<td style="width: 45%">Penguasaan Bahasa Inggris</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">Cukup</td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
		<tr>
			<td style="width: 4%"> 9. </td>
			<td style="width: 45%">Pengalaman Kerja</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%">Terlampir</td>
		</tr>
	</table>
    <br><br>
    <!-- z data personal -->
    <?php
    $total_hari=0;
    function tglindo($date)
    {
        if ($date == "0000-00-00") {
            $result = 'On Progress';
        } else {
            $BulanIndo = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
            $tahun = substr($date, 0, 4);
            $bulan = substr($date, 5, 2);
            $tgl   = substr($date, 8, 2);
            $result = $tgl . " " . $BulanIndo[(int)$bulan - 1] . " " . $tahun;
        }
        return $result;
    }

    foreach ($data_referensi as $all) {
        // dd($all);
    ?>
    
    <div>
    <table style="width: 100%; text-align: justify;">
        <tr>
            <td colspan="5">
                <table style="width: 100%; text-align: justify;">
                <tr style="page-break-inside:auto;">
                    <td style="width: 4%;">  </td>
                    <td colspan="4"> <strong> Tahun <?= substr($all->waktuawal,0, 4) ?> <!-- Tahun 2018 --> </strong></td>
                </tr>
                <tr>
                    <td style="width: 4%"> </td>
                    <td style="width: 4%"> a. </td>
                    <td style="width: 41%">Nama Proyek</td>
                    <td style="width: 4%"> : </td>
                    <td style="width: 47%"> {{$all->pekerjaan}} <!--Nama Proyek--> </td>
                </tr>
                <tr><td style="line-height: 3px;"> </td></tr>
                <tr>
                    <td style="width: 4%"> </td>
                    <td style="width: 4%"> b. </td>
                    <td style="width: 41%">Lokasi Proyek</td>
                    <td style="width: 4%"> : </td>
                    <td style="width: 47%"> {{$all->lokasi}} <!-- Kecamatan Banyuwangi --> </td>
                </tr>
                <tr><td style="line-height: 3px;"> </td></tr>
                </table>
            </td>
        </tr>
        
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> c. </td>
			<td style="width: 41%">Pengguna Jasa</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%"> {{$all->nama}} <!-- Dinas PU Cipta Karya dan Penataan Ruang --></td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> d. </td>
			<td style="width: 41%">Nama Perusahaan</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%"> {{$all->perusahaan}} <!-- CV. CONCEPT DESIGN ARCHITECT --></td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr style="page-break-inside:auto;">
        <!-- ini apa -->
            <td style="width: 4%"> </td>
			<td style="width: 4%"> e. </td>
			<td style="width: 41%">Uraian Tugas</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%;">
                <?php
                // $ahli = trim($userdata[7]);
                $dataahli = App\Riwayat::getPenugasan(''.(Session::get("personil"))->posisi_penugasan,''.(Session::get("personil"))->jenispengalaman); ?>
                <table style="width: 100%; text-align: justify">
                <?php foreach($dataahli as $data) { ?>
                <tr>
                <td style="width: 10%;">-</td>
                <td style="width: 90%;"><?= $data->keterangan; ?></td>
                </tr>
                <?php } ?>
                </table>
            <!-- -	Mengkoordinir anggota tim, memprakarsai penyelenggaraan rapat tim tenaga ahli serta memantau seluruh hasil.
            -	Dapat Melaksanakan collecting data sekunder seperti: data Hujan, Klimatologi, Peta Das dan lain-lain yang berkaitan dengan analisis hidrologi.
            -	Dapat Melakukan kegiatan kompilasi data dan Melakukan anaisis water balance.
            -	Dapat Menyiapkan laporan hasil analisis hidrologi beserta rekomendasi yang diperlukan team desain.
            -	Dapat Melakukan diskusi dengan instansi terkait dalam perumusan hasil analisis.
            -	Dapat Melakukan analisis data curah Hujan, Dedit Racangan, data Klimatologi serta data-data peunjang lainnya yang berkaitan dengan desain. -->
             </td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> f. </td>
			<td style="width: 41%">Waktu Pelaksanaan</td>
			<td style="width: 4%"> : </td>
            <!-- buat bisa jadi tampil seperti dibawah ini dan kemudian hitung selisih hari -->
            <?php

            // $awal = Date('Y/m/d',strtotime(trim($userdata[5])) );
            // $akhir = Date('Y/m/d',strtotime(trim($userdata[6])) );

            $awal = $all->waktuawal;
            $akhir = $all->waktuakhir;

            $tgl_awal=tglindo($awal);
            $tgl_akhir=tglindo($akhir);

            // die($akhir);
            $difawal = new DateTime($awal);
            $difakhir = new DateTime($akhir);

            // $diff  = date_diff( $difawal, $difakhir );

            $hari = $difakhir->diff($difawal)->format("%a");
            $jml_hari = $hari;
            $total_hari += $jml_hari;

            // $tanggal1 = new DateTime("2011-07-06");
            // $tanggal2 = new DateTime();
            
            // $perbedaan = $tanggal2->diff($tanggal1)->format("%a");
            
            // var_dump($total_hari);

            // var_dump($total_hari);
            // die();
            ?>
			<td style="width: 47%"> <?= $tgl_awal." - ".$tgl_akhir ?> <!-- 15 Februari 2018 ??? 12 April 2018 --></td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> g. </td>
			<td style="width: 41%">Posisi Penugasan</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%"> {{ (Session::get("personil"))->posisi_penugasan }} <!-- Ahli Geohidrologi --> </td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> h. </td>
			<td style="width: 41%">Status Kepegawaian pada Perusahaan</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%"> <?= ($all->perusahaan == (Session::get("personil"))->nama_perusahaan) ? "TETAP" : "TIDAK TETAP" ; ?> <!-- TETAP --></td>
		</tr>
        <tr><td style="line-height: 3px;"> </td></tr>
        <tr>
            <td style="width: 4%"> </td>
			<td style="width: 4%"> i. </td>
			<td style="width: 41%">Surat Referensi dari Pengguna Jasa</td>
			<td style="width: 4%"> : </td>
			<td style="width: 47%"> Terlampir <!-- - --> </td>
		</tr>
    </table>
    <br><br>
    </div>

    <?php
    }
    ?>

<table style="width: 100%; text-align: justify;" >
<tr>
    <td style="width: 4%;"> 10. </td>
    <td style="width: 45%">Status Kepegawaian</td>
    <td style="width: 4%"> : </td>
    <td style="width: 47%">Pegawai Tetap {{ (Session::get("personil"))->nama_perusahaan }}</td>
</tr>
</table>

<table style="page-break-inside:auto">
<tr style="page-break-inside:avoid; page-break-after:auto">
    <td>
    <table style="width=100%;">
    <tr><td style="width: 4%"></td></tr>
        <tr>
        <td style="text-align: justify; width: 96%">
        Daftar Riwayat hidup ini saya buat dengan sebenar ??? benarnya dan penuh rasa 
        tanggungjawab. Jika terdapat pengungkapan keterangan yang tidak benar secara 
        sengaja atau sepatutnya diduga maka saya siap untuk digugurkan dari proses 
        seleksi atau dikeluarkan jika sudah dipekerjakan.
        </td>
        </tr>
    </table>
    <br>
    <br>
    <table id="aligncenter" style="width:100%; text-align: center;">
        <tr>
            <td style="text-align: center; width: 50%">
            Menyetujui,
            </td>
            <td style="text-align: center; width: 50%">
            <!-- Banyuwangi, 03 September 2019 -->
            {{(Session::get("personil"))->tmp_tgl_pembuatan}}
            </td>
        </tr>
        <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
        <tr>
            <td style="text-align: center; width: 50%">
            <!-- PT. CONCEPT DESIGN ARCHITECT -->
            <strong> {{(Session::get("personil"))->nama_perusahaan}} </strong>
            </td>
            <td style="text-align: center; width: 50%">
            YANG MEMBUAT PERNYATAAN
            </td>
        </tr>
        <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
        <tr>
            <td style="text-align: center; width: 50%">
            <br><br><br><br>
            <?php
            // if ($filenamettd_menyetujui!="kosong") {
            // echo "<img src='uploads/ttd/$filenamettd_menyetujui' class='image' alt='Gambar TTD Menyetujui'>";
            // }else {
            //     echo "<br><br><br><br>";
            // }
            ?>
            <!-- gambar ttd -->
            </td>
            <td style="text-align: center; width: 50%">
            <br><br><br><br>
            <!-- gambar ttd -->
            <?php
            // if ($filenamettd_pernyataan!="kosong") {
            // echo "<img src='uploads/ttd/$filenamettd_pernyataan' class='image' alt='Gambar TTD Pernyataan'>";
            // }else {
            //     echo "<br><br><br><br>";
            // }
            ?>
            </td>
        </tr>
        <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
        <tr>
            <td style="text-align: center; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            <strong> <u> {{(Session::get("personil"))->menyetujui}} <!-- MOCH. YUSUF KURNIAWAN, ST. --> </u> </strong>
            </td>
            <td style="text-align: center; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            <!-- <strong> MOCH. YUSUF KURNIAWAN, ST. </strong> -->
            <strong> <u> {{(Session::get("personil"))->nama_personil}} <!-- MOCH. YUSUF KURNIAWAN, ST. --> </u> </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            Direktur
            </td>
        </tr>
    </table>

    </td>
</tr>
</table>

<div style="page-break-before: always;">
<br>
<table>
<tr>
<td>
<?php
// $DAYS_IN_WEEK = 7; 
// Function to find  
// year, week, days 
// function find($number_of_days=200) 
// { 
//     global $DAYS_IN_WEEK; 
//     $year; $week; $days; 
      
//     // Assume that years  
//     // is of 365 days 
//     $year = (int)($number_of_days / 365); 
//     $week = (int)(($number_of_days % 365) / 
//                   $DAYS_IN_WEEK); 
//     $days = ($number_of_days % 365) % 
//              $DAYS_IN_WEEK; 
//     echo("years = " . $year .  
//          "\nweeks = " . $week .  
//          "\ndays = " . $days); 
// }
// $total_hari=200;

$tahun=(int)($total_hari/365);
$bulan=(int)(($total_hari % 365) / 30);
$hari= (int)($total_hari % 365) % 30;

// $number_of_days = 200;
// find($number_of_days);
?>
Jumlah Hari : {{$total_hari}} <br>
Total Pengalaman : {{$tahun}} Tahun, {{$bulan}} Bulan, {{$hari}} Hari

</td>
</tr>
</table>
</div>

    <!-- Surat Kesanggupan -->
<!-- <div style="page-break-before: always;">
<br>
<table>
<tr>
<td>

</td>
</tr>
</table>
</div> -->

</body>
<script type="text/javascript">
    window.onload = function() {window.print();}
</script>
</html>

<!-- file ttd ditarus disini ketika nama peruhsanahan  itu ,maka else if -->