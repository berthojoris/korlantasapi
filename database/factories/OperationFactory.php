<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class OperationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $operation = $this->faker->unique()->sentence();
        $slug = Str::of($operation)->slug('-');

        return [
            'uuid' => Str::uuid(),
            'operation_name' => $operation,
            'slug' => $slug,
            'start' =>$this->faker->unique()->dateTimeBetween('-1 week', '+1 week')->format('Y-m-d'),
            'end' =>$this->faker->unique()->dateTimeBetween('-1 week', '+1 week')->format('Y-m-d'),
        ];
    }
}
