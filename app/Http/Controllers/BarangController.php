<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;

class BarangController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $databarang = barang::where('nama','like','%'.$request->cari.'%')
            ->paginate();
        }else{
            // $databarang = Barang::all()->;
            $databarang = Barang::paginate(10);
        }
        return view ('barang.index',compact('databarang'));
    }


    public function create(Request $request)
    {
        $brg = Barang::create($request->all());
        return redirect('/')->with('succes','inputan berhasil');
    }

    public function edit($id)
    {
        $brg = Barang::find($id);
        return view('barang.edit',compact('brg'));
    }

    public function update(Request $request,$id)
    {
        $brg = Barang::find($id);
        $brg->update($request->all());
        return redirect('/')->with('succesupdate','update berhasil');
    }

    public function delete($id)
    {
        $brg = Barang::find($id);
        $brg->delete();
        return redirect('/')->with('succeshapus','data berhasil dihapus');
        
        
    }
}
