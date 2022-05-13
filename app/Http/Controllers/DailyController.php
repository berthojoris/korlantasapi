<?php

namespace App\Http\Controllers;

use App\Models\Daily;
use Illuminate\Support\Carbon;
use App\Http\Requests\StoreDailyRequest;
use App\Http\Requests\UpdateDailyRequest;

class DailyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Daily::latest()->get();

        return $data;
    }

    public function submitToday()
    {
        $data = Daily::with('polda', 'operation')->whereDate('created_at', Carbon::now())->get();

        return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreDailyRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDailyRequest $request)
    {
        Daily::create($request->all());
        return [
            "msg" => "Data created",
            "error" => null
        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Daily  $daily
     * @return \Illuminate\Http\Response
     */
    public function show(Daily $daily)
    {
        return $daily;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Daily  $daily
     * @return \Illuminate\Http\Response
     */
    public function edit(Daily $daily)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateDailyRequest  $request
     * @param  \App\Models\Daily  $daily
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDailyRequest $request, Daily $daily)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Daily  $daily
     * @return \Illuminate\Http\Response
     */
    public function destroy(Daily $daily)
    {
        //
    }
}
