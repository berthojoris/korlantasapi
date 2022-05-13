<?php

namespace App\Rules;

use App\Models\Daily;
use Illuminate\Support\Carbon;
use Illuminate\Contracts\Validation\Rule;

class PreventDoubleSubmit implements Rule
{

    protected $operationId;

    public function __construct($param)
    {
        $this->operationId = $param;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        return Daily::whereDate('created_at', Carbon::now())->where('polda_id', $value)->where('operation_id', $this->operationId)->count() == 0;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Your already submit today';
    }
}
