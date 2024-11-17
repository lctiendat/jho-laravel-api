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
        Schema::create('group_contact', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên nhóm liên hệ
            // $table->foreignId('contact_group_contact_id')->nullable()->constrained('contact_group_contact')->onDelete('set null'); // Khóa ngoại liên kết với bảng 'contact_group_contacts', có thể null, xóa khi n
            $table->softDeletes(); // Trường 'deleted_at' cho Soft Deletes
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('group_contact');
    }
};
