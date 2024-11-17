<?php

namespace App\Http\Controllers;

use App\Http\Requests\TagRequest;
use App\Services\TagService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Throwable;

class TagController extends Controller
{
    protected $service;
    public function __construct(TagService $tagService)
    {
        $this->service = $tagService;
    }

    public function index(): JsonResponse
    {
        $tags = $this->service->all();
        return response()->json([
            "success" => true,
            "data" => $tags,
            "message" => "Get success"
        ]);
    }

    public function show($id)
    {
        $tag = $this->service->find($id);
        return response()->json([
            "success" => true,
            "data" => $tag
        ]);
    }

    public function store(TagRequest $request)
    {
        $data = $request->validated();

        $tag = $this->service->create($data);
        return response()->json([
            "success" => true,
            "data" => $tag,
            "message" => "Create success"
        ]);
    }

    public function update(TagRequest $request, $id)
    {

        $data = $request->validated();

        $tag = $this->service->update($id, $data);
        return response()->json([
            "success" => true,
            "data" => $tag,
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
