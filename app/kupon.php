<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kupon extends Model
{
    protected $table = 'kupon';
    protected $fillable = ['id_kupon','kode_brg','kode_customer','nama_brg','jumlah','diskon'];

    public function mastercus()
    {
        return $this->belongsTo(Mastercus::class);
    }
}
