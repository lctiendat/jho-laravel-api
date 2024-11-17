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
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên liên hệ
            $table->string('email')->unique(); // Email (duy nhất)
            $table->string('phone')->nullable(); // Số điện thoại, có thể null
            $table->foreignId('created_by')->constrained('users');// Khóa ngoại liên kết với bảng 'users', có thể null, và khi xóa sẽ set null
            $table->foreignId('managed_by')->constrained('users'); // Khóa ngoại liên kết với bảng 'users', có thể null
            $table->softDeletes(); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};
