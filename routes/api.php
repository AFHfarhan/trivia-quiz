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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login','UserController@login');
Route::post('/user','UserController@store');

Route::post('/category','CategoryController@store')->middleware('auth.admin');
Route::post('/type','TypeController@store')->middleware('auth.admin');
Route::post('/difficulty','DifficultyController@store')->middleware('auth.admin');
Route::post('/quiz','QuizController@store')->middleware('auth.admin');
Route::post('/question','QuestionController@store')->middleware('auth.admin');
Route::get('/question','QuestionController@index')->middleware('auth.admin');

Route::post('/answer','AnswerController@store')->middleware('auth.participant');
Route::put('/rank/{id_answer}','AnswerController@ranking')->middleware('auth.participant');

