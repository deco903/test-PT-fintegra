@extends('layouts.master')
@section('search')
<form class="form-inline my-2 my-lg-0" method="GET" action="/jual">
	<input name="cari" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
</form>
@endsection
@section('content')
<body>

<a href="/"><button type="button" class="btn btn-primary mb-3">Cancel</button></a>
<table class="table">
  <thead class="border">
    <tr>
      <th scope="col">no</th>
      <th scope="col">id penjualan</th>
      <th scope="col">nama barang</th>
      <th scope="col">harga barang</th>
      <th scope="col">jumlah jual</th>
      
    </tr>
  </thead>
  <tbody>
      @foreach($daftar_penjualan as $resjual)
    <tr>
      <th>{{$loop->iteration}}</th>
      <td>{{$resjual->id_penjualan}}</td>
      <td>{{$resjual->barang}}</td>
      <td>{{$resjual->harga}}</td>
      <td>{{$resjual->jumlah}}</td>
    </tr>
    @endforeach
  </tbody>
</table>
{{$daftar_penjualan->links()}}
</body>
@endsection