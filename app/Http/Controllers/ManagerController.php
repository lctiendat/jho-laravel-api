<?php

namespace App\Http\Controllers;

use App\Http\Requests\ManagerRequest;
use App\Services\ManagerService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Throwable;

class ManagerController extends Controller
{
    protected $service;
    public function __construct(ManagerService $managerService)
    {
        $this->service = $managerService;
    }

    public function index(): JsonResponse
    {
        $data = $this->service->all();
        return response()->json([
            "success" => true,
            "data" => $data,
            "message" => "Get success"
        ]);
    }

    public function show($id)
    {
        $data = $this->service->find($id);
        return response()->json([
            "success" => true,
            "data" => $data
        ]);
    }

    public function store(ManagerRequest $request)
    {
        try {
            $data = $request->validated();

            $manager = $this->service->create($data);
            return response()->json([
                "success" => true,
                "data" => $manager,
                "message" => "Create success"
            ]);
        } catch (Throwable $e) {
            return response()->json([
                "success" => true,
                "data" => null,
                "message" => "Create false"
            ]);
        }
    }

    public function update(ManagerRequest $request, $id)
    {
        $data = $request->validated();

        $manager = $this->service->update($id, $data);
        return response()->json([
            "success" => true,
            "data" => $manager,
            "message" => "Update success"
        ]);
    }

    public function destroy($id)
    {
            $this->service->delete($id);
            return response()->json([
                "success" => true,
                "data" => null,
                "message" => "Delete success"
            ]);
    }
}
