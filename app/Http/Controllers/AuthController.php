<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function getTokenAuth()
    {
        $email = request('email');
        $password = request('password');

        $user = User::whereEmail($email)->first();

        if(!empty($user)) {
            if(Hash::check($password, $user->password)) {
                $token = $user->createToken(config('app.token_name'))->plainTextToken;

                $response = [
                    'token' => $token,
                    'message' => "Login success",
                ];

                return response()->json($response, 201);
            } else {
                abort(404, "Password not match");
            }
        } else {
            abort(404, "User not found");
        }
    }

    public function getUserLogin()
    {
        return auth()->user();
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();

        $response = [
            'token' => null,
            'message' => "Logout success",
        ];

        return response()->json($response, 201);
    }
}
