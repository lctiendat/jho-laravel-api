<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactFilterRequest extends BaseRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'created_from' => 'date|nullable',
            'created_to'   => 'date|nullable',
            'created_by'   => 'integer|nullable',
            'email'        => 'string|nullable',
            'manager_id'   => 'integer|nullable',
            'tag_id'       => 'integer|nullable',
            'list_id'      => 'integer|nullable',
            'search'       => 'string|nullable',
            'per_page'     => 'integer|nullable',
        ];
    }
}
