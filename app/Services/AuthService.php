<?php

namespace App\Services;

use App\Repositories\ContactRepository;
use App\Exceptions\CustomException;
use App\Repositories\AuthRepository;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpKernel\Exception\BadRequestHttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class AuthService extends BaseService
{
    protected $repository;

    public function __construct(AuthRepository $authRepository)
    {
        $this->repository = $authRepository;
    }

    public function login(array $data)
    {
        $user = $this->repository->findByEmail($data["email"]);
        if (!$user) {
            throw new NotFoundHttpException("Email not found");
        }
        if (!Hash::check($data['password'], $user->password)) {
            throw new BadRequestHttpException("Password incorrect");
        }
        $token =  $user->createToken('API Token')->plainTextToken;
        $user['token'] = $token;
        return $user;
    }
}
