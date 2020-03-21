<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mastersupllier extends Model
{
    protected $table = 'mastersupllier';
    protected $fillable = ['kode','nama','alamat','no_tlp'];
}
