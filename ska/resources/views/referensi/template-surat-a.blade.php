<style>
@page{margin-top: 43px; margin-right: 96px; margin-bottom: 43px; margin-left: 96px;}
div.font-text-template-a{
    font-size:12pt;
	font-family:"Arial",sans-serif;
    text-align: justify;
}

.tab-template-a{
    padding-left: 50px;
    font-size:12pt;
	font-family:"Arial",sans-serif;
    text-align: justify;
    width:100%;
}

</style>
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
    ?>

<!-- logo -->
<div>
<img style="align:center; width:793px; height:auto" src="storage/kop/Kejaksaan Negeri Kabupaten Gorontalo.JPG" alt="Gambar Kop Surat">
<br>
</div>

<div class="font-text-template-a" style="text-align:right">
<br>
<!-- Umboto, November 2018 -->
{{ (Session::get('referensi'))->tempattanggalttd }}
<br><br>
<br>
</div>

<div class="font-text-template-a">
<table>
    <tr><td>No</td> <td> : </td> <td>{{ (Session::get('referensi'))->nosurat }} </td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td>Hal</td> <td> : </td> <td>Surat Pengalaman Kerja</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td>Lampiran</td> <td> : </td> <td>-</td></tr>
</table>
<br>
<br>
<br>
</div>

<div class="font-text-template-a">
Yang bertandatangan dibawah ini :
<br>
<br>
</div>

<div class="font-text-template-a">
<table class="tab-template-a">
    <tr><td style="width: 30%">Nama</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->namappk }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Jabatan</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->jabatanppk }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">NIP.</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->nip }}</td></tr>
</table>
<br>
<br>
</div>

<div class="font-text-template-a">
Dengan ini menerangkan dengan sebenarnya bahwa :
<br>
<br>
</div>

<div class="font-text-template-a">
<table class="tab-template-a">
    <tr><td style="width: 30%">Nama</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('personil'))->nama_personil }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Jabatan</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('personil'))->posisi_penugasan }}</td></tr>
</table>
<br>
<br>
</div>

<div class="font-text-template-a">
Adalah Personil {{ (Session::get('referensi'))->perusahaan }} yang ditugaskan pada :
<br>
</div>

<div class="font-text-template-a">
<br>
<table class="tab-template-a">
    <tr><td style="width: 30%">Pekerjaan</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->pekerjaan }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Lokasi</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->lokasi }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Nomor Kontrak</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ (Session::get('referensi'))->nokontrak }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Tanggal</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ tglindo((Session::get('referensi'))->waktuawal) }}</td></tr>
    <tr><td style="text-align: center; line-height: 3px;"> </td></tr>
    <tr><td style="width: 30%">Waktu Penugasan</td> <td style="width: 4%"> : </td> <td style="width: 66%">{{ tglindo((Session::get('referensi'))->waktuawal) }} s/d {{ tglindo((Session::get('referensi'))->waktuakhir) }}</td></tr>
</table>
<br>
<br>
</div>

<div class="font-text-template-a">
Demikian Surat Keterangan ini diberikan untuk dapat dipergunakan sebagaimana mestinya.
<br>
<br>
<br>
<br>
</div>

<div class="font-text-template-a">
    <table style="width:100%; text-align: left;">
        <tr>
            <td style="text-align: left; width: 50%">
            </td>
            <td style="text-align: left; width: 50%">
            <strong> {{ (Session::get('referensi'))->jabatanppk }} </strong>
            </td>
        </tr>
        <tr><td style="text-align: left; line-height: 3px;"> </td></tr>
        <tr>
            <td style="text-align: left; width: 50%">
            </td>
            <td style="text-align: left; width: 50%">
            <br><br><br><br><br><br>
            </td>
        </tr>
        <tr><td style="text-align: left; line-height: 3px;"> </td></tr>
        <tr>
            <td style="text-align: left; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            </td>
            <td style="text-align: left; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            <strong> <u> {{ (Session::get('referensi'))->namappk }}. </u> </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 50%">
            </td>
            <td style="text-align: left; width: 50%; font-family: 'Book Antiqua'; font-size: 12pt;">
            NIP. {{ (Session::get('referensi'))->nip }}
            </td>
        </tr>
    </table>
</div>


<script>
window.onload = function() {
    window.print();
    }
window.onafterprint = function(){
    window.history.back();
}
</script>