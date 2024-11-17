<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactTag extends Model
{
    protected $table = 'contact_tags';

    protected $fillable = ['contact_id', 'tag_id'];

    // Relationship with Contact
    public function contact()
    {
        return $this->belongsTo(Contact::class, 'contact_id');
    }

    // Relationship with Tag
    public function tag()
    {
        return $this->belongsTo(Tag::class, 'tag_id');
    }
}
