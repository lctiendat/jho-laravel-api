<?php

namespace App\Http\Controllers;

use App\Http\Requests\GroupContactRequest;
use App\Services\GroupContactService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Throwable;

class GroupContactController extends Controller
{
    protected $service;
    public function __construct(GroupContactService $groupContactService)
    {
        $this->service = $groupContactService;
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

    public function store(GroupContactRequest $request)
    {

        $data = $request->validated();
        $contact = $this->service->create($data);
        return response()->json([
            "success" => true,
            "data" => $contact,
            "message" => "Create success"
        ]);
    }

    public function update(GroupContactRequest $request, $id)
    {
        $data = $request->validated();

        $contact = $this->service->update($id, $data);
        return response()->json([
            "success" => true,
            "data" => $contact,
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
