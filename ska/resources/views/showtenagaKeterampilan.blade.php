<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Show Tenaga Keterampilan</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>All Tenaga Keterampilan</h1>
                    <table class="table table-striped table-bordered table-hover">
                        <thead class="thead-dark">
                            <tr>
                                <th>Id</th>
                                <th>Nama</th>
                                <th>Sertifikat</th>
                                <th>Masa Berlaku</th>
                                <th>Status Sertifikat</th>
                                <th>Tenggang Waktu</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($alls as $all)
                            
                                <tr class="{{$all->indikator}}">
                                    <td>{{$all->no_identitas}}</td>
                                    <td>{{$all->nama}}</td>
                                    <td>{{$all->sertifikat}}</td>
                                    <td>{{$all->masa_berlaku}}</td>
                                    <td>{{$all->status_sertifikat}}</td>
                                    <td>{{$all->sisa_waktu}}</td>
                                    <td>{{$all->status}}</td>

                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>