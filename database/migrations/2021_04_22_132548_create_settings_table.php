<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('title' , 225);
            $table->string('copy' , 225);
            $table->string('address' , 225);
            $table->string('email' , 225);
            $table->string('phone1' , 225);
            $table->string('phone2' , 225);
            $table->string('phone3' , 225);
            $table->string('mobile1' , 225);
            $table->string('mobile2' , 225);
            $table->string('mobile3' , 225);
            $table->string('facebook' , 225);
            $table->string('instagram' , 225);
            $table->timestamps();
        });

        DB::table('settings')->insert([
            'title' => 'ECOTEC Developments',
            'copy' => 'all rights reserved © 2021 | ECOTEC Developments',
            'address' => '1 HAFEZ RAMADAN ST. OFF MAKRAM EBIED ST. NASR CITY, CAIRO, EGYPT',
            'email' => 'info@ecotecgroup.net',
            'phone1' => '0220700091',
            'phone2' => '0220700092',
            'phone3' => '0220700093',
            'mobile1' => '01050304001',
            'mobile2' => '01050304002',
            'mobile3' => '01050304003',
            'facebook' => 'https://www.facebook.com/parkviewbyecotecdevelopments',
            'instagram' => 'https://www.instagram.com/parkviewbyecotecdevelopments/?igshid=1d4raal8ygwu9'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
