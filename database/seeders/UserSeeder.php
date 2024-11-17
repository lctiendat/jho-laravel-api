<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Tạo 10 users
        User::create([
            'name' => $faker->name,
            'email' => 'jho@demo.com',
            'password' => bcrypt('Jho@demo123'),
        ]);
        foreach (range(1, end: 20) as $index) {
            User::create([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'password' => bcrypt('Jho@demo123'),
            ]);
        }
    }
}
