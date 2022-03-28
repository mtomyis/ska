@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Daftar SKA
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Tables</a></li>
    <li class="active">Data tables</li>
  </ol>
</section>
    
@endsection

@section('content')

<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <!-- /.box -->

      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Data Table Tenaga Ahli</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
          <table id="example1" class="table table-bordered table-hover" style="border-color:black;">
            <thead class="bg-aqua-active color-palette" align="center">
                <tr >
                    <th>Nama</th>
                    <th>Sertifikat</th>
                    <th>Tanggal Penetapan</th>
                    <th>Masa Berlaku</th>
                    <th>Status Sertifikat</th>
                    <th>Tenggang Waktu</th>
                    <th>Keterangan</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($alls as $all) 
                
                <?php
                    $masa_berlaku = date('Y-m-d', strtotime('+1095 days', strtotime($all->tanggal_penetapan)));
                    $date=date_create($masa_berlaku);
                    $tanggal= date_format($date,"Y-m-d");
                    $awal  = date_create($tanggal);
                    $akhir = date_create();
                    $diff  = date_diff( $awal, $akhir );
                    if($awal >= $akhir){
                        $warnakolom = "bg-success";
                        $hasil = $diff->y . ' Tahun, '.$diff->m . ' Bulan, '.$diff->d . ' Hari, ';
                        $keterangan = "Berlaku";
                        $x = $diff->days;
                        $y = 31;
                        $z = 75;
                        if($x<=$y){
                            $warnakolom = "bg-danger";
                            $keterangan = "Warning";
                        }elseif($x<=$z){
                            $warnakolom = "bg-warning";
                            $keterangan = "Warning";
                        }
                    }else{
                        $warnakolom = "bg-danger";
                        $hasil = "0 Tahun, 0 Bulan, 0 Hari, ";
                        $keterangan = "Tidak Berlaku";
                    }   
                ?>
                <tr class="{{$warnakolom}}">
                    <td>{{$all->nama}}</td>
                    <td>{{$all->sertifikat}}</td>
                    <td>{{$all->tanggal_penetapan}}</td>
                    <td>{{$masa_berlaku}}</td>
                    <td>{{$all->status_sertifikat}}</td>
                    <td>{{$hasil}}</td>
                    <td>{{$keterangan}}</td>
                    <td align="center" width="10%">
                    @if ((Session::get('user'))->name == 'admin')
                        <a href="{{ url('delete/'.$all->id) }}" class="btn btn-danger btn-xs" role="button">
                        <i class="fa fa-trash-o"></i>
                        </a>
                        <a href="{{ url('edit/'.$all->id) }}" class="btn btn-info btn-xs" role="button">
                            <i class="fa fa-pencil-square"></i>
                        </a>
                    @endif
                        <?php

                        $status = "Non Elektronik";
                        $pembanding = $all->status_sertifikat;

                        if( $pembanding != $status){

                          $href =  url ('/file/download/'.$all->file);
                          $class = "btn btn-success btn-xs" ;
                          $role  = "button";
                          $class2 = "fa fa-cloud-download";   
                          
                        }else{
                          
                          $href = " ";
                          $class = " " ;
                          $role  = " ";
                          $class2 = " ";

                        }

                        ?>
                        <a href="{{$href}}" class="{{$class}}" role="{{$role}}">
                          <i class="{{$class2}}"></i>
                      </a>
                    </td>

                </tr>
            @endforeach
            </tbody>
            <tfoot class="bg-aqua-active color-palette">
                </tfoot>
          </table>
          </div>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
    
@endsection