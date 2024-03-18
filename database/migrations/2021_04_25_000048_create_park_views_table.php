<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateParkViewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('park_views', function (Blueprint $table) {
            $table->id();
            $table->string('title' , 225);
            $table->text('description1');
            $table->text('description2');
            $table->string('square' , 225);
            $table->string('building' , 225);
            $table->string('address' , 225);
            $table->string('location_title' , 225);
            $table->text('location_description');
            $table->string('image1' , 225);
            $table->string('image2' , 225);
            $table->string('image3' , 225);
            $table->timestamps();
        });

        DB::table('park_views')->insert([
            'title' => 'PARKVIEW',
            'description1' => 'WITH A FUTURISTIC DESIGN THAT COMBINES BOTH MODERNITY AND BEAUTY THANKS TO THE GLASS FACADES AND GREEN SPACES THAT COVER THE BUILDING.',
            'description2' => 'Aligning with the New Capital as a progressive and smart city, ECOTEC Developments is introducing the eminent German concept and standards, where the building aims to provide its investors, owners and tenants an unprecedented technology and modern designs to offer a new business experience.',
            'square' => '3762 SQ FT',
            'building' => '3 BASEMENTS, GROUND FLOOR, 10 TYPICAL FLOORS',
            'address' => 'MAIN ROAD IN DOWNTOWN, NEW CAPITAL STANDS PARKVIEW',
            'location_title' => 'LOCATION',
            'location_description' => 'On the main road in downtown, New Capital stands ParkView as a testimonial to our vision. The Project is smartly nestled in the vibrant downtown of The New Capital, with direct view over The Green River, the largest park in the capital, alongside the main monorail, Gold’s market, Grand Mosque, Islamic conglomerate, Masa Hotel, making it in the heart of the hustle and bustle of New Capital.',
            'image1' => 'park_view_logo_icon.png',
            'image2' => 'about.jpg',
            'image3' => 'location.png'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('park_views');
    }
}
