<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateAboutSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('about_sections', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('title1');
            $table->text('description');
            $table->string('image');
            $table->timestamps();
        });

        DB::table('about_sections')->insert([
            'title' => 'ECOTEC',
            'title1' => 'Developments',
            'description' => 'FOR REAL ESTATE DEVELOPMENT IS INTRODUCING AN UNPRECEDENTED TECHNOLOGY IN THE REAL ESTATE MARKET IN THE NEW CAPITAL',
            'image' => 'feature.png'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('about_sections');
    }
}
