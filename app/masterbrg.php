<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class masterbrg extends Model
{
    protected $table = 'masterbrg';
    protected $fillable = ['kode','jenis'];

    public function barang()
    {
        return $this->hasMany(Barang::class);
    }
}
