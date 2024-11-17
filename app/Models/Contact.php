<?php

namespace App\Models;

class Contact extends Base
{
    protected $table = 'contacts';

    protected $fillable = [
        'name',
        'email',
        'phone',
        'created_by',
        'managed_by'
    ];

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function manager()
    {
        return $this->belongsTo(Manager::class, 'managed_by');
    }

    public function tags()
    {
        return $this->BelongsToMany(Tag::class, 'contact_tag');
    }

    public function groupContact()
    {
        return $this->BelongsToMany(GroupContact::class, 'contact_group_contact');
    }
}
