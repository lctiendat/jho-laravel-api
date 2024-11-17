<?php

namespace App\Services;

use App\Interfaces\BaseRepositoryInterface;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

abstract class BaseService
{
    protected $repository;

    /**
     * BaseService constructor.
     * 
     * @param BaseRepositoryInterface $repository
     */
    public function __construct(BaseRepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Lấy tất cả bản ghi.
     *
     * @return mixed
     */
    public function all()
    {
        return $this->repository->all();
    }

    /**
     * Tìm kiếm bản ghi theo ID.
     *
     * @param int $id
     * @return mixed
     */
    public function find(int $id)
    {
        $datacheck = $this->repository->find($id);
        if (!$datacheck) {
            throw new NotFoundHttpException('Data not found');
        }
        return $this->repository->find($id);
    }

    /**
     * Tạo mới bản ghi.
     *
     * @param array $data
     * @return mixed
     */
    public function create(array $data)
    {
        return $this->repository->create($data);
    }

    /**
     * Cập nhật bản ghi.
     *
     * @param int $id
     * @param array $data
     * @return mixed
     */
    public function update(int $id, array $data)
    {
        $datacheck = $this->repository->find($id);
        if (!$datacheck) {
            throw new NotFoundHttpException('Data not found');
        }
        return $this->repository->update($id, $data);
    }

    /**
     * Xóa bản ghi.
     *
     * @param int $id
     * @return bool
     */
    public function delete(int $id)
    {
        $datacheck = $this->repository->find($id);
        if (!$datacheck) {
            throw new NotFoundHttpException('Data not found');
        }
        return $this->repository->delete($id);
    }
}
