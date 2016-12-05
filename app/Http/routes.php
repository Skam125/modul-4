<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/about', 'PagesController@about');

Route::get('/', 'NewsController@index');
Route::get('/show/{id}', 'NewsController@show');
Route::get('/category/{title}', 'NewsController@showCategory');
Route::get('/tag/{tag}', 'NewsController@showByTags');
Route::get('/test', 'NewsController@test');
Route::post('/storeMail', 'SpamController@storeMail');
Route::post('/storeComment', 'NewsController@storeComment');
Route::post('/plus', 'NewsController@plus');
Route::post('/minus', 'NewsController@minus');
Route::get('/search', 'NewsController@search');
Route::get('/user/{user}', 'NewsController@userComments');


//// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');
//
//// Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');



Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {


    Route::post('/store/ad', 'AdminController@storeAd'); 
    Route::post('/store/color', 'AdminController@storeColor');
    Route::post('/store/category', 'AdminController@storeCategory');
    Route::post('/store/tag', 'AdminController@storeNewTag');
    Route::post('/store/news_tags', 'AdminController@storeNewsTags');
    Route::post('/store/news_categories', 'AdminController@storeNewsCategories');
    Route::post('/store/images', 'AdminController@storeImages');
    Route::post('/store/news', 'AdminController@storeNews');
    Route::post('/store/menu', 'AdminController@storeMenu');
    Route::post('/update/messages', 'AdminController@updateMessages');
    Route::post('/add/messages', 'AdminController@addComment');
    Route::post('/delete/menu', 'AdminController@deleteMenu');
    Route::post('/message/approve', 'AdminController@plus');
    Route::get('/', 'AdminController@index');

});