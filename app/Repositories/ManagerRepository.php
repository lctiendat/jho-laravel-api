<?php

namespace App\Repositories;

use App\Models\Manager;

class ManagerRepository extends BaseRepository
{
    public function __construct(Manager $model)
    {
        parent::__construct($model);
    }
}
