<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateConsultantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('consultants', function (Blueprint $table) {
            $table->id();
            $table->string('name1');
            $table->string('name2');
            $table->text('description1');
            $table->text('description2');
            $table->timestamps();
        });

        DB::table('consultants')->insert([
            'name1' => '1- Hafez Consultants (HC)',
            'name2' => '2- Arch2lab',
            'description1' => 'With its distinguished teams of engineers and architects, Hafez Consultants (HC) is acknowledged for urban planning, architectural design, interior and engineering design. HC design house expertise is based on a long history of successfully completed projects where it has succeeded in dealing with different projects domestically and internationally including residential, mixed-use, public, corporate and office buildings, educational and cultural projects, hotels and recreational resorts, industrial projects, religious projects. , Commercial and more).',
            'description2' => 'Considered a leading engineering consultancy in Germany for more than 25 years. The group was founded by the engineer Christian Schnitzer in Munich, Germany. The company is known for its quality design in the areas of planning, research and development, healthcare unit services, investment, administrative and educational buildings, housing, culture and entertainment.Arch2lab is known for its inspiring impact on society, such as the Seibersdorf laboratories of the International Atomic Energy Agency in Vienna, the Dubai Police headquarters building, forensic research, and the Wacker laboratories in Munich, in addition to many other projects that have reached fifty projects in the world with investments exceeding the barrier of 800 million euros.'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('consultants');
    }
}
