<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Contact;
use App\Models\Manager;
use App\Models\User;
use Faker\Factory as Faker;

class ContactSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Tạo 10 contacts
        foreach (range(1, 20) as $index) {
            Contact::create([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'phone' => $faker->phoneNumber,
                'created_by' => User::inRandomOrder()->first()->id,
                'managed_by' => Manager::inRandomOrder()->first()->id,
            ]);
        }
    }
}
