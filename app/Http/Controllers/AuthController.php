<?php

namespace App\Http\Controllers;

use App\Http\Requests\AuthRequest;
use App\Services\AuthService;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    protected $service;
    public function __construct(AuthService $authService)
    {
        $this->service = $authService;
    }

    public function login(AuthRequest $request)
    {
        $data = $request->validated();

        $user = $this->service->login($data);
        return response()->json([
            "success" => true,
            "data" => $user,
            "message" => "Login success"
        ]);
    }

    public function info(Request $request)
    {
        return response()->json([
            "success" => true,
            "data" =>  $request->user(),
            "message" => "Login success"
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            "success" => true,
            "data" => null,
            "message" => "Logout success"
        ]);
    }
}
