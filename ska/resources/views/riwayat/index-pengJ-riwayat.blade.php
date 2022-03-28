@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Pengawasan Jalan
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
          <h3 class="box-title">Form Riwayat Hidup Pengawasan Jalan</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form method="POST" action="{{url('/riwayat')}}" enctype="multipart/form-data">
          @csrf
        <div class="box-body col-md-12">
            <div class="box-body col-md-12">
                <!-- <div class="form-group">
                <label for="nama">Nama Pekerjaan</label>
                <input type="text" name="namapekerjaan" class="form-control" placeholder="Input Nama Pekerjaan">
                </div> -->
                <input type="hidden" name="jenispengalaman" value="4">
                <!-- pengawasan jalan -->

                <div class="form-group" data-select2-id="49">
                <label>Posisi yang diusulkan</label>
                <select name="posisiyangdiusulkan" class="form-control" style="width: 100%;">
                @foreach ($data as $data)
                <option value="{{ $data->posisi }}">{{$data->posisi}}</option>
                @endforeach
                </select>
                </div>

                <!-- <div class="form-group">
                <label for="nama">Posisi yang diusulkan</label>
                <input type="text" name="posisiyangdiusulkan" class="form-control" placeholder="Input Posisi yang diusulkan">
                </div> -->

                <div class="form-group">
                <label for="nama">Nama Perusahaan</label>
                <input id="namaperusahaan" style="text-transform:uppercase" type="text" name="namaperusahaan" class="form-control" placeholder="Input Nama Perusahaan">
                </div>

                <div class="form-group">
                <label for="nama">Nama Personil</label>
                <input id="namapersonil" style="text-transform:uppercase" type="text" name="namapersonil" class="form-control" placeholder="Input Nama Personil">
                </div>

                <div class="form-group">
                <label for="nama">Tempat / Tanggal Lahir</label>
                <input type="text" name="namatempatanggallahir" class="form-control" placeholder="Tempat, Tanggal Bulan Tahun">
                </div>

                <div class="form-group">
                <label for="nama">Pendidikan (Lembaga Pendidikan, tempat dan tahun tamat belajar, dilampirkan rekaman ijazah</label>
                <input type="text" name="pendidikan" class="form-control" placeholder="Input Pendidikan">
                </div>

                <div class="form-group">
                <label for="nama">Pendidikan Non Formal</label>
                <input type="text" name="pendidikannonformal" class="form-control" placeholder="Input Pendidikan Non Formal">
                </div>

                <!-- <div class="form-group">
                <label for="nama">Penguasaan Bahasa Indonesia</label>
                <input type="text" name="penguasaanbahasaindonesia" class="form-control" placeholder="Input Penguasaan Bahasa Indeonesia">
                </div>

                <div class="form-group">
                <label for="nama">Penguasaan Bahasa Inggris</label>
                <input type="text" name="penguasaanbahasainggris" class="form-control" placeholder="Input Penguasaan Bahasa Inggris">
                </div> -->

                <div class="form-group" >
                <label for="file">Upload Pengalaman Kerja</label>
                <!-- <div class="custom-control custom-radio">
                  <input class="custom-control-input" type="radio" id="customRadio1" name="customRadio" value="1" checked="">
                  <label for="customRadio1" class="custom-control-label">Perencanaan Gedung</label> &nbsp; <a href="storage/template pengalaman perencanaan gedung.xlsx">Unduh Template Perencanaan Gedung</a> <br>
                  <input class="custom-control-input" type="radio" id="customRadio2" name="customRadio" value="2">
                  <label for="customRadio2" class="custom-control-label">Pengawasan Gedung</label> &nbsp; <a href="storage/template pengalaman pengawasan gedung.xlsx">Unduh Template Pengawasan Gedung</a> <br>
                  <input class="custom-control-input" type="radio" id="customRadio3" name="customRadio" value="3">
                  <label for="customRadio3" class="custom-control-label">Perencanaan Jalan</label> &nbsp; <a href="storage/template pengalaman perencanaan jalan.xlsx">Unduh Template Perencanaan Jalan</a> <br>
                  <input class="custom-control-input" type="radio" id="customRadio4" name="customRadio" value="4">
                  <label for="customRadio4" class="custom-control-label">Pengawasan Jalan</label> &nbsp; <a href="storage/template pengalaman pengawasan jalan.xlsx">Unduh Template Pengawasan Jalan</a> <br>
                  <input class="custom-control-input" type="radio" id="customRadio5" name="customRadio" value="5">
                  <label for="customRadio5" class="custom-control-label">Perencanaan Air</label> &nbsp; <a href="storage/template pengalaman perencanaan air.xlsx">Unduh Template Perencanaan Air</a> <br>
                  <input class="custom-control-input" type="radio" id="customRadio6" name="customRadio" value="6">
                  <label for="customRadio6" class="custom-control-label">Pengawasan Air</label> &nbsp; <a href="storage/template pengalaman pengawasan air.xlsx">Unduh Template Pengawasan Air</a> <br>
                </div> -->
                
                <input type="file" name="file" class="form-control">
                <p class="help-block">Format file yang di upload adalah *csv. <a href="storage/format csv.csv">Unduh format csv</a></p>
                </div>

                <div class="form-group">
                <label for="nama">Tempat, Tanggal Pembuatan</label>
                <input type="text" name="tanggalpembuatan" class="form-control" placeholder="Input Tempat, Tanggal Pembuatan">
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                    <label for="nama">Pembuat Pernyataan</label>
                    <input id="pembuatpernyataan" style="text-transform:uppercase" type="text" name="pembuatpernyataan" class="form-control" placeholder="Input Pembuat Pernyataan" disabled>
                    </div>
                </div>

                

                <div class="col-md-6">
                    <div hidden class="form-group">
                    <label for="nama">TTD Pembuat Pernyataan</label>
                    <input type="file" name="filettd_pernyataan" class="form-control">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                    <label for="nama">Menyetujui</label>
                    <input id="menyetujui" style="text-transform:uppercase" type="text" name="menyetujui" class="form-control" placeholder="Input Menyetujui">
                    </div>
                </div>
                <div class="col-md-6">
                    <div hidden class="form-group">
                    <label for="nama">TTD Menyetujui</label>
                    <input type="file" name="filettd_menyetujui" class="form-control">
                    </div>
                </div>

            </div>
        </div>
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

@endsection

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $("#namapersonil").keyup(function(){
      $("#pembuatpernyataan").val(this.value);
  });
  $("#namaperusahaan").keyup(function(){
      var value =$(this).val();
      if (value=='PT. CONCEPT DESIGN ARCHITECT') {
        $("#menyetujui").val('MOCH. YUSUF KURNIAWAN, ST.');
      }
  });

});

</script>


  
