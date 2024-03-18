<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateParkViewSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('park_view_sections', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('description');
            $table->timestamps();
        });

        DB::table('park_view_sections')->insert([
            'title' => 'PARKVIEW',
            'description' => 'Aligning with the New Capital as a progressive and smart city, ECOTEC Developments is introducing the eminent German concept and standards, where the building aims to provide its investors, owners and tenants an unprecedented technology and modern designs to offer a new business experience.
            With a futuristic design that combines both modernity and beauty thanks to the glass facades and green spaces that cover the building.'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('park_view_sections');
    }
}
