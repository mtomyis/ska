<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Tenaga Keterampilan</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <form method="POST" action="{{route('tenagaKeterampilan.add')}}">
                        @csrf
                        <div class="form-group">
                            <label for="no_identitas">Nomor Identitas</label>
                            <input type="text" name="no_identitas" class="form-control" placeholder="Enter Nomor Identitas"/>
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" class="form-control" placeholder="Enter Name"/>
                        </div>

                        <div class="form-group">
                            <label for="sertifikat">Sertifikat</label>
                            <input type="text" name="sertifikat" class="form-control" placeholder="Enter Sertifikat"/>
                        </div>

                        <div class="form-group">
                            <label for="masa_berlaku">Masa Berlaku</label>
                            <input type="text" name="masa_berlaku" class="form-control" placeholder="Enter Masa Berlaku"/>
                        </div>

                        <div class="form-group">
                            <label for="status_sertifikat">Status sertifikat</label>
                            <input type="text" name="status_sertifikat" class="form-control" placeholder="Enter Status Sertifikat"/>
                        </div>

                        {{-- <div class="form-group">
                            <label for="sisa_waktu">Tenggang Waktu</label>
                            <input type="text" name="sisa_waktu" class="form-control" placeholder="Enter Tenggang Waktu"/>
                        </div> --}}

                        <input type="submit" value="Add Data"/>

                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>