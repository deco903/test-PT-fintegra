@extends('layouts.master')

@section('content')
<body>
<form action="/barang/{{$brg->id}}/update" method="post">
@csrf
                    <div class="form-group">
                        <label for="exampleFormControlInput1">kode barang</label>
                        <input type="text" name="kode" class="form-control" id="exampleFormControlInput1"
                         value="{{$brg->kode}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">id master barang</label>
                        <input type="text" name="masterbrg_id" class="form-control" id="exampleFormControlInput1"
                         value="{{$brg->masterbrg_id}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Nama barang</label>
                        <input type="text" name="nama" class="form-control" id="exampleFormControlInput1" 
                        value="{{$brg->nama}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Jenis barang</label>
                        <input type="text" name="jenis" class="form-control" id="exampleFormControlInput1" 
                        value="{{$brg->jenis}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Harga</label>
                        <input type="text" name="harga" class="form-control" id="exampleFormControlInput1" 
                        value="{{$brg->harga}}">
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                    </form>
                <!--end form-->
</body>
@endsection