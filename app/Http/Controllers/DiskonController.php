<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kupon;

class DiskonController extends Controller
{
    public function index()
    {
        $potongan = kupon::all();
        return view('diskon.viewdis',compact('potongan'));
    }

    public function create(Request $request)
    {
        $dis = kupon::create($request->all());
        return redirect('/kupon')->with('succes','inputan berhasil');
    }

    public function edit($id)
    {
        $dis = kupon::find($id);
        return view('diskon.editdis',compact('dis'));
    }  
    
    public function update(Request $request,$id)
    {
        $dis = kupon::find($id);
        $dis->update($request->all());
        return redirect('/kupon')->with('succesupdate','update berhasil');
    }

    public function delete($id)
    {
        $dis = kupon::find($id);
        $dis->delete();
        return redirect('/kupon')->with('succeshapus','data berhasil dihapus');
    }
    
}
