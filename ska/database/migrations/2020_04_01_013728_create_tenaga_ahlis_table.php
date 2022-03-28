<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTenagaAhlisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tenaga_ahlis', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('sertifikat');
            $table->string('masa_berlaku');
            $table->string('status_sertifikat');
            $table->string('file');
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
        Schema::dropIfExists('tenaga_ahlis');
    }
}
