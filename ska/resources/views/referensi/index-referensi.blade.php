@extends('layouts.componen')

@section('contentHeader')

<!-- <section class="content-header">
  <h1>
    Pengawasan Air
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Input</a></li>
    <li class="active">Form Input</li>
  </ol>
</section> -->
    
@endsection

@section('content')

<section class="content">
<div id="div_notif"></div>
  <!-- data pilih kop -->
  <div id="div_pilihkop" class="row">
    <!-- left column -->
    <div class="col-md-12">
    <div class="box">
    <div class="box-header">
        <div class="col-md-6"><h3 class="box-title">Pilih KOP Surat</h3></div>
        <div class="col-md-6" style="text-align: right;"><a class="btn btn-success" href="{{url('/existing')}}">Pilih Existing </a> </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
    <table id="example12" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Nama</th>
            <th>Gambar</th>
        </tr>
        </thead>
        <tbody>

        @foreach($alls as $all)
        <tr>
            <td>{{$all->nama}}</td>
            <td>
            <label>
                <input type="radio" name="template_kop" value="{{$all->id}}" onclick="document.getElementById('div_pilihtemplate').scrollIntoView()">
                <img id="{{$all->id}}" style="width: 700px; height: auto;" src="storage/kop/{{$all->gambar}}">
            </label>
            <!-- <img style="width: 700px; height: auto;" src="storage/kop/{{$all->gambar}}"> -->
            </td>
        </tr>
        @endforeach

        </tbody>
    </table>
    </div>
    <!-- /.box-body -->
    </div>
    <!-- /.box -->
    </div>
  </div>
  <!-- /.row -->

  <!-- data pilih template -->
  <div id="div_pilihtemplate" class="row">
    <!-- left column -->
    <div class="col-md-12">
    <div class="box">
    <div class="box-header">
        <h3 class="box-title">Pilih Template Surat</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
    <!-- scroll horizontal -->
    <style>
    [type=radio] { 
    position: absolute;
    opacity: 0;
    width: 0;
    height: 0;
    }

    /* IMAGE STYLES */
    [type=radio] + img {
    cursor: pointer;
    }

    /* CHECKED STYLES */
    [type=radio]:checked + img {
    outline: 4px solid #00ff00;
    background-color:#bfb;
    border-color: #4c4;
    }
    </style>
    
    <table style="display: block; overflow-x: auto;" cellspacing="0" width="100%">
    <tr>
        <td style="padding: 4px;">
        <label>
        <input type="radio" name="template_surat" value="template1" onclick="aksiPilihTemplate_a()">
        <img src="storage/template1.JPG">
        </label>
        </td>
        <td style="padding: 4px;">
        <label>
        <input type="radio" name="template_surat" value="template2" onclick="aksiPilihTemplate_b()">
        <img src="storage/template2.JPG">
        </label>
        </td>
        <td style="padding: 4px;">
        <label>
        <input type="radio" name="template_surat" value="template3" onclick="aksiPilihTemplate_c()">
        <img src="storage/template3.JPG">
        </label>
        </td>
        <td style="padding: 4px;">
        <label>
        <input type="radio" name="template_surat" value="template4" onclick="aksiPilihTemplate_d()">
        <img src="storage/template4.JPG">
        </label>
        </td>
    </tr>
    </table>

    </div>
    <!-- /.box-body -->
    </div>
    <!-- /.box -->
    </div>
  </div>
  <!-- /.row -->

  <!-- data pilih template -->
  <div id="div_inputsurat" class="row">
    
  </div>

  <div id="div_selesai" class="row">
  <div class="col-md-12">
    <div class="box">
        <div class="box-header" style="text-align: right;">
            <a class="btn btn-primary" href="{{url('/createriwayatpdf')}}">Selesai</a>
        </div>
    </div>
  </div>
  </div>
  <!-- /.row -->

</section>

@endsection

<script>                    
function aksiPilihTemplate_a() {
    document.getElementById("div_inputsurat").style.display = "block";
    var template_kop = $("input[name='template_kop']:checked").val();
    // var val = $(".template_kop:checked").val();
    $.ajax({
        url: "{{ route('pilihtemplate.a') }}",
        type: 'post',
        data: {
            "_token": "{{ csrf_token() }}",
            "kop_template": template_kop
        },             
        success: function(data) {               
        $('#div_inputsurat').html(data);
        document.getElementById('div_inputsurat').scrollIntoView();
        console.log(data);
        }
    });
}
function aksiPilihTemplate_b() {
    $.ajax({
        url: "{{ route('pilihtemplate.b') }}",
        type: 'post',
        data: {
            "_token": "{{ csrf_token() }}",
            "jenis_template": "template_b"
        },             
        success: function(data) {               
        $('#div_inputsurat').html(data);
        document.getElementById('div_inputsurat').scrollIntoView();
        console.log(data);
        }
    });
}
function aksiPilihTemplate_c() {
    $.ajax({
        url: "{{ route('pilihtemplate.c') }}",
        type: 'post',
        data: {
            "_token": "{{ csrf_token() }}",
            "jenis_template": "template_c"
        },             
        success: function(data) {               
        $('#div_inputsurat').html(data);
        document.getElementById('div_inputsurat').scrollIntoView();
        console.log(data);
        }
    });
}
function aksiPilihTemplate_d() {
    $.ajax({
        url: "{{ route('pilihtemplate.d') }}",
        type: 'post',
        data: {
            "_token": "{{ csrf_token() }}",
            "jenis_template": "template_d"
        },             
        success: function(data) {               
        $('#div_inputsurat').html(data);
        document.getElementById('div_inputsurat').scrollIntoView();
        console.log(data);
        }
    });
}

