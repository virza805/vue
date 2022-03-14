<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

    Route::group(['prefix' => '/user', 'middleware'=>['guest:api'] ], function(){

        Route::post('/login',function(){
            $req_data = request()->only('email', 'password');
            if(Auth::attempt($req_data)) {
                $user = Auth::user();
                $data['access_token'] = $user->createToken('accessToken')->accessToken;
                $data['user'] = $user;
                return response()->json($data, 200,);
            }else{
                $data['message'] = 'user not exists!!';
                return response()->json($data, 401);
            }
        });

    });

    Route::group(['prefix' => '/user', 'middleware'=>['auth:api'] ], function(){

    });

});

// Route::get('/test', function() {
//     // return "heyyy this is a very secret router";
//     return ['user'=>'test'];
// });
// Route::get('user', [AuthController::class, 'user'])->middleware('auth:sanctum');
