<?php

namespace App\Http\Controllers;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;

use App\Models\Cat;
use App\Http\Requests\StoreCatRequest;
use App\Http\Requests\UpdateCatRequest;

class CatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): Response
    {
        return response()->view('cats.index', [
            'cats' => Cat::orderBy('updated_at', 'desc')->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return response()->view('cats.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCatRequest $request): RedirectResponse
    {
        $validated = $request->validated();


        // insert only requests that already validated in the StoreRequest
        $create = Cat::create($validated);

        if($create) {
            // add flash for the success notification
            session()->flash('notif.success', 'Cat created successfully!');
            return redirect()->route('cats.index');
        }

        return abort(500);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id): Response
    {
        return response()->view('cats.show', [
            'cat' => Cat::findOrFail($id),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id): Response
    {
        return response()->view('cats.form', [
            'cat' => Cat::findOrFail($id),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCatRequest $request, string $id): RedirectResponse
    {
        $cat = Cat::findOrFail($id);
        $validated = $request->validated();

        $update = $cat->update($validated);

        if($update) {
            session()->flash('notif.success', 'Cat updated successfully!');
            return redirect()->route('cats.index');
        }

        return abort(500);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): RedirectResponse
    {
        $cat = Cat::findOrFail($id);

        // Storage::disk('public')->delete($cat->featured_image);

        $delete = $cat->delete($id);

        if($delete) {
            session()->flash('notif.success', 'Cat deleted successfully!');
            return redirect()->route('cats.index');
        }

        return abort(500);
    }








    // public function category_name(): Response
    // {
    //     return response()->view('posts.form', [
    //         'categorys' => Cat::orderBy('updated_at', 'desc')->get(),
    //     ]);
    // }
}
