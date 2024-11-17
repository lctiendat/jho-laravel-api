<?php

namespace App\Services;

use App\Repositories\TagRepository;
use App\Exceptions\CustomException;
use Symfony\Component\HttpKernel\Exception\ConflictHttpException;

class TagService extends BaseService
{
    protected $repository;

    public function __construct(TagRepository $tagRepository)
    {
        $this->repository = $tagRepository;
    }

    public function all(){
        return $this->repository->all()->load('contacts');
    }

    public function store(array $data)
    {
        $checkExistedEmail = $this->repository->findByEmail($data['email']);
        if ($checkExistedEmail) {
            throw new ConflictHttpException('Email already existed');
        }
        $this->repository->create($data);
    }
}
