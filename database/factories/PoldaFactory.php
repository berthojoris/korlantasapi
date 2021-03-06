<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PoldaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'polda_name' => $this->faker->unique()->cityPrefix(),
        ];
    }
}
