<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('contact_group_contact', function (Blueprint $table) {
            $table->id();
            $table->foreignId('group_contact_id')->constrained('group_contact'); // Khóa ngoại liên kết với bảng 'group_contacts', xóa liên kết khi nhóm liên hệ bị xóa
            $table->foreignId('contact_id')->constrained('contacts'); // Khóa ngoại liên kết với bảng 'contacts', xóa liên kết khi liên hệ bị xóa
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contact_group_contact');
    }
};
