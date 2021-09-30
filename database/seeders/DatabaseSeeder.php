<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name'=>'omar',
            'email'=>'omarmhd@gmail.com',
            'password'=>'4444444444',
        ]);



        // \App\Models\User::factory(10)->create();
    }
}
