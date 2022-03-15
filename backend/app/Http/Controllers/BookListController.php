<?php

namespace App\Http\Controllers;

use App\Models\BookList;
use App\Http\Requests\StoreBookListRequest;
use App\Http\Requests\UpdateBookListRequest;

class BookListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Http\Requests\StoreBookListRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBookListRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function show(BookList $bookList)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function edit(BookList $bookList)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBookListRequest  $request
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBookListRequest $request, BookList $bookList)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function destroy(BookList $bookList)
    {
        //
    }
}
