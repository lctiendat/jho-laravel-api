<?php

namespace App\Services;

use App\Repositories\ContactRepository;
use App\Exceptions\CustomException;
use App\Repositories\GroupContactRepository;
use Exception;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class GroupContactService extends BaseService
{
    protected $repository;

    public function __construct(GroupContactRepository $groupContactRepository)
    {
        $this->repository = $groupContactRepository;
    }

    public function all()
    {
        return $this->repository->all()->load("contacts");
    }

    public function create(array $data)
    {
        try {
            DB::beginTransaction();
            $groupContact = $this->repository->create($data);
            if (!empty($data['contacts'])) {
                $groupContact->contacts()->sync($data['contacts']);
            }
            DB::commit();

            return $groupContact->load('contacts');
        } catch (\Throwable $th) {
            DB::rollBack();
            throw new Exception('Failed to create user: ' . $th->getMessage());
        }
    }

    public function update(int $id, array $data)
    {
        try {
            DB::beginTransaction();

            $groupContact = $this->repository->find($id);

            if (!$groupContact) {
                throw new NotFoundHttpException('Group Contact not found');
            }
            $groupContact->update($data);
            if (!empty($data['contacts'])) {
                $groupContact->contacts()->sync($data['contacts']);
            }
            DB::commit();
            return $groupContact->load('contacts');
        } catch (\Throwable $th) {
            DB::rollBack();
            throw new Exception('Failed to update contact: ' . $th->getMessage());
        }
    }

    public function delete(int $id)
    {
        try {
            DB::beginTransaction();
            $groupContact = $this->repository->find($id);
            if (!$groupContact) {
                throw new NotFoundHttpException('Contact not found');
            }

            $groupContact->contacts()->detach();

            $this->repository->delete($id);

            DB::commit();

            return response()->json(['message' => 'Group Contact deleted successfully'], 200);
        } catch (\Throwable $th) {
            DB::rollBack();
            throw new Exception( $th->getMessage());
        }
    }
}
