@extends('layouts.master')
@section('search')
<form class="form-inline my-2 my-lg-0" method="GET" action="/">
	<input name="cari" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
</form>
@endsection
@section('content')
<div class="container">
    <div class="row col-12">
    <!--modal-->
     <!-- Modal -->
     <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Form input barang</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!--form-->
                <form action="/create" method="post">
                @csrf
                    <div class="form-group">
                        <label for="exampleFormControlInput1">kode barang</label>
                        <input type="text" name="kode" class="form-control" id="exampleFormControlInput1"
                         placeholder="masukan kode barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">id Master baarang</label>
                        <input type="text" name="masterbrg_id" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan kode master barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Nama barang</label>
                        <input type="text" name="nama" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan nama barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Jenis barang</label>
                        <input type="text" name="jenis" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan jenis barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Harga</label>
                        <input type="text" name="harga" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan harga Rp">
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                    </form>
                <!--end form-->
            </div>
            </div>
        </div>
        </div>
    <!--end modal-->
    
    <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal">
        Input barang
        </button><br>

        @if(session('succes'))
			 <div class="alert alert-success" role="alert">
			{{session('succes')}}
		    </div>
        @endif   
        
        @if(session('succesupdate'))
			 <div class="alert alert-success" role="alert">
			{{session('succesupdate')}}
		    </div>
        @endif   
        
        @if(session('succeshapus'))
			 <div class="alert alert-success" role="alert">
			{{session('succeshapus')}}
		    </div>
		@endif   
        <table class="table">
          <thead>
            <tr>
              <th >#</th>
              <th >kode barang</th>
              <th >id master barang </th>
              <th >nama barang</th>
              <th >jenis barang</th>
              <th >harga barang</th>
              
              <th >aksi</th>
            </tr>
          </thead>
          <tbody>
           @foreach($databarang as $brg)
            <tr>
              <th>{{$loop->iteration}}</th>
              <td>{{$brg->kode}}</td>
              <td>{{$brg->masterbrg_id}}</td>
              <td>{{$brg->nama}}</td>
              <td>{{$brg->jenis}}</td>
              <td>{{$brg->harga}}</td>
              <td>
                  <a href="/barang/{{$brg->id}}/edit" class="btn btn-warning btn-sm">Edit</a> || 
                  <a href="/barang/{{$brg->id}}/hapus" class="btn btn-danger btn-sm"  onclick="return confirm('yakin mau hapus.?')">Hapus</a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
        {{$databarang->links()}}
    </div>
    
   
</div>
@endsection