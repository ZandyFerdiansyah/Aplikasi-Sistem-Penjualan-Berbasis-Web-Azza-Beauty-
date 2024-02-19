<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Required meta tags -->

    @include('admin.css')

    <style type="text/css">
        .title_deg {

            text-align: center;
            font-size: 25px;
            font font-weight: bold;
            padding-bottom: 40px;

        }

        .table_deg {

            border: 2px solid white;
            width: 100%;
            margin: auto;
            padding-top: 50px;
            text-align: center;

        }

        .th_deg {

            padding: 10px;
            background-color: pink;
            font-size: 15px;
            font font-weight: bold;

        }

        .img_size {

            width: 130px;
            height: 130px;

        }
    </style>

</head>

<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->
        @include('admin.header')
        <!-- partial -->


        <div class="main-panel">
            <div class="content-wrapper">

                <h1 class="title_deg"> All Order </h1>


                <div style="padding-left: 500px; padding-bottom: 30px;">

                    <form action="{{ url('search') }}" method="get">


                        @csrf


                        <input type="text" style="color: black;" name="search" placeholder="Search for Something">

                        <input type="submit" value="search" class="btn-outline-primary">


                    </form>

                </div>

                <table class="table_deg">

                    <tr class="th_deg">

                        <th style="padding: 10px;">Name</th>
                        <th style="padding: 10px;">Product title</th>
                        <th style="padding: 10px;">Quantity</th>
                        <th style="padding: 10px;">Price</th>
                        <th style="padding: 10px;">Payment Status</th>
                        <th style="padding: 10px;">Delivery Status</th>
                        <th style="padding: 10px;">Image</th>
                        <th style="padding: 10px;">Delivered</th>
                        <th style="padding: 10px;">Print PDF</th>
                        <th style="padding: 10px;">Send Email</th>


                    </tr>


                    @forelse($order as $order)
                        <tr>

                            <td>
                                {{ $order->name }}
                                <br>
                                <br>
                                {{ $order->email }}
                                <br>
                                {{ $order->phone }}
                                <br>
                                {{ $order->address }}
                            </td>
                            <td>{{ $order->product_title }}</td>
                            <td>{{ $order->quantity }}</td>
                            <td>{{ $order->price }}K</td>
                            <td>{{ ucwords($order->payment_status) }}</td>
                            <td>{{ ucwords($order->delivery_status) }}</td>

                            <td>

                                <img class="img_size" src="/product/{{ $order->image }}" width="100px"
                                    style="border-radius:10px">

                            </td>

                            <td>

                                @if ($order->delivery_status == 'processing')
                                    <a href="{{ url('delivered', $order->id) }}"
                                        onclick="return confirm('Are You Sure This Product is Delivered !!!')"
                                        class="btn btn-primary m-1 btn-sm">Delivered</a>
                                @elseif($order->delivery_status == 'Waiting Customer to Pay')
                                    <p style="color: rgb(243, 178, 0);">Waiting Customer to Pay</p>
                                @elseif($order->delivery_status == 'Rejected')
                                    <p style="color: rgb(243, 0, 0);">Rejected</p>
                                @elseif($order->delivery_status == 'Waiting for admin confirmation')
                                    <p style="color: rgb(124, 250, 244);">Waiting for admin confirmation</p>
                                    <a href="{{ url('approve', $order->id) }}"
                                        onclick="return confirm('Are You Sure Approve This Order !!!')"
                                        class="btn btn-success m-1 btn-sm">Approve</a>
                                    <a href="{{ url('reject', $order->id) }}"
                                        onclick="return confirm('Are You Sure Reject This Order !!!')"
                                        class="btn btn-danger m-1 btn-sm">Reject</a>
                                @else
                                    <p style="color: green;">Delivered</p>
                                @endif

                            </td>


                            <td>

                                <a href="{{ url('print_pdf', $order->id) }}" class="btn btn-secondary m-1">Print
                                    PDF</a>

                                @if ($order->paymenttype == 'Proof of Payment by Transfer / QRIS')
                                    @if ($order->buktitransfer != '')
                                        <a href="#" data-toggle="modal" data-target="#cek<?= $order->id ?>"
                                            class="btn btn-info m-1 btn-sm">Check
                                            Proof Of
                                            Payment</a>
                                    @endif
                                @endif

                            </td>

                            <td>

                                <a href="{{ url('send_email', $order->id) }}" class="btn btn-info m-1">Send Email</a>



                            </td>



                        </tr>
                    @empty

                        <tr>

                            <td colspan="16">
                                No Data Found
                            </td>

                        </tr>
                    @endforelse
                </table>


            </div>
            @forelse ($orders as $order)
                <div class="modal fade" id="cek<?= $order->id ?>" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Proof Of Payment</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <th scope="row">Nama Rekening Transfer</th>
                                            <td>{{ $order->namatransfer }}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Tanggal Transfer</th>
                                            <td>{{ tanggal($order->tanggaltransfer) }}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Bukti Transfer</th>
                                            <td><img style="border-radius: 0px;height:300px !important;width:100% !important"
                                                    src="/images/{{ $order->buktitransfer }}" width="300px">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary text-white"
                                    data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
            @endforelse
        </div>


        <!-- container-scroller -->
        <!-- plugins:js -->
        @include('admin.script')
        <!-- End custom js for this page -->
</body>

</html>
