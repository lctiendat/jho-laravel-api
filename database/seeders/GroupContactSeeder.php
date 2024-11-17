<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\GroupContact;
use Faker\Factory as Faker;

class GroupContactSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Tạo 10 group contacts
        foreach (range(1, 20) as $index) {
            GroupContact::create([
                'name' => $faker->word,
            ]);
        }
    }
}
