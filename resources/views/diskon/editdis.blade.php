@extends('layouts.master')
@section('content')
<body>
<form action="/kupon/{{$dis->id}}/update" method="post">
@csrf
  <div class="form-group">
    <label for="exampleFormControlInput1">id kupon</label>
    <input type="text" name="id_kupon" class="form-control" id="exampleFormControlInput1" 
    value="{{$dis->id_kupon}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">kode barang</label>
    <input type="text" name="kode_brg" class="form-control" id="exampleFormControlInput1" 
    value="{{$dis->kode_brg}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">kode customer</label>
    <input type="text" name="nama_customer" class="form-control" id="exampleFormControlInput1" 
    value="{{$dis->kode_customer}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">nama barang</label>
    <input type="text" name="nama_brg" class="form-control" id="exampleFormControlInput1" 
    value="{{$dis->nama_brg}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Jumlah</label>
    <input type="text" name="jumlah" class="form-control" id="exampleFormControlInput1"
     value="{{$dis->jumlah}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">diskon</label>
    <input type="text" name="diskon" class="form-control" id="exampleFormControlInput1"
     value="{{$dis->diskon}}">
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Update</button>
  </div>
</form>
</body>
@endsection