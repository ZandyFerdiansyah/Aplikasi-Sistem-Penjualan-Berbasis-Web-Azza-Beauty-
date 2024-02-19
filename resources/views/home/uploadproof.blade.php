<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="images/azzabeauty1.png" type="">
    <title>Azza Beauty Store</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('home/css/bootstrap.css') }}" />
    <!-- font awesome style -->
    <link href="{{ asset('home/css/font-awesome.min.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('home/css/style.css') }}" rel="stylesheet" />
    <!-- responsive style -->
    <link href="{{ asset('home/css/responsive.css') }}" rel="stylesheet" />


    <style type="text/css">
        .center {

            margin: auto;
            width: 70%;
            padding: 30px;
            text-align: center;

        }


        table,
        th,
        td {
            border: 2px solid black;
        }


        .th_deg {
            font-size: 20px;
            padding: 10px;
            background: pink;
            font font-weight: bold;
        }
    </style>


</head>

<body>

    <!-- header section strats -->
    @include('home.header')
    <!-- end header section -->

    <?php
    $user = Auth::user();
    ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <th scope="row">Payment Status</th>
                            <td>{{ $row->payment_status }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Delivery Status</th>
                            <td>{{ $row->delivery_status }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Nama</th>
                            <td>{{ $row->name }}</td>
                        </tr>
                        <tr>
                            <th scope="row">No. HP</th>
                            <td>{{ $row->phone }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Email</th>
                            <td>{{ $row->email }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Alamat</th>
                            <td>{{ $row->address }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
        <table class="table table-bordered">
            <thead class="bg-primary text-white">
                <tr>
                    <th>Product</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $row->product_title }}</td>
                    <td><img class="img_deg" src="/product/{{ $row->image }}" width="100px"></td>
                    <td>{{ $row->price }}K</td>
                    <td>{{ number_format($row->quantity) }}</td>
                    <td>{{ number_format($row->quantity * $row->price) }}K</td>
                </tr>
            </tbody>
        </table>
        @if ($row->buktitransfer == '')
            <div class="row justify-content-center mb-5 mt-5">
                <div class="col-md-5">
                    <div class="table-responsive">
                        <table class="table table-borderd">
                            <tbody>
                                <tr>
                                    <td>
                                        <center>
                                            <img src="{{ asset('images/bca.png') }}" width="100px">
                                            BANK BCA 4890308533 (Adinda Zahra Apriliyan)
                                        </center>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <center>
                                            <img src="{{ asset('images/qris.jpg') }}" width="300px">
                                            <br>
                                            QRIS (Azza Beauty)
                                            <br>
                                        </center>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="alert alert-info">Total Price : <strong>
                            {{ number_format($row->quantity * $row->price) }}K</strong></div>

                    <form method="post" enctype="multipart/form-data" action="{{ url('uploadproofsave') }}">
                        @csrf
                        <input type="hidden" value="{{ $row->id }}" name="id">
                        <div class="form-group">
                            <label>Nama Rekening</label>
                            <input type="text" name="namatransfer" class="form-control" value="{{ $user->name }}"
                                required>

                        </div>
                        <div class="form-group">
                            <label>Tanggal Transfer</label>
                            <input type="date" name="tanggaltransfer" class="form-control"
                                value="<?= date('Y-m-d') ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Foto Bukti Pembayaran</label>
                            <input type="file" name="buktitransfer" class="form-control" required>
                        </div>
                        <button class="btn btn-danger float-right" name="kirim">Simpan</button>
                    </form>
                </div>
            </div>
        @else
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th scope="row">Nama Rekening Transfer</th>
                        <td>{{ $row->namatransfer }}</td>
                    </tr>
                    <tr>
                        <th scope="row">Tanggal Transfer</th>
                        <td>{{ tanggal($row->tanggaltransfer) }}</td>
                    </tr>
                    <tr>
                        <th scope="row">Bukti Transfer</th>
                        <td><img src="/images/{{ $row->buktitransfer }}" width="300px"></td>
                    </tr>
                </tbody>
            </table>
        @endif
        <!-- jQery -->
        <script src="home/js/jquery-3.4.1.min.js"></script>
        <!-- popper js -->
        <script src="home/js/popper.min.js"></script>
        <!-- bootstrap js -->
        <script src="home/js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="home/js/custom.js"></script>
</body>

</html>
