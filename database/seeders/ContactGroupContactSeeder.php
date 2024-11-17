<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ContactGroupContact;
use App\Models\Contact;
use App\Models\GroupContact;

class ContactGroupContactSeeder extends Seeder
{
    public function run()
    {
        // Tạo 10 liên kết giữa contact và group contact
        foreach (range(1, 20) as $index) {
            ContactGroupContact::create([
                'contact_id' => rand(0,20), // Chọn ngẫu nhiên Contact
                'group_contact_id' => rand(0,20), // Chọn ngẫu nhiên GroupContact
            ]);
        }
    }
}
