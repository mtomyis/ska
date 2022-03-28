@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Update Data SKA
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Edit</a></li>
    <li class="active">Form Edit</li>
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
          <h3 class="box-title">Form Edit Data SKA</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form method="POST" action="{{ url('update') }}" enctype="multipart/form-data" >
          @csrf
          <div class="box-body col-md-6">
            <input type="hidden" name="id"  value="{{ $up->id }}">
            <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" name="nama" class="form-control" value="{{ $up->nama }}">
            </div>
            <div class="form-group" >
                <label for="file">Upload Sertifikat</label>
                <input value="{{ $up->file }}" type="file" name="file" class="form-control">
  
                <p class="help-block">Format file yang di upload adalah PDF</p>
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
            <div class="form-group">
                <label for="sertifikat">Nama Sertifikat</label>
                <input list="sertifikat" type="text" name="sertifikat" class="form-control" value="{{ $up->sertifikat }}">
                <datalist id="sertifikat">
                  <option value="Arsitek">Arsitek</option>
                  <option value="Ahli Desain Interior">Ahli Desain Interior</option>
                  <option value="Ahli Arsitektur Lansekap">Ahli Arsitektur Lansekap</option>
                  <option value="Ahli Iluminasi">Ahli Iluminasi</option>
                  <option value="Ahli Teknik Bangunan Gedung">Ahli Teknik Bangunan Gedung</option>
                  <option value="Ahli Teknik Jalan">Ahli Teknik Jalan</option>
                  <option value="Ahli Teknik Jembatan">Ahli Teknik Jembatan</option>
                  <option value="Ahli Keselamatan Jalan">Ahli Keselamatan Jalan</option>
                  <option value="Ahli Teknik Terowongan">Ahli Teknik Terowongan</option>
                  <option value="Ahli Teknik Landasan Terbang">Ahli Teknik Landasan Terbang</option>
                  <option value="Ahli Teknik Jalan Rel">Ahli Teknik Jalan Rel</option>
                  <option value="Ahli Teknik Dermaga">Ahli Teknik Dermaga</option>
                  <option value="Ahli Teknik Bangunan Lepas Pantai">Ahli Teknik Bangunan Lepas Pantai</option>
                  <option value="Ahli Teknik Bendungan Besar">Ahli Teknik Bendungan Besar</option>
                  <option value="Ahli Teknik Sumber Daya Air">Ahli Teknik Sumber Daya Air</option>
                  <option value="Ahli Teknik Pembongkaran Bangunan">Ahli Teknik Pembongkaran Bangunan</option>
                  <option value="Ahli Pemeliharaan dan Perawatan Bangunan">Ahli Pemeliharaan dan Perawatan Bangunan</option>
                  <option value="Ahli Geoteknik">Ahli Geoteknik</option>
                  <option value="Ahli Geodesi">Ahli Geodesi</option>
                  <option value="Ahli Teknik Mekanikal">Ahli Teknik Mekanikal</option>
                  <option value="Ahli Teknik Sistem Tata Udara dan Refrigerasi">Ahli Teknik Sistem Tata Udara dan Refrigerasi</option>
                  <option value="Ahli Teknik Plambing dan Pompa Mekanik">Ahli Teknik Plambing dan Pompa Mekanik</option>
                  <option value="Ahli Teknik Proteksi Kebakaran">Ahli Teknik Proteksi Kebakaran</option>
                  <option value="Ahli Teknik Transportasi Dalam Gedung">Ahli Teknik Transportasi Dalam Gedung</option>
                  <option value="Ahli Teknik Tenaga Listrik">Ahli Teknik Tenaga Listrik</option>
                  <option value="Ahli Teknik Elektronika dan Telekomunikasi Dalam Gedung">Ahli Teknik Elektronika dan Telekomunikasi Dalam Gedung</option>
                  <option value="Ahli Teknik Lingkungan">Ahli Teknik Lingkungan</option>
                  <option value="Ahli Perencanaan Wilayah dan Kota">Ahli Perencanaan Wilayah dan Kota</option>
                  <option value="Ahli Teknik Sanitasi dan Limbah">Ahli Teknik Sanitasi dan Limbah</option>
                  <option value="Ahli Teknik Air Minum">Ahli Teknik Air Minum</option>
                  <option value="Ahli Manajemen Konstruksi">Ahli Manajemen Konstruksi</option>
                  <option value="Ahli Manajemen Proyek">Ahli Manajemen Proyek</option>
                  <option value="Ahli K3 Konstruksi">Ahli K3 Konstruksi</option>
                  <option value="Ahli Sistem Manajemen Mutu">Ahli Sistem Manajemen Mutu</option>
                </datalist>
              </div>
            <div class="form-group">
              <label for="tanggal_penetapan">Tanggal Penetapan</label>

              <div class="input-group  date">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input id="datepicker" type="date" name="tanggal_penetapan" value="{{ $up->tanggal_penetapan }}" class="form-control" data-inputmask="'alias': 'dd-mm-yyyy'" data-mask>
              </div>
              <!-- /.input group -->
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

