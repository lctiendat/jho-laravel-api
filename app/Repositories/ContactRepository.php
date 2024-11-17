<?php

namespace App\Repositories;

use App\Models\Contact;

class ContactRepository extends BaseRepository
{
    public function __construct(Contact $model)
    {
        parent::__construct($model);
    }

    public function filter(array $filters)
    {
        $query = $this->model->query();

        if (!empty($filters['created_at'])) {
            $query->where('created_at', $filters['created_at']);
        }

        if (!empty($filters['created_by'])) {
            $query->where('created_by', $filters['created_by']);
        }

        if (!empty($filters['email'])) {
            $query->where('email', 'like', '%' . $filters['email'] . '%');
        }

        if (!empty($filters['manager_id'])) {
            $query->where('managed_by', $filters['manager_id']);
        }

        if (!empty($filters['tag_id'])) {
            $query->whereHas('tags', fn($q) => $q->where('id', $filters['tag_id']));
        }

        if (!empty($filters['list_id'])) {
            $query->whereHas('lists', fn($q) => $q->where('id', $filters['list_id']));
        }

        if (!empty($filters['search'])) {
            $query->where(function ($q) use ($filters) {
                $q->where('name', 'like', '%' . $filters['search'] . '%')
                    ->orWhere('phone', 'like', '%' . $filters['search'] . '%');
            });
        }

        return $query->with(['creator', 'manager', 'tags'])
            ->orderBy('created_at', 'desc')
            ->paginate($filters['per_page'] ?? 10);
    }
}
