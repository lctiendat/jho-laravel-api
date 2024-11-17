<?php

namespace App\Models;

class Tag extends Base
{
    protected $table = 'tags';

    protected $fillable = ['name', 'color_code'];

    

    // Relationship with Contact
    public function contacts()
    {
        return $this->BelongsToMany(Contact::class, 'contact_tag');
    }
}
