<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ContactTag;
use App\Models\Contact;
use App\Models\Tag;

class ContactTagSeeder extends Seeder
{
    public function run()
    {
        foreach (range(1, 20) as $index) {
            ContactTag::create([
                'contact_id' => rand(0,20), // Chọn ngẫu nhiên Contact
                'tag_id' => rand(0,20), // Chọn ngẫu nhiên Tag
            ]);
        }
    }
}
