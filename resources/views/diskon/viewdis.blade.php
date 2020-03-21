@extends('layouts.master')

@section('content')
<div class="container">
    <div class="row col-12">
    <!--modal-->
     <!-- Modal -->
     <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Form input kupon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!--form-->
                <form action="/kupon/create" method="post">
                @csrf
                    <div class="form-group">
                        <label for="exampleFormControlInput1">id kupon</label>
                        <input type="text" name="id_kupon" class="form-control" id="exampleFormControlInput1"
                         placeholder="masukan id kupon">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">kode barang</label>
                        <input type="text" name="kode_brg" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan kode barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">kode customer</label>
                        <input type="text" name="kode_customer" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan kode customer">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Nama barang</label>
                        <input type="text" name="nama_brg" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan nama barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Jumlah</label>
                        <input type="text" name="jumlah" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan jumlah barang">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Total diskon</label>
                        <input type="text" name="diskon" class="form-control" id="exampleFormControlInput1" 
                        placeholder="masukan jumlah diskon">
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
        Input Kupon
        </button>

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
              <th >id kupon</th>
              <th> kode barang</th>
              <th>kode customer</th>
              <th >nama barang</th>
              <th >jumlah barang</th>
              <th> Total diskon</th>
              <th >aksi</th>
            </tr>
          </thead>
          <tbody>
           @foreach($potongan as $dis)
            <tr>
              <th>{{$loop->iteration}}</th>
              <td>{{$dis->id_kupon}}</td>
              <td>{{$dis->kode_brg}}</td>
              <td>{{$dis->kode_customer}}</td>
              <td>{{$dis->nama_brg}}</td>
              <td>{{$dis->jumlah}}</td>
              <td>{{$dis->diskon}}</td>
              <td>
                  <a href="/kupon/{{$dis->id}}/edit" class="btn btn-warning btn-sm">Edit</a> || 
                  <a href="/kupon/{{$dis->id}}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('yakin mau hapus.?')">Hapus</a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
    </div>
</div>
@endsection