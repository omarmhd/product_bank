<?php

namespace Database\Seeders;

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


       $password= Hash::make('12345678');
        User::create([
            'name'=>'youssef',
            'email'=>'youssef@youssef.com',
            'phone'=>'059999999999',
            'job'=>'مدير شركة',
            'password'=>$password,
        ]);



        // \App\Models\User::factory(10)->create();
    }
}
