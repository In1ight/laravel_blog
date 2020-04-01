<?php

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
    return redirect('/posts');
});
Route::get('/posts', 'ArticleController@index');
Route::get('/posts/{id}', 'ArticleController@article');
Route::get('/about', 'AboutController@about');
Route::get('/category/{cat_id}', 'ArticleController@category');
Route::get('/sale', 'ArticleController@getSale');
Route::get('/add/{id}', 'ArticleController@getInsert');
Route::get('/edit/{id}/{des}', 'ArticleController@getEdit');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
