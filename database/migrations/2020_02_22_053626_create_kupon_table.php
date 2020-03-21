<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKuponTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kupon', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('id_kupon');
            $table->integer('mastercus_id')->unsigned();
            $table->foreign('mastercus_id')->references('kode')->on('mastercus')->onDelete('cascade');
            $table->integer('barang_id')->unsigned();
            $table->foreign('barang_id')->references('kode')->on('mastercus')->onDelete('cascade');
            $table->string('nama_brg');
            $table->integer('jumlah');
            Stable->string('diskon');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kupon');
    }
}
