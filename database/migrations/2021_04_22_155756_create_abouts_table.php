<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateAboutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('abouts', function (Blueprint $table) {
            $table->id();
            $table->string('heading' ,225);
            $table->string('name1' ,225);
            $table->string('name2' ,225);
            $table->string('name3' ,225);
            $table->text('brief1');
            $table->text('brief2');
            $table->text('brief3');
            $table->string('image1');
            $table->string('image2');
            $table->timestamps();
        });

        DB::table('abouts')->insert([
            'heading' => 'EMERGING FROM A CONGLOMERATE BETWEEN 3 LARGE ENTITIES SPECIALIZING IN THE REAL ESTATE INVESTMENT SECTORS',
            'name1' => 'WEISER',
            'brief1' => 'one of the largest engineering offices in Egypt, the owner of the design and construction of the largest tourist resorts in Sharm El Sheikh, Hurghada and Marsa Alam.',
            'name2' => 'ECOTEC',
            'brief2' => 'a company specializing in project implementation, with branches in Saudi Arabia and the UAE, and partners with European and German companies, with mega projects in Europe, the Middle East and the Gulf countries.',
            'name3' => 'MAALEM COMPANY',
            'brief3' => 'one of the largest real estate companies in the Fifth Settlement with a portfolio that exceeded 100 projects in New Cairo and the Administrative Capital.',
            'image1' => 'project2.jpg',
            'image2' => 'project3.jpg',
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('abouts');
    }
}
