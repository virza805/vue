<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function news()
    {

        // $newsData = DB::select('
        //     select a.*,
        //     GROUP_CONCAT(b.name) as category_name,
        //     GROUP_CONCAT(b.id) as cat_id
        //     from posts a JOIN cats b
        //     on find_in_set(b.id,a.cat)
        //     GROUP BY a.id
        //     ORDER by a.id DESC
        // ');
        $newsData = DB::select('
            SELECT a.*,
                GROUP_CONCAT(b.name) as category_name,
                GROUP_CONCAT(b.id) as cat_id,
                GROUP_CONCAT(c.name) as tag_name,
                GROUP_CONCAT(c.id) as tag_id
            FROM posts a
            JOIN cats b ON find_in_set(b.id, a.cat)
            JOIN tags c ON find_in_set(c.id, a.tag)
            GROUP BY a.id
            ORDER BY a.id DESC
        ');

        return response()->json([
            'err_message' => 'Show all news data',
            'data' => $newsData,
        ], 200);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function getNews(string $id)
    {
        // $sql = 'select * from posts where find_in_set("'.$di.'",cat)';
        $singlePost = DB::select('select * from posts where id = ?', [$id]);

        return response()->json($singlePost, 200);
    }

    /**
     * Display the specified resource.
     */
    public function getCatNews(string $id)
    {
        $sql = 'select * from posts where find_in_set("'.$id.'",cat)';
        $catPost = DB::select($sql);

        return response()->json($catPost, 200);
    }
    /**
     * Display the specified resource.
     */
    public function getTagNews(string $id)
    {
        $sql = 'select * from posts where find_in_set("'.$id.'",tag)';
        $catPost = DB::select($sql);

        return response()->json($catPost, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
