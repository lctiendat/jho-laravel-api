<?php

namespace App\Models;

class GroupContact extends Base
{
    protected $table = 'group_contact';

    protected $fillable = ['name'];

    // Relationship with ContactListContact
    public function contacts()
    {
        return $this->BelongsToMany(Contact::class, 'contact_group_contact');
    }
}
