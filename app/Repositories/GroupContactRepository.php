<?php

namespace App\Repositories;

use App\Models\GroupContact;

class GroupContactRepository extends BaseRepository
{
    public function __construct(GroupContact $model)
    {
        parent::__construct($model);
    }
}
