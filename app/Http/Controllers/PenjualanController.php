<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Penjualan;

class PenjualanController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $daftar_penjualan = penjualan::where('barang','LIKE','%'.$request->cari.'%')
            ->paginate();
        }else{
            $daftar_penjualan = penjualan::paginate(3);
        }
        return view('barang.indexjual',compact('daftar_penjualan'));
    }
}
