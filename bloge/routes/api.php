<?php

use App\Http\Controllers\VueController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// Show this route for all user ( Login Or without Login )
Route::group(['prefix' => '/all' ], function() {

    Route::get('/news', [VueController::class, 'news']);
    // Read all slider data in frontend
    Route::get('/news-detail/{id}', [VueController::class, 'getNews']);  // Read post details
    Route::get('/related-news/{id}', [VueController::class, 'getCatNews']);  // Read Related post data
    Route::get('/tag-news/{id}', [VueController::class, 'getTagNews']);  // Read Related post data
    Route::post('/news-delete/{id}', [VueController::class, 'destroy']);
});

