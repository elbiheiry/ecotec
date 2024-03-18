<?php

namespace Database\Seeders;

use App\Models\Message;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // User::create([
        //     'name' => 'admin',
        //     'email' => 'admin@ecotecgroup.net',
        //     'password' => Hash::make('Admin123')
        // ]);

        // for ($i=0; $i < 50; $i++) { 
        //     Message::create([
        //         'name' => 'name #'.$i,
        //         'email' => 'email#'.$i.'@ecotectgroup.net',
        //         'phone' => '123456789',
        //         'subject' => 'Subject #'.$i,
        //         'message' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        //     ]);
        // }
    }
}
