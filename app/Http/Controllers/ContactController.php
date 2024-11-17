<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactFilterRequest;
use App\Http\Requests\ContactRequest;
use App\Services\ContactService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Throwable;

class ContactController extends Controller
{
    protected $service;
    public function __construct(ContactService $contactService)
    {
        $this->service = $contactService;
    }

    public function index(ContactFilterRequest $request): JsonResponse
    {
        $data = $this->service->filter($request->validated());
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

    public function store(ContactRequest $request)
    {
        $data = $request->validated();

        $data['created_by'] = $request->user()->id;
        $contact = $this->service->create($data);
        return response()->json([
            "success" => true,
            "data" => $contact,
            "message" => "Create success"
        ]);
    }

    public function update(ContactRequest $request, $id)
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
