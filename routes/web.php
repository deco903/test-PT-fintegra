<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('barang.index');
// });

Route::get('/','BarangController@index');
Route::post('/create','BarangController@create');
Route::get('/barang/{id}/edit','BarangController@edit');
Route::post('/barang/{id}/update','BarangController@update');
Route::get('/barang/{id}/hapus','BarangController@delete');

Route::get('/kupon','DiskonController@index');
Route::post('/kupon/create','DiskonController@create');
Route::get('/kupon/{id}/edit','DiskonController@edit');
Route::post('/kupon/{id}/update','DiskonController@update');
Route::get('/kupon/{id}/hapus','DiskonController@delete');

Route::get('/jual','PenjualanController@index');


