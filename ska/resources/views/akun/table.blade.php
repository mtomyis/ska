@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Daftar Akun
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
          <h3 class="box-title"><a href="{{url('/tambah_akun')}}" class="btn btn-primary">Tambah User</a></h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
          <table id="example1" class="table table-bordered table-hover" style="border-color:black;">
            <thead class="bg-aqua-active color-palette" align="center">
                <tr >
                    <th>No.</th>
                    <th>Level</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Created_At</th>
                    <th>Updated_At</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <?php $no=1; ?>
                @foreach($alls as $all) 
                <?php if($all->id == 5){
                    $warna="bg-danger";
                }else{
                    $warna="";
                }
                ?>
                <tr class="{{$warna}}">
                    <td>{{$no++}}</td>
                    <td>{{$all->name}}</td>
                    <td>{{$all->email}}</td>
                    <td>{{$all->password}}</td>
                    <td>{{$all->created_at}}</td>
                    <td>{{$all->updated_at}}</td>
                    <td align="center" width="10%">
                        <a href="{{ url('edit/'.$all->id) }}" class="btn btn-info btn-xs" role="button">
                            <i class="fa fa-pencil-square"></i>
                        </a>
                        @if ($all->id != 5)
                        <a href="{{ url('delete/'.$all->id) }}" class="btn btn-danger btn-xs" role="button">
                            <i class="fa fa-trash-o"></i>
                        </a>
                        @endif
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