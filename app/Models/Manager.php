<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Manager extends User
{
    use SoftDeletes;
    protected $table = "managers";

    public function managedContacts()
    {
        return $this->hasMany(Contact::class, 'managed_by');
    }

}
