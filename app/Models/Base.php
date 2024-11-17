<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Base extends Model
{
    use SoftDeletes;

    /**
     *
     * @var bool
     */
    public $timestamps = true;

    /**
     *
     * @var array
     */
    protected $fillable = [
        'id'
    ];

    /**
     *
     * @var array
     */
    protected $guarded = [];

    /**
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'deleted_at' => 'datetime',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    protected $hidden = [
        'deleted_at',
        'updated_at'
    ];

    protected $primaryKey = 'id';
    public $incrementing = true;
    protected $keyType = 'int';
}