function aksiLagiSurat() {
    
    let kopsurat = $("#kopsurat").val();
    let template_surat = $("#template_surat").val();
    let tempattanggalttd = $("#tempattanggalttd").val();
    let nosurat = $("#nosurat").val();
    let namappk = $("#namappk").val();
    let jabatanppk = $("#jabatanppk").val();
    let nip = $("#nip").val();
    let namapersonil = $("#namapersonil").val();
    let jabatan = $("#jabatan").val();
    let perusahaan = $("#perusahaan").val();
    let pekerjaan = $("#pekerjaan").val();
    let lokasi = $("#lokasi").val();
    let nokontrak = $("#nokontrak").val();
    let waktuawal = $("#waktuawal").val();
    let waktuakhir = $("#waktuakhir").val();

    $.ajax({
        url: "{{ route('inputtemplate') }}",
        type: "post",
        data: {
            "_token": "{{ csrf_token() }}",
            "kopsurat": kopsurat,
            "template_surat": template_surat,
            "tempattanggalttd": tempattanggalttd,
            "nosurat": nosurat,
            "namappk": namappk,
            "jabatanppk": jabatanppk,
            "nip": nip,
            "namapersonil": namapersonil,
            "jabatan": jabatan,
            "perusahaan": perusahaan,
            "pekerjaan": pekerjaan,
            "lokasi": lokasi,
            "nokontrak": nokontrak,
            "waktuawal": waktuawal,
            "waktuakhir": waktuakhir,

        },
        success: function(data) {
            if (data=="a") {
                // var div='<div class=\"col-md-12 alert alert-success alert-dismissible\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">×</button><h4><i class=\"icon fa fa-check\"></i> Alert!</h4>Berhasil Menyimpan.</div>';
                // $("input[name='template_kop']").prop("checked", false);
                // $("input[name='template_surat']").prop("checked", false);
                // $("#div_notif").html(div);
                document.getElementById("div_notif").scrollIntoView();
                document.getElementById("div_inputsurat").style.display = "none";
                
                // console.log();
                
                window.location.href = "{{ url('/referensipdf') }}";
                // window.print();

            }else if(data=="b"){

            }else if(data=="c"){

            }else if(data=="d"){

            }
            else{
                $("input[name='template_kop']").prop("checked", false);
                $("input[name='template_surat']").prop("checked", false);
                $("#div_notif").html(data);
                document.getElementById("div_notif").scrollIntoView();
                document.getElementById("div_inputsurat").style.display = "none";
            }
        // console.log(data);
        }
    });
}

function aksiSaveSurat() {
    // ini nanti hapus dan langsung redirect
    let kopsurat = $("#kopsurat").val();
    let tempattanggalttd = $("#tempattanggalttd").val();
    let nosurat = $("#nosurat").val();
    let namappk = $("#namappk").val();
    let jabatanppk = $("#jabatanppk").val();
    let nip = $("#nip").val();
    let perusahaan = $("#perusahaan").val();
    let pekerjaan = $("#pekerjaan").val();
    let lokasi = $("#lokasi").val();
    let nokontrak = $("#nokontrak").val();
    let waktuawal = $("#waktuawal").val();
    let waktuakhir = $("#waktuakhir").val();

    $.ajax({
        url: "{{ route('savetemplate') }}",
        type: "post",
        data: {
            "_token": "{{ csrf_token() }}",
            "kopsurat": kopsurat,
            "tempattanggalttd": tempattanggalttd,
            "nosurat": nosurat,
            "namappk": namappk,
            "jabatanppk": jabatanppk,
            "nip": nip,
            // "namapersonil": namapersonil,
            // "jabatan": jabatan,
            "perusahaan": perusahaan,
            "pekerjaan": pekerjaan,
            "lokasi": lokasi,
            "nokontrak": nokontrak,
            "waktuawal": waktuawal,
            "waktuakhir": waktuakhir,

        },             
        success: function(data) {
            if (data=='success') {
                window.location.href = "{{ url('/createriwayatpdf') }}";
            }else{
                $("#div_notif").html(data);
                document.getElementById("div_notif").scrollIntoView();
            }
        console.log(data);
        }
    });
}

function cubi() {
    alert("Masih dikoding dihatinya");
}

</script>
