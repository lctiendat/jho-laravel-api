<?php

namespace App\Services;

use App\Repositories\ManagerRepository;
use App\Exceptions\CustomException;

class ManagerService extends BaseService
{
    protected $repository;

    public function __construct(ManagerRepository $managerRepository)
    {
        $this->repository = $managerRepository;
    }
}
