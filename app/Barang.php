<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    protected $table = 'barang';
    protected $fillable = ['kode','masterbrg_id','nama','jenis','harga',];

    public function masterbrg()
    {
        return $this->belongsTo(Masterbrg::class);
    }
}
