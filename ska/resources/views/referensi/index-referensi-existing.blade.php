<style>
    [type=radio] { 
    position: absolute;
    opacity: 0;
    width: 0;
    height: 0;
    }

    /* IMAGE STYLES */
    [type=radio] + span {
    cursor: pointer;
    }

    /* CHECKED STYLES */
    [type=radio]:checked + span {
    outline: 4px solid #00ff00;
    background-color:#bfb;
    border-color: #4c4;
    }
</style>
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
  <div id="div_pilihexisting" class="row">
    <!-- left column -->
    <div class="col-md-12">
    <div class="box">
    <div class="box-header">
        <div class="col-md-6"><h3 class="box-title">Pilih Referensi Existing</h3></div>
        <div class="col-md-6" style="text-align: right;"><a class="btn btn-primary" href="{{url('/referensi')}}">Buat Baru</a> </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
    <table id="example3" class="display nowrap table table-bordered table-striped" style="width:100%">
        <thead>
        <tr>
            <th>Pekerjaan</th>
            <th>Perusahaan</th>
            <th>Lokasi</th>
            <th>Kop Surat</th>
            <th>Tempat, Tanggal TTD</th>
            <th>No. Surat</th>
            <th>Nama PPK</th>
            <th>Jabatan PPK</th>
            <th>NIP</th>
            <th>No. Kontrak</th>
            <th>Waktu Awal</th>
            <th>Waktu Akhir</th>
        </tr>
        </thead>
        <tbody>

        @foreach($alls as $all)
        <tr>
            <td>
            <label>
            <input type="radio" name="referensi_existing" value="{{$all->id}}" onclick="aksiPilihExisting()">
                <span href="#">{{$all->pekerjaan}}</span>
            </label>
            </td>
            <td>{{$all->perusahaan}}</td>
            <td>{{$all->lokasi}}</td>
            <td>{{$all->namakop}}</td>
            <td>{{$all->tempat_tanggal_ttd}}</td>
            <td>{{$all->nosurat}}</td>
            <td>{{$all->namappk}}</td>
            <td>{{$all->jabatanppk}}</td>
            <td>{{$all->nip}}</td>
            <td>{{$all->nokontrak}}</td>
            <td>{{$all->waktuawal}}</td>
            <td>{{$all->waktuakhir}}</td>
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
function aksiPilihExisting() {
    document.getElementById("div_inputsurat").style.display = "block";
    var referensi_existing = $("input[name='referensi_existing']:checked").val();
    // var val = $(".template_kop:checked").val();
    $.ajax({
        url: "{{ route('inputexisting') }}",
        type: 'post',
        data: {
            "_token": "{{ csrf_token() }}",
            "id_referensi_existing": referensi_existing
        },             
        success: function(data) {               
        $('#div_inputsurat').html(data);
        document.getElementById('div_inputsurat').scrollIntoView();
        console.log(data);
        }
    });
}

function aksiLanjut() {
    
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
        url: "{{ route('inputtemplate_exist') }}",
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
                
                window.location.href = "{{ url('/referensipdf_exist') }}";
                // window.print();

            }else if(data=="b"){

            }else if(data=="c"){

            }else if(data=="d"){

            }else{
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

function cubi() {
    alert("Masih dikoding dihatinya");
}

</script>
