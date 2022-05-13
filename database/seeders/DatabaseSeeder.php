<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Daily;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Polda::factory(2)->create();
        \App\Models\Operation::factory(10)->create();

        $faker = Faker::create();

        $insert = [
            [
                'polda_id' => 1,
                'operation_id' => 1,
                'uuid' => Str::uuid(),
                'tilang' => $faker->unique()->randomNumber(2, false),
                'teguran' => $faker->unique()->randomNumber(2, false),
                'kecelakaan' => $faker->unique()->randomNumber(2, false),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'polda_id' => 2,
                'operation_id' => 1,
                'uuid' => Str::uuid(),
                'tilang' => $faker->unique()->randomNumber(2, false),
                'teguran' => $faker->unique()->randomNumber(2, false),
                'kecelakaan' => $faker->unique()->randomNumber(2, false),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
        ];

        Daily::insert($insert);

        User::create([
            'name' => 'Bertho',
            'email' => 'berthojoris@gmail.com',
            'email_verified_at' => Carbon::now(),
            'password' => Hash::make('malaquena'),
            'access' => 'administrator',
        ]);

        User::create([
            'name' => 'Paul',
            'email' => 'pauljoris@gmail.com',
            'email_verified_at' => Carbon::now(),
            'password' => Hash::make('malaquena'),
            'access' => 'user',
        ]);
    }
}
