@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Input Data SKT
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Input</a></li>
    <li class="active">Form Input</li>
  </ol>
</section>
    
@endsection

@section('content')

<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Form Input Data SKT</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form method="POST" action="{{route('tenagaKeterampilan.add')}}" enctype="multipart/form-data" >
          @csrf
          <div class="box-body col-md-6">
            <div class="box-body col-md-12">
            <div class="form-group">
              <label for="nama">Nama</label>
              <input type="text" name="nama" class="form-control" placeholder="Nama Tenaga Keterampilan">
            </div>
            </div>
            <div class="box-body col-md-12">
            <div class="form-group" >
              <label for="file">Upload Sertifikat</label>
              <input type="file" name="file" class="form-control">

              <p class="help-block">Format file yang di upload adalah PDF</p>
            </div>
            </div>
            {{-- <div class="form-group">
              <label for="status_sertifikat">Status sertifikat</label>
              <select class="form-control select2" style="width: 100%;" name="status_sertifikat">
                <option selected="selected">Elektronik</option>
                <option>Non Elektronik</option>
              </select>
            </div> --}}
            
          </div>

          <div class="box-body col-md-6">

            <div class="box-body col-md-8">
              <div class="form-group ">
                <label>Nama Setifikat</label>
                <input list="sertifikat" name="nama_sertifikat" class="form-control" placeholder="Pilih Nama Sertifikat">
                    <datalist id="sertifikat">
                     <option value="Juru Gambar atau Draftman - Arsitektur">Juru Gambar atau Draftman - Arsitektur</option>
                     <option value="Tukang Pasang Bata atau Dinding atau Bricklayer (Tk. Bata)">Tukang Pasang Bata atau Dinding atau Bricklayer (Tk. Bata)</option>
                     <option value="Tukang Pasang Batu atau Tukang Bangunan Umum atau Stone Masonry">Tukang Pasang Batu atau Tukang Bangunan Umum atau Stone Masonry</option>
                     <option value="Tukang Plesteran atau Plasterer atau Solid Plaster">Tukang Plesteran atau Plasterer atau Solid Plaster</option>
                     <option value="Tukang Pasang Keramik ( Lantai dan Dinding )">Tukang Pasang Keramik ( Lantai dan Dinding )</option>
                     <option value="Tukang Pasang Lantai dan Tegel atau Ubin atau Marmer">Tukang Pasang Lantai dan Tegel atau Ubin atau Marmer</option>
                     <option value="Tukang Kayu atau Carpenter(termasuk kayu bangunan)">Tukang Kayu atau Carpenter(termasuk kayu bangunan)</option>
                     <option value="Tukang Pasang Plafon  atau  Ceiling Fixer  atau  Ceiling Fixing )">Tukang Pasang Plafon  atau  Ceiling Fixer  atau  Ceiling Fixing )</option>
                     <option value="Tukang Cat Bangunan">Tukang Cat Bangunan</option>
                     <option value="Tukang Taman  atau  Landscape">Tukang Taman  atau  Landscape</option>
                     <option value="Pelaksana Lapangan Pekerjaan Plambing">Pelaksana Lapangan Pekerjaan Plambing</option>
                     <option value="Supervisor Perawatan Gedung Bertingkat">Supervisor Perawatan Gedung Bertingkat</option>
                     <option value="Tukang Pelitur Kayu">Tukang Pelitur Kayu</option>
                     <option value="Tukang Kusen Pintu dan Jendela Bertingkat">Tukang Kusen Pintu dan Jendela Bertingkat</option>
                     <option value="Pelaksana Lapangan Pekerjaan Perumahan dan Gedung">Pelaksana Lapangan Pekerjaan Perumahan dan Gedung</option>
                     <option value="Pelaksana Lapangan Pekerjaan Finishing Bangunan Gedung Bertingkat Tinggi">Pelaksana Lapangan Pekerjaan Finishing Bangunan Gedung Bertingkat Tinggi</option>
                     <option value="Pelaksana Bangunan Gedung atau Pekerjaan Gedung">Pelaksana Bangunan Gedung atau Pekerjaan Gedung</option>
                     <option value="Pelaksana Bangunan Perumahan atau Permukiman">Pelaksana Bangunan Perumahan atau Permukiman</option>
                     <option value="Pengawas Bangunan Gedung">Pengawas Bangunan Gedung</option>
                     <option value="Pengawas Bangunan Perumahan">Pengawas Bangunan Perumahan</option>
                     <option value="Pelaksana Penata Taman">Pelaksana Penata Taman</option>
                     <option value="Juru Ukur Kuantitas Bangunan Gedung">Juru Ukur Kuantitas Bangunan Gedung</option>
                     <option value="Pengawas Mutu Pelaksanaan Kontruksi Bangunan Gedung">Pengawas Mutu Pelaksanaan Kontruksi Bangunan Gedung</option>
                     <option value="Penata Taman  atau  Landscape">Penata Taman  atau  Landscape</option>
                     <option value="Pelaksana Madya Perawatan Bangunan Gedung">Pelaksana Madya Perawatan Bangunan Gedung</option>
                     <option value="Pengawas Tukang Cat Bangunan">Pengawas Tukang Cat Bangunan</option>
                     <option value="Pembantu Pelaksana Pemasangan Plafon">Pembantu Pelaksana Pemasangan Plafon</option>
                     <option value="Teknisi Kaca">Teknisi Kaca</option>
                     <option value="Pemasang Dinding Partisi">Pemasang Dinding Partisi</option>
                     <option value="Juru Gambar atau  Draftman – Sipil">Juru Gambar atau  Draftman – Sipil</option>
                     <option value="Juru Ukur atau Teknisi Survey Pemetaan">Juru Ukur atau Teknisi Survey Pemetaan</option>
                     <option value="Teknisi atau Asisten Laboratorium Jalan">Teknisi atau Asisten Laboratorium Jalan</option>
                     <option value="Teknisi  atau  Asisten Laboratorium Beton">Teknisi  atau  Asisten Laboratorium Beton</option>
                     <option value="Teknisi atau Asisten Laboratorium Mekanika Tanah">Teknisi atau Asisten Laboratorium Mekanika Tanah</option>
                     <option value="Teknisi Laboratorium Aspal">Teknisi Laboratorium Aspal</option>
                     <option value="Operator Alat Penyelidikan Tanah atau Soil Investigation Operator">Operator Alat Penyelidikan Tanah atau Soil Investigation Operator</option>
                     <option value="Tukang Pekerjaan Pondasi atau Foundation Work">Tukang Pekerjaan Pondasi atau Foundation Work</option>
                     <option value="Tukang Pekerjaan Tanah atau Earthmoving">Tukang Pekerjaan Tanah atau Earthmoving</option>
                     <option value="Tukang Besi Beton (Barbender atau Bar Bending)">Tukang Besi Beton (Barbender atau Bar Bending)</option>
                     <option value="Tukang Cor Beton (Concetor atau Concrete Operation)">Tukang Cor Beton (Concetor atau Concrete Operation)</option>
                     <option value="Tukang Pasang Perancah atau Formworker atau Formwork">Tukang Pasang Perancah atau Formworker atau Formwork</option>
                     <option value="Tukang Pasang Scafolding atau Scaffolder atau Scaffolding">Tukang Pasang Scafolding atau Scaffolder atau Scaffolding</option>
                     <option value="Tukang Pasang Pipa Gas  atau  Gas Pipe Fitter">Tukang Pasang Pipa Gas  atau  Gas Pipe Fitter</option>
                     <option value="Tukang Perkerasan Jalan atau Paving">Tukang Perkerasan Jalan atau Paving</option>
                     <option value="Tukang Pasang Kontruksi Rig atau Pilling Rigger atau Rigger (belum ada SKKNI belum bisa cetak belakang)">Tukang Pasang Kontruksi Rig atau Pilling Rigger atau Rigger (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Tukang Boring atau Boring and Driving (belum ada SKKNI belum bisa cetak belakang)">Tukang Boring atau Boring and Driving (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Tukang Pekerjaan Baja">Tukang Pekerjaan Baja</option>
                     <option value="Pekerja Aspal Jalan">Pekerja Aspal Jalan</option>
                     <option value="Mandor Produksi Campuran Aspal Panas">Mandor Produksi Campuran Aspal Panas</option>
                     <option value="Mandor Perkerasan Jalan">Mandor Perkerasan Jalan</option>
                     <option value="Teknisi Pekerjaan Jalan dan Jembatan">Teknisi Pekerjaan Jalan dan Jembatan</option>
                     <option value="Juru Ukur Kuantitas Pekerjaan Jalan dan Jembatan">Juru Ukur Kuantitas Pekerjaan Jalan dan Jembatan</option>
                     <option value="Tukang Perancah Besi">Tukang Perancah Besi</option>
                     <option value="Tukang Kontruksi Baja dan Plat">Tukang Kontruksi Baja dan Plat</option>
                     <option value="Pelaksana Lapangan Pekerjaan Jalan">Pelaksana Lapangan Pekerjaan Jalan</option>
                     <option value="Pelaksana Lapangan Pekerjaan Jembatan">Pelaksana Lapangan Pekerjaan Jembatan</option>
                     <option value="Pelaksana Lapangan Pekerjaan Jaringan Irigasi">Pelaksana Lapangan Pekerjaan Jaringan Irigasi</option>
                     <option value="Pelaksana Saluran Irigasi">Pelaksana Saluran Irigasi</option>
                     <option value="Pelaksana Bangunan Irigasi">Pelaksana Bangunan Irigasi</option>
                     <option value="Pelaksana Bendungan">Pelaksana Bendungan</option>
                     <option value="Pelaksana Terowongan">Pelaksana Terowongan</option>
                     <option value="Teknisi Perhitungan Kuantitas Pekerjaan Sumber Daya Air">Teknisi Perhitungan Kuantitas Pekerjaan Sumber Daya Air</option>
                     <option value="Pengawas Bendungan">Pengawas Bendungan</option>
                     <option value="Pengawas Bangunan Irigasi">Pengawas Bangunan Irigasi</option>
                     <option value="Pengawas Saluran Irigasi">Pengawas Saluran Irigasi</option>
                     <option value="Pengawas Terowongan">Pengawas Terowongan</option>
                     <option value="Pengawas Lapangan Pekerjaan Jalan">Pengawas Lapangan Pekerjaan Jalan</option>
                     <option value="Pengawas Lapangan Pekerjaan Jembatan">Pengawas Lapangan Pekerjaan Jembatan</option>
                     <option value="Teknisi Pengerukan">Teknisi Pengerukan</option>
                     <option value="Teknisi Survey Teknik Sipil (belum ada SKKNI belum bisa cetak belakang)">Teknisi Survey Teknik Sipil (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Pelaksana Pekerjaan Jembatan">Pelaksana Pekerjaan Jembatan</option>
                     <option value="Pelaksana Pekerjaan Jalan">Pelaksana Pekerjaan Jalan</option>
                     <option value="Kepala Pengawas Pekerjaan Jalan dan Jembatan">Kepala Pengawas Pekerjaan Jalan dan Jembatan</option>
                     <option value="Juru Hitung Kuantitas">Juru Hitung Kuantitas</option>
                     <option value="Juru Ukur Pekerjaan Jalan  atau  Jembatan">Juru Ukur Pekerjaan Jalan  atau  Jembatan</option>
                     <option value="Teknisi Penghitung Kuantitas Pekerjaan Jalan atau Jembatan">Teknisi Penghitung Kuantitas Pekerjaan Jalan atau Jembatan</option>
                     <option value="Steel Erector of Bridge">Steel Erector of Bridge</option>
                     <option value="Pelaksana Bangunan Gedung atau Pekerjaan Gedung">Pelaksana Bangunan Gedung atau Pekerjaan Gedung</option>
                     <option value="Pelaksana Lapangan Pekerjaan Gedung">Pelaksana Lapangan Pekerjaan Gedung</option>
                     <option value="Tukang Kayu Bekisting">Tukang Kayu Bekisting</option>
                     <option value="Tukang Pasang Beton Pra Cetak">Tukang Pasang Beton Pra Cetak</option>
                     <option value="Tukang Rangka Aluminium">Tukang Rangka Aluminium</option>
                     <option value="Mandor Pemasangan Rangka Atap Baja Ringan">Mandor Pemasangan Rangka Atap Baja Ringan</option>
                     <option value="Mandor Pemasangan Rangka Baja Jembatan">Mandor Pemasangan Rangka Baja Jembatan</option>
                     <option value="Pelaksana Lapangan Pekerjaan Pemasangan Jembatan Rangka Baja">Pelaksana Lapangan Pekerjaan Pemasangan Jembatan Rangka Baja</option>
                     <option value="Juru Gambar Pekerjaan Jalan dan Jembatan">Juru Gambar Pekerjaan Jalan dan Jembatan</option>
                     <option value="Tukang Bekisting (Acuan) dan Perancah Bidang Sumber Daya Air">Tukang Bekisting (Acuan) dan Perancah Bidang Sumber Daya Air</option>
                     <option value="Mandor Pekerjaan Perkerasan Aspal">Mandor Pekerjaan Perkerasan Aspal</option>
                     <option value="Mandor Tukang Pasang Beton Precast">Mandor Tukang Pasang Beton Precast</option>
                     <option value="Asisten Teknisi Laboratorium Jalan (Campuran Beton Beraspal)">Asisten Teknisi Laboratorium Jalan (Campuran Beton Beraspal)</option>
                     <option value="Asisten Teknisi Laboratorium Beton">Asisten Teknisi Laboratorium Beton</option>
                     <option value="Asisten Teknisi Laboratorium Mekanika Tanah">Asisten Teknisi Laboratorium Mekanika Tanah</option>
                     <option value="Teknisi Geoteknik">Teknisi Geoteknik</option>
                     <option value="Juru Gambar atau Draftman-Mekanikal">Juru Gambar atau Draftman-Mekanikal</option>
                     <option value="Operator Buldozer">Operator Buldozer</option>
                     <option value="Operator Motor Grader">Operator Motor Grader</option>
                     <option value="Operator Mesin Excavator">Operator Mesin Excavator</option>
                     <option value="Operator Tangga Intake Dam">Operator Tangga Intake Dam</option>
                     <option value="Operator Road Roller  atau  Road Roller Paver Operator">Operator Road Roller  atau  Road Roller Paver Operator</option>
                     <option value="Operator Wheel Loader">Operator Wheel Loader</option>
                     <option value="Operator Crawler Crane">Operator Crawler Crane</option>
                     <option value="Operator Rough Terrain Crane">Operator Rough Terrain Crane</option>
                     <option value="Operator Truck Mounted Crane">Operator Truck Mounted Crane</option>
                     <option value="Operator Tower Crane">Operator Tower Crane</option>
                     <option value="Operator Wheel Crane">Operator Wheel Crane</option>
                     <option value="Operator Backhoe">Operator Backhoe</option>
                     <option value="Operator Mesin Pemancang Tiang atau Pile Hammer Operator">Operator Mesin Pemancang Tiang atau Pile Hammer Operator</option>
                     <option value="Operator Mobil Pengaduk Beton">Operator Mobil Pengaduk Beton</option>
                     <option value="Operator Crawler Tractor Bulldozer">Operator Crawler Tractor Bulldozer</option>
                     <option value="Operator Dump Truck">Operator Dump Truck</option>
                     <option value="Operator Forklift">Operator Forklift</option>
                     <option value="Operator Specialized Equipment Plant (belum ada SKKNI belum bisa cetak belakang)">Operator Specialized Equipment Plant (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Operator Mobil Elevating Work Platform (belum ada SKKNI belum bisa cetak belakang)">Operator Mobil Elevating Work Platform (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Operator Concrete Pump Equipment">Operator Concrete Pump Equipment</option>
                     <option value="Operator Slinging & Rigging Operator (belum ada SKKNI belum bisa cetak belakang">Operator Slinging & Rigging Operator (belum ada SKKNI belum bisa cetak belakang</option>
                     <option value="Operator Mesin Bor">Operator Mesin Bor</option>
                     <option value="Operator Mesin Bubut">Operator Mesin Bubut</option>
                     <option value="Mekanik Alat-alat Berat">Mekanik Alat-alat Berat</option>
                     <option value="Tukang Las  atau  Welder  atau  Gas dan Electric Welder">Tukang Las  atau  Welder  atau  Gas dan Electric Welder</option>
                     <option value="Tukang Bubut atau Mesin Perkakas (belum ada SKKNI belum bisa cetak belakang)">Tukang Bubut atau Mesin Perkakas (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Operator Mesin Pencampur Aspal">Operator Mesin Pencampur Aspal</option>
                     <option value="Operator Aspal Paver  atau  Operator Mesin Penggelar Aspal">Operator Aspal Paver  atau  Operator Mesin Penggelar Aspal</option>
                     <option value="Operator Mesin Penyemprot Aspal">Operator Mesin Penyemprot Aspal</option>
                     <option value="Pelaksana Produksi Hotmix">Pelaksana Produksi Hotmix</option>
                     <option value="Pelaksana Pekerjaan Jalan atau Sheep Foot Vibrating Compactor Operator">Pelaksana Pekerjaan Jalan atau Sheep Foot Vibrating Compactor Operator</option>
                     <option value="Juru Las Oxytetylene">Juru Las Oxytetylene</option>
                     <option value="Operator Mesin Gergaji Presisi (belum ada SKKNI belum bisa cetak belakang)">Operator Mesin Gergaji Presisi (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Operator Mesin Derek">Operator Mesin Derek</option>
                     <option value="Tukang Pasang Pipa">Tukang Pasang Pipa</option>
                     <option value="Tukang Las Konstruksi Plat dan Pipa">Tukang Las Konstruksi Plat dan Pipa</option>
                     <option value="Tukang Las MIG Posisi Bawah Tangan (belum ada SKKNI belum bisa cetak belakang)">Tukang Las MIG Posisi Bawah Tangan (belum ada SKKNI belum bisa cetak belakang)</option>
                     <option value="Tukang Las TIG Posisi Bawah Tangan">Tukang Las TIG Posisi Bawah Tangan</option>
                     <option value="Operator Mesin Bubut Kayu">Operator Mesin Bubut Kayu</option>
                     <option value="Operator Pengeboran Minyak">Operator Pengeboran Minyak</option>
                     <option value="Pelaksana Lapangan Pekerjaan ME Bangunan Gedung Bertingkat Tinggi">Pelaksana Lapangan Pekerjaan ME Bangunan Gedung Bertingkat Tinggi</option>
                     <option value="Pelaksana Lapangan Pekerjaan Setting Out Bangunan Gedung Bertingkat">Pelaksana Lapangan Pekerjaan Setting Out Bangunan Gedung Bertingkat</option>
                     <option value="Operator Mesin Grader">Operator Mesin Grader</option>
                     <option value="Operator Mesin Pemecah Batu">Operator Mesin Pemecah Batu</option>
                     <option value="Pelaksana Perawatan Instalasi Sistem Transportasi Vertikal Dalam Gedung">Pelaksana Perawatan Instalasi Sistem Transportasi Vertikal Dalam Gedung</option>
                     <option value="Concrete Paver Operator ( Operator Mesin Penghampar Beton Semen )">Concrete Paver Operator ( Operator Mesin Penghampar Beton Semen )</option>
                     <option value="Operator Cold Milling Plant atau Machine">Operator Cold Milling Plant atau Machine</option>
                     <option value="Tukang Las Listrik">Tukang Las Listrik</option>
                     <option value="Mekanik Tower Crane">Mekanik Tower Crane</option>
                     <option value="Operator Batching Plant">Operator Batching Plant</option>
                     <option value="Mekanik Campuran Aspal Panas">Mekanik Campuran Aspal Panas</option>
                     <option value="Mekanik Heating Ventilation dan Air Condition (HVAC)">Mekanik Heating Ventilation dan Air Condition (HVAC)</option>
                     <option value="Operator Gondola Pada Bangunan Gedung">Operator Gondola Pada Bangunan Gedung</option>
                     <option value="Teknisi Fire Alarm">Teknisi Fire Alarm</option>
                     <option value="Mekanik Kapal Keruk">Mekanik Kapal Keruk</option>
                     <option value="Mekanik Engine Alat Berat">Mekanik Engine Alat Berat</option>
                     <option value="Tenisi Instalasi Penerangan dan Daya Phase Satu">Tenisi Instalasi Penerangan dan Daya Phase Satu</option>
                     <option value="Tenisi Instalasi Penerangan dan Daya Phase Tiga">Tenisi Instalasi Penerangan dan Daya Phase Tiga</option>
                     <option value="Teknisi Instalasi Sistem Penangkal Petir">Teknisi Instalasi Sistem Penangkal Petir</option>
                     <option value="Teknisi Instalasi Kontrol Terprogram ( Berbasis PLC )">Teknisi Instalasi Kontrol Terprogram ( Berbasis PLC )</option>
                     <option value="Teknisi Instalasi Otomasi Industri">Teknisi Instalasi Otomasi Industri</option>
                     <option value="Teknisi Instalasi Motor Listrik, Kontrol dan Instrumen">Teknisi Instalasi Motor Listrik, Kontrol dan Instrumen</option>
                     <option value="Teknisi Instalasi Alat Pengukur dan Pembatas ( APP )">Teknisi Instalasi Alat Pengukur dan Pembatas ( APP )</option>
                     <option value="Teknisi Instalasi Jaringan Tegangan Rendah (JTR)">Teknisi Instalasi Jaringan Tegangan Rendah (JTR)</option>
                     <option value="Teknisi Instalasi Jaringan Tegangan Menengah (JTM)">Teknisi Instalasi Jaringan Tegangan Menengah (JTM)</option>
                     <option value="Pelaksana Plambing atau Pekerjaan Plambing">Pelaksana Plambing atau Pekerjaan Plambing</option>
                     <option value="Pengawas Plambing atau Pekerjaan Pelambing">Pengawas Plambing atau Pekerjaan Pelambing</option>
                     <option value="Juru Gambar atau Draftman-Tata Lingkungan">Juru Gambar atau Draftman-Tata Lingkungan</option>
                     <option value="Tukang Sanitary">Tukang Sanitary</option>
                     <option value="Tukang Pipa Air  atau  Plumber">Tukang Pipa Air  atau  Plumber</option>
                     <option value="Tukang Pipa Gas">Tukang Pipa Gas</option>
                     <option value="Tukang Pipa Bangunan">Tukang Pipa Bangunan</option>
                     <option value="Tukang Filter Pipa">Tukang Filter Pipa</option>
                     <option value="Juru Pengeboran Air Tanah">Juru Pengeboran Air Tanah</option>
                     <option value="Pelaksana Perpipaan Air Bersih">Pelaksana Perpipaan Air Bersih</option>
                     <option value="Pelaksana Pembuatan Fasilitas Sampah dan Limbah">Pelaksana Pembuatan Fasilitas Sampah dan Limbah</option>
                     <option value="Pelaksana Pengeboran Air Tanah">Pelaksana Pengeboran Air Tanah</option>
                     <option value="Pengawas Perpipaan Air Bersih">Pengawas Perpipaan Air Bersih</option>
                     <option value="Pengawas Pengeboran Air Tanah">Pengawas Pengeboran Air Tanah</option>
                     <option value="Tukang Plambing">Tukang Plambing</option>
                     <option value="Mandor Plambing">Mandor Plambing</option>
                     <option value="Pelaksana Pengujian Kualitas Air Minum SPAM">Pelaksana Pengujian Kualitas Air Minum SPAM</option>
                     <option value="Pelaksana Pemasangan Pintu Air">Pelaksana Pemasangan Pintu Air</option>
                     <option value="Pelaksana Lapangan Perpipaan Air Madya">Pelaksana Lapangan Perpipaan Air Madya</option>
                     <option value="Pelaksana Lapangan TK II Pekerjaan Perpipaan">Pelaksana Lapangan TK II Pekerjaan Perpipaan</option>
                     <option value="Pelaksana Pemasangan Pipa Leachate (Lindo dan Gas di TPA)">Pelaksana Pemasangan Pipa Leachate (Lindo dan Gas di TPA)</option>
                     <option value="Pelaksana Pekerjaan Bangunan Limbah Permukiman">Pelaksana Pekerjaan Bangunan Limbah Permukiman</option>
                     <option value="Pelaksana Pekerjaan Lapisan Kedap Air Ditempat Pemproses TPA">Pelaksana Pekerjaan Lapisan Kedap Air Ditempat Pemproses TPA</option>
                     <option value="Teknisi Sondir">Teknisi Sondir</option>
                     <option value="Teknisi Geologi Teknik">Teknisi Geologi Teknik</option>
                     <option value="Estimator Biaya Jalan">Estimator Biaya Jalan</option>
                     <option value="Quantity Surveyor">Quantity Surveyor</option>
                     <option value="Mandor Tukang Batu  atau  Bata  atau  Beton">Mandor Tukang Batu  atau  Bata  atau  Beton</option>
                     <option value="Mandor Tukang Kayu">Mandor Tukang Kayu</option>
                     <option value="Mandor Batu Belah">Mandor Batu Belah</option>
                     <option value="Mandor Tanah">Mandor Tanah</option>
                     <option value="Mandor Besi  atau  Pembesian  atau  Penulangan Beton">Mandor Besi  atau  Pembesian  atau  Penulangan Beton</option>
                 </datalist>
              </div>
            </div>
            <div class="box-body col-md-4">
              <div class="form-group ">
                <label>Tingkatan</label>
                <select class="form-control" name="tingkatan">
                  <option default value="">Pilih Kelas</option>
                  <option value="Kelas I">Kelas I</option>
                  <option value="Kelas II">Kelas II</option>
                  <option value="Kelas III">Kelas III</option>
                </select>
              </div>
            </div>

            <div class="box-body col-md-12">
            <div class="form-group">
              <label for="tanggal_penetapan">Tanggal Penetapan</label>

              <div class="input-group  date">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input id="datepicker" type="date" name="tanggal_penetapan" placeholder="Tanggal Penetapan" class="form-control" data-inputmask="'alias': 'dd-mm-yyyy'" data-mask>
              </div>
              <!-- /.input group -->
            </div>
            </div>
            
            
          </div>
          <!-- /.box-body -->

          <div class="box-footer">
            <button type="submit" value="Add Data" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
      <!-- /.box -->
    </div>
    <!--/.col (right) -->
  </div>
  <!-- /.row -->

</section>

<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })


  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd-mm-yyyy', { 'placeholder': 'dd-mm-yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm-dd-yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
  
</script>
    
@endsection

