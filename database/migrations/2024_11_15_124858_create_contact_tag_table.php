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
        Schema::create('contact_tag', function (Blueprint $table) {
            $table->id();
            $table->foreignId('contact_id')->constrained('contacts'); // Khóa ngoại liên kết với bảng 'contacts', xóa khi liên hệ bị xóa
            $table->foreignId('tag_id')->constrained('tags'); // Khóa ngoại liên kết với bảng 'tags', xóa khi tag bị xóa
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contact_tag');
    }
};
