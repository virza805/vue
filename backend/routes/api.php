<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\BookListController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1'], function(){

    Route::group(['prefix' => '/user', 'middleware'=>['guest:api'], 'namespace' => 'Api' ], function(){

        Route::post('/login', [AuthController::class, 'login']);
        Route::post('/register', [AuthController::class, 'register']);
        Route::post('/forget-password', [AuthController::class, 'forget']);
        Route::post('/forget-token', [AuthController::class, 'forget_token']);
    });

    Route::group(['prefix' => '/user', 'middleware'=>['auth:api'], 'namespace' => 'Api'  ], function(){
        Route::get('/logout', [AuthController::class, 'logout']);
        Route::post('/update-profile', [AuthController::class, 'update_profile']);
        Route::post('/update-profile-pic', [AuthController::class, 'update_profile_pic']);


    });

    Route::group(['prefix' => '/book-list', 'middleware'=>['auth:api'] ], function(){

        Route::get('/', [BookListController::class, 'book_list']);
        Route::post('/store', [BookListController::class, 'store']);
        Route::post('/update', [BookListController::class, 'update']);
        Route::get('/get/{id}', [BookListController::class, 'get']);
        Route::post('/delete', [BookListController::class, 'delete']);
        Route::post('/delete-multi', [BookListController::class, 'delete_multi']);

    });

});

// Route::post('/test-data', function() {
//     return request()->all();
// });
// Route::get('/test-data', function() {
//     // return "heyyy this is a very secret router";
//     return ['user'=>'test'];
// });
// Route::get('user', [AuthController::class, 'user'])->middleware('auth:sanctum');
