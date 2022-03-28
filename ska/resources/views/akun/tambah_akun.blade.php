@extends('layouts.componen')

@section('contentHeader')

<section class="content-header">
  <h1>
    Buat Akun
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
  <div class="row col-md-6">
    <div class="col-xs-12">
      <!-- /.box -->
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Form tambah akun</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
        <form method="POST" action="{{route('user.add')}}">
      @csrf
      <div class="form-group ">
        <label>Level</label>
        <select class="form-control" name="name">
            <option value="admin">Administrator</option>
            <option value="user">User</option>
        </select>
        </div>
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email" name="email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Retype password" name="cpassword">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Simpan</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
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