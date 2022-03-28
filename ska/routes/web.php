<?php

use Illuminate\Support\Facades\Route;

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







Route::group(['middleware'=>['logged']], function(){

    Route::get('/login', 'UserController@login');

    Route::post('/login', 'UserController@getUser')->name('login.add');

    Route::post('/register','UserController@createUser')->name('user.add');
    

});

Route::group(['middleware'=>['authHalaman']], function(){


    Route::get('/add-tenaga-ahli','TenagaAhliController@addTenagaAhli');

    Route::post('/add-tenaga-ahli','TenagaAhliController@createTenagaAhli')->name('tenagaAhli.add');

    Route::get('/show-tenaga-ahli','TenagaAhliController@getTenagaAhli');

    Route::get('/','TenagaAhliController@tableTenagaAhli');

    Route::get('/input','TenagaAhliController@input');

    Route::post('/input','TenagaAhliController@createTenagaAhli')->name('tenagaAhli.add');
    
    Route::get('/user', 'UserController@user');

    Route::get('edit/{id}','TenagaAhliController@edit');

    Route::post('update','TenagaAhliController@update');

    Route::get('delete/{id}','TenagaAhliController@delete');

    
    // awal keterampilan
    Route::get('/add-tenaga-keterampilan','TenagaKeterampilanController@addTenagaKeterampilan');

    Route::post('/add-tenaga-keterampilan','TenagaKeterampilanController@createTenagaKeterampilan')->name('tenagaKeterampian.add');

    Route::get('/show-tenaga-keterampilan','TenagaKeterampilanController@getTenagaKeterampilan');

    Route::get('/keterampilan','TenagaKeterampilanController@tableTenagaKeterampilan');

    Route::get('/input_keterampilan','TenagaKeterampilanController@input_keterampilan');

    Route::post('/input_keterampilan','TenagaKeterampilanController@createTenagaKeterampilan')->name('tenagaKeterampilan.add');

    Route::get('edit_keterampilan/{id}','TenagaKeterampilanController@edit_keterampilan');

    Route::post('update_keterampilan','TenagaKeterampilanController@update_keterampilan');

    Route::get('delete_keterampilan/{id}','TenagaKeterampilanController@delete_keterampilan');
    // akhir keterampilan

    
    //awal riwayat
    Route::get('/riwayatpenggedung','RiwayatController@index_pengG_riwayat');
    Route::get('/riwayatpergedung','RiwayatController@index_perG_riwayat');
    Route::get('/riwayatpengjalan','RiwayatController@index_pengJ_riwayat');
    Route::get('/riwayatperjalan','RiwayatController@index_perJ_riwayat');
    Route::get('/riwayatpengair','RiwayatController@index_pengA_riwayat');
    Route::get('/riwayatperair','RiwayatController@index_perA_riwayat');

    Route::post('/riwayat','RiwayatController@create_riwayat');

    Route::get('/posisi','RiwayatController@index_posisi');
    //akhir riwayat

    //awal referensi
    Route::get('/referensi','ReferensiController@index_referensi');
    Route::post('/pilihtemplate_a','ReferensiController@pilih_template_a')->name('pilihtemplate.a');
    Route::post('/pilihtemplate_b','ReferensiController@pilih_template_b')->name('pilihtemplate.b');
    Route::post('/pilihtemplate_c','ReferensiController@pilih_template_c')->name('pilihtemplate.c');
    Route::post('/pilihtemplate_d','ReferensiController@pilih_template_d')->name('pilihtemplate.d');

    Route::post('/inputriwayat','ReferensiController@input_riwayat')->name('inputriwayat');
    Route::post('/inputtemplate','ReferensiController@input_template')->name('inputtemplate');
    Route::post('/savetemplate','ReferensiController@save_template')->name('savetemplate');

    Route::get('/createriwayatpdf','ReferensiController@index_createpdf');
    Route::view('/referensipdf','referensi/template-surat-a');
    Route::view('/referensipdf_exist','referensi/template-surat-a_exist');

    
    Route::get('/existing','ReferensiController@index_createexisting');
    Route::post('/inputexisting','ReferensiController@input_existing')->name('inputexisting');
    Route::post('/inputtemplateexist','ReferensiController@input_template_exist')->name('inputtemplate_exist');

    
    Route::view('/cubi','referensi/template-surat-a');
    //akhir referensi

    //awal akun
    Route::get('/akun','AkunController@index');
    Route::get('delete_akun/{id}','AkunController@delete');
    Route::get('/tambah_akun','AkunController@tambah_akun');
    Route::post('/tambah_akun','UserController@simpan')->name('user.add');
    //akhir akun

});


Route::get('/logout', 'UserController@logout');

Route::get('/tambah','UserController@tambah');

Route::get('/register','UserController@register');


Route::get('/file/download/{file}','TenagaAhliController@getfile');
Route::get('/file_keterampilan/download/{file}','TenagaKeterampilanController@getfile_keterampilan');



