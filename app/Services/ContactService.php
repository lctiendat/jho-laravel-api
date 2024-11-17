<?php

namespace App\Services;

use App\Repositories\ContactRepository;
use App\Exceptions\CustomException;
use Exception;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class ContactService extends BaseService
{
    protected $repository;

    public function __construct(ContactRepository $contactRepository)
    {
        $this->repository = $contactRepository;
    }

    public function filter(array $data)
    {
        return $this->repository->filter($data)->load("tags", "creator", "manager","groupContact");
    }

    public function create(array $data)
    {
        try {
            DB::beginTransaction();
            $contact = $this->repository->create($data);
            if (!empty($data['tags'])) {
                $contact->tags()->sync($data['tags']);
            }
            DB::commit();

            return $contact->load('tags', "creator", "manager");
        } catch (\Throwable $th) {
            DB::rollBack();
            throw new Exception('Failed to create user: ' . $th->getMessage());
        }
    }

    public function update(int $id, array $data)
    {
        try {
            DB::beginTransaction();

            $contact = $this->repository->find($id);

            if (!$contact) {
                throw new NotFoundHttpException('Contact not found');
            }
            $contact->update($data);
            if (!empty($data['tags'])) {
                $contact->tags()->sync($data['tags']);
            }
            DB::commit();
            return $contact->load('tags', 'creator', 'manager');
        } catch (\Throwable $th) {
            DB::rollBack();
            throw new Exception('Failed to update contact: ' . $th->getMessage());
        }
    }

    public function delete(int $id)
    {
        try {
            DB::beginTransaction();
            $contact = $this->repository->find($id);
            if (!$contact) {
                throw new NotFoundHttpException('Contact not found');
            }

            $contact->tags()->detach();

            $this->repository->delete($id);

            DB::commit();

            return response()->json(['message' => 'Contact deleted successfully'], 200);
        } catch (\Throwable $th) {
            DB::rollBack();
            // Ném lỗi nếu có exception
            throw new Exception('Failed to delete contact: ' . $th->getMessage());
        }
    }
}
