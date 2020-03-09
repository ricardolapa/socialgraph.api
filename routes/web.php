<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/person/{id?}', 'PersonController@show');
Route::get('/person-details/{id?}', 'PersonController@details');
Route::get('/person-trips/{person_id?}', 'PersonController@trips');
Route::get('/person-friends/{person_id?}', 'PersonController@friends');
Route::get('/person-friends/of-friends/{person_id?}', 'PersonController@friendsOfFriends');
Route::get('/person-friends/suggested-friends/{person_id?}', 'PersonController@suggestedFriends');


Route::get('/trips/{id?}', 'Trip@show');
Route::get('/trips-person/{person_id}', 'Trip@allFromPerson');
Route::get('/trips-recomended/{person_id}', 'Trip@recomendedCities');
