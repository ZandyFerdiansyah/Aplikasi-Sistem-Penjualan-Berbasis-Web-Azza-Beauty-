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
            text-align: center;
            padding: 50px;

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

        .img_deg {

            width: 125px;
            height: 125px;

        }

        .total_deg {

            font-size: 20px;
            padding: 40px;



        }
    </style>


</head>

<body>



    <div class="hero_area">
        <!-- header section strats -->
        @include('home.header')
        <!-- end header section -->

        @if (session()->has('message'))
            <div class="alert alert-success">


                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>

                {{ session()->get('message') }}

            </div>
        @endif



        <div class="center">
            <table>
                <tr>

                    <th class="th_deg">Product title</th>
                    <th class="th_deg">Quantity</th>
                    <th class="th_deg">Price</th>
                    <th class="th_deg">Image</th>
                    <th class="th_deg">Action</th>

                </tr>

                <?php $totalprice = 0; ?>

                @foreach ($cart as $cart)
                    <tr>

                        <td>{{ $cart->product_title }}</td>
                        <td>{{ $cart->quantity }}</td>
                        <td>{{ $cart->price }}K</td>
                        <td><img class="img_deg" src="/product/{{ $cart->image }}"></td>
                        <td><a class="btn btn-danger" onclick="confirmation(event)"
                                href="{{ url('remove_cart', $cart->id) }}">Remove Product</td>

                    </tr>

                    <?php $totalprice = $totalprice + $cart->price; ?>
                @endforeach



            </table>

            <div>

                <h1 class="total_deg">Total Price : {{ $totalprice }}K</h1>

            </div>

            <div>

                <h1 style="font-size: 20px; padding-bottom: 15px;">Proceed to Order</h1>

                <a href="{{ url('cash_order') }}" class="btn btn-danger">Cash On Delivery</a>

                {{-- <a href="{{ url('stripe', $totalprice) }}" class="btn btn-danger">Pay Using Card</a> --}}
                <a href="{{ url('transferpayment') }}" class="btn btn-success">Transfer / QRIS</a>




            </div>



        </div>


        <!-- footer start -->

        <!-- footer end -->
        <div class="cpy_">
            <p class="mx-auto">© 2023 Copyrights <br>

                Distributed By AZZA BEAUTY</a>

            </p>
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
