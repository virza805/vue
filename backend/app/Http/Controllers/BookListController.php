<?php

namespace App\Http\Controllers;

use App\Models\BookList;
use App\Http\Requests\StoreBookListRequest;
use App\Http\Requests\UpdateBookListRequest;
use Dotenv\Validator;
use Illuminate\Support\Facades\Storage;

class BookListController extends Controller
{
    /**
     * Display a Book listing as paginate from the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function book_list()
    {
        $book_list = BookList::where('status', 1)->orderBy('id', 'DESC')->paginate(10);

        return response()->json($book_list, 200);
    }

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

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'min:4'],
            'author' => ['required'],
            'section' => ['required'],
            'image' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        $book = BookList::create($request->except('image'));
        if ($request->hasFile('image')) {
            $book->image = Storage::put('upload/books', $request->file('image'));
            $book->save();
        }

        return response()->json($book, 200);
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
