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

            padding: 10px;
            background-color: pink;
            font-size: 20px;
            font font-weight: bold;

        }
    </style>


</head>

<body>

    <!-- header section strats -->
    @include('home.header')
    <!-- end header section -->


    <div class="center">

        <table>

            <tr>

                <th class="th_deg">Product Title</th>

                <th class="th_deg">Quantity</th>

                <th class="th_deg">Price</th>

                <th class="th_deg">Payment Status</th>

                <th class="th_deg">Delivery Status</th>

                <th class="th_deg">Image</th>

                <th class="th_deg">Action</th>

            </tr>

            @foreach ($order as $order)
                <tr>

                    <td>{{ $order->product_title }}</td>

                    <td>{{ $order->quantity }}</td>

                    <td>{{ $order->price }}K</td>

                    <td>{{ $order->payment_status }}</td>

                    <td>{{ $order->delivery_status }}</td>

                    <td>

                        <img height="105" width="105" src="product/{{ $order->image }}">

                    </td>

                    <td>
                        @if ($order->paymenttype == 'Proof of Payment by Transfer / QRIS')
                            @if ($order->buktitransfer == '')
                                <a class="btn btn-success m-1" href="{{ url('uploadproof', $order->id) }}">Upload Proof
                                    of
                                    Payment</a>
                            @else
                                <a class="btn btn-info m-1" href="{{ url('uploadproof', $order->id) }}">Detail</a>
                            @endif
                        @else
                            <p style="color: green;">Cash on Deliiverys</p>
                        @endif
                        @if ($order->delivery_status == 'processing')
                            <a onclick="return confirm('Are You Sure to Cancel This Order !!!')"
                                class="btn btn-danger m-1" href="{{ url('cancel_order', $order->id) }}">Cancel
                                Order</a>
                        @else
                            <p style="color: green;">Not Allowed</p>
                        @endif

                    </td>

                </tr>
            @endforeach

        </table>

    </div>

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
