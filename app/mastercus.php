<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mastercus extends Model
{
    protected $table = 'mastercus';
    protected $fillable = ['kode','nama','alamat'];

    public function kupon()
    {
        return $this->hasMany(Kupon::class);
    }
}
