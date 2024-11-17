<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tag;
use Faker\Factory as Faker;

class TagSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Tạo 10 tags
        foreach (range(1, 20) as $index) {
            Tag::create([
                'name' => $faker->word,
                'color_code' => $faker->hexColor,
            ]);
        }
    }
}
