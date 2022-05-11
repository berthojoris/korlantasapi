<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GameController extends Controller
{
    public function index()
    {
        return [
            [
                'id' => 1,
                'title' => 'Game A',
                'desc' => 'Detail Tentang Game A',
                'icon' => 'a.png'
            ],
            [
                'id' => 2,
                'title' => 'Game B',
                'desc' => 'Detail Tentang Game B',
                'icon' => 'b.png'
            ],
            [
                'id' => 3,
                'title' => 'Game C',
                'desc' => 'Detail Tentang Game C',
                'icon' => 'c.png'
            ]
        ];
    }

    public function add()
    {
        logger(request()->all());

        return response()->json(['status' => 'Success'], 200);
    }

    public function delete()
    {
        logger(request()->all());

        return response()->json(['status' => 'Success'], 200);
    }

    public function edit()
    {
        logger(request()->all());

        return response()->json(['status' => 'Success'], 200);
    }

    public function select()
    {
        logger(request()->all());

        return response()->json(['status' => 'Success'], 200);
    }
}
