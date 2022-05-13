<?php

namespace App\Http\Requests;

use Illuminate\Support\Str;
use App\Rules\PreventDoubleSubmit;
use Illuminate\Foundation\Http\FormRequest;

class StoreDailyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'uuid' => Str::uuid(),
        ]);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'polda_id' => [
                'required',
                'integer',
                'exists:poldas,id',
                new PreventDoubleSubmit()
            ],
            'operation_id' => 'required|integer|exists:operations,id',
            'tilang' => 'required|numeric',
            'teguran' => 'required|numeric',
            'kecelakaan' => 'required|numeric',
        ];
    }
}
