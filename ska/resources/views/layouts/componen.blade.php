<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Tenaga Ahli CDA</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/adminlte/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/adminlte/dist/css/skins/_all-skins.min.css">

   <!-- Font Awesome -->
   <link rel="stylesheet" href="/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
   <!-- Ionicons -->
   <link rel="stylesheet" href="/adminlte/bower_components/Ionicons/css/ionicons.min.css">
   <!-- daterange picker -->
   <link rel="stylesheet" href="/adminlte/bower_components/bootstrap-daterangepicker/daterangepicker.css">
   <!-- bootstrap datepicker -->
   <link rel="stylesheet" href="/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
   <!-- iCheck for checkboxes and radio inputs -->
   <link rel="stylesheet" href="/adminlte/plugins/iCheck/all.css">
   <!-- Bootstrap Color Picker -->
   <link rel="stylesheet" href="/adminlte/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
   <!-- Bootstrap time Picker -->
   <link rel="stylesheet" href="/adminlte/plugins/timepicker/bootstrap-timepicker.min.css">
   <!-- Select2 -->
   <link rel="stylesheet" href="/adminlte/bower_components/select2/dist/css/select2.min.css">
   <!-- Theme style -->
   <link rel="stylesheet" href="/adminlte/dist/css/AdminLTE.min.css">
   <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
   <link rel="stylesheet" href="/adminlte/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <style>
        html { scroll-behavior: smooth; } 
    </style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="{{ URL::action('TenagaAhliController@tableTenagaAhli')}}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>PT</b> CDA</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>PT </b>Concept Design Architect</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="/adminlte/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              @if (Session::has('user'))
              <span class="hidden-xs">{{ (Session::get('user'))->name }}</span>
              @endif
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

              @if (Session::has('user'))
                <p>
                  {{ (Session::get('user'))->name }}
                  <small>{{ (Session::get('user'))->email }}</small>
                </p>
               @endif

              </li>
              <!-- Menu Body -->
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="{{ URL::action('UserController@logout')}}" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          @if (Session::has('user'))
                <p>
                  {{ (Session::get('user'))->name }}
                </p>
          @endif
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        @if ((Session::get('user'))->name == 'admin')
        <li class="treeview" style="height: auto;">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Sertifikat</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="{{ URL::action('TenagaAhliController@tableTenagaAhli')}}"><i class="fa fa-circle-o"></i> List SKA</a></li>
            <li><a href="{{ URL::action('TenagaKeterampilanController@tableTenagaKeterampilan')}}"><i class="fa fa-circle-o"></i> List SKT</a></li>
          </ul>
        </li>
        <li class="treeview" style="height: auto;">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Tambah Sertifikat</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="{{ URL::action('TenagaAhliController@input')}}"><i class="fa fa-circle-o"></i> Add SKA</a></li>
            <li><a href="{{ URL::action('TenagaKeterampilanController@input_keterampilan')}}"><i class="fa fa-circle-o"></i> Add SKT</a></li>
          </ul>
        </li>
        
        <li class="header">Data Riwayat Hidup</li>
        <li class="treeview" style="height: auto;">
          <a href="#">
            <i class="fa fa-files-o"></i> <span>Riwayat Hidup</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="{{ url('/riwayatpenggedung') }}"><i class="fa fa-laptop"></i> Pengawasan Gedung</a></li>
            <li><a href="{{ url('/riwayatpergedung') }}"><i class="fa fa-laptop"></i> Perencanaan Gedung</a></li>
            <li><a href="{{ url('/riwayatpengjalan') }}"><i class="fa fa-laptop"></i> Pengawasan Jalan</a></li>
            <li><a href="{{ url('/riwayatperjalan') }}"><i class="fa fa-laptop"></i> Perencanaan Jalan</a></li>
            <li><a href="{{ url('/riwayatpengair') }}"><i class="fa fa-laptop"></i> Pengawasan Air</a></li>
            <li><a href="{{ url('/riwayatperair') }}"><i class="fa fa-laptop"></i> Perencanaan Air</a></li>

            <!-- <li><a href="{{ URL::action('RiwayatController@index_posisi')}}"><i class="fa fa-th"></i> Cek Posisi Penugasan</a></li> -->
          </ul>
        </li>

        <li class="header">Kelola User</li>
        <li>
        <a href="{{ url('/akun') }}">
            <i class="fa fa-circle-o text-blue"></i> <span>Kelola Akun</span>
        </a>
        </li>
        @endif

        @if ((Session::get('user'))->name == 'user')
        <li class="treeview" style="height: auto;">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Sertifikat</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="{{ URL::action('TenagaAhliController@tableTenagaAhli')}}"><i class="fa fa-circle-o"></i> List SKA</a></li>
            <li><a href="{{ URL::action('TenagaKeterampilanController@tableTenagaKeterampilan')}}"><i class="fa fa-circle-o"></i> List SKT</a></li>
          </ul>
        </li>
        @endif

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @yield('contentHeader')

    <!-- Main content -->
    @yield('content')
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2021 <a href="https://konseparsitek.com">Concept Design Architect</a>.</strong> All rights
    reserved.
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/adminlte/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/adminlte/dist/js/demo.js"></script>
<!-- page script -->
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
    $('#example12').DataTable({
        "lengthMenu": [[3, 5, 10, 25, -1], [3, 5, 10, 25, "All"]],
        'pageLength': 3,
    });
    $('#example3').DataTable({
      'autoWidth'   : false,
        "scrollX": true
    })
  })


  $(function () {
    //Initialize Select2 Elements
    // $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd-mm-yyyy' })
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
</body>
</html>
