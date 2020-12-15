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
    return view('welcome');
});

Route::get('/post', function (){
    return App\Post::first();
});


Route::get('/post-category-name', function (){
    return App\Post::first()->cat->name;
});


Route::get('/post-category', function (){
    return App\Post::first()->cat;
});


Route::get('/category', function (){
    return App\Cat::first();
});

Route::get('/category-all', function (){
    return App\Cat::all();
});

Route::get('/category-first-post', function (){
    return App\Cat::first()->post;
});

Route::get('/category-first-post-title', function (){
    return App\Cat::first()->post[0]['title'];
});
