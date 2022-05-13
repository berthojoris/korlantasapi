<?php

namespace App\Http\Controllers;

use App\Models\Polda;
use App\Http\Requests\StorePoldaRequest;
use App\Http\Requests\UpdatePoldaRequest;

class PoldaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Polda::latest()->get();

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
     * @param  \App\Http\Requests\StorePoldaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePoldaRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Polda  $polda
     * @return \Illuminate\Http\Response
     */
    public function show(Polda $polda)
    {
        return $polda;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Polda  $polda
     * @return \Illuminate\Http\Response
     */
    public function edit(Polda $polda)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePoldaRequest  $request
     * @param  \App\Models\Polda  $polda
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePoldaRequest $request, Polda $polda)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Polda  $polda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Polda $polda)
    {
        //
    }
}
