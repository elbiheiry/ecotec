<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateFeatureSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('feature_sections', function (Blueprint $table) {
            $table->id();
            $table->string('title' , 225);
            $table->string('image1' , 225);
            $table->string('image2' , 225);
            $table->text('description');
            $table->timestamps();
        });

        DB::table('feature_sections')->insert([
            'title' => 'Our Experience Has Exceeded The Real Estate Market Into The Technological Arena',
            'image1' => 'project1.jpg',
            'image2' => 'project2.jpg',
            'description' => 'Not only is the innovation reflected in the design but also in the construction technology implemented where we have relied on German construction technology, making it the first project in New Capital with German standards in the new capital making ParkView the first Egyptian-German cooperation in New Capital. Highlighting on originality, we have partnered with Arc2lab Engineering, with its long business presence in Germany, the Middle East, Africa and the Gulf countries.'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('feature_sections');
    }
}
