<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactGroupContact extends Model
{
    protected $table = 'contact_group_contact';

    protected $fillable = ['group_contact_id', 'contact_id'];

    public function groupContact()
    {
        return $this->belongsTo(GroupContact::class, 'group_contact_id');
    }

    public function contact()
    {
        return $this->belongsTo(Contact::class, 'contact_id');
    }
}
