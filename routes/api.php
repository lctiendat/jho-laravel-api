<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\GroupContactController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\TagController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::middleware('auth:sanctum')->group(function () {
    Route::resource('contact-groups', GroupContactController::class);
    Route::prefix('auth')->group(function () {
        Route::get('logout', [AuthController::class, 'logout'])->name('logout');
        Route::get('info', [AuthController::class, 'info'])->name('info');
    });
    Route::resource('contacts', ContactController::class);
});

Route::resource('tags', TagController::class);
Route::resource('managers', ManagerController::class);
Route::post('login', [AuthController::class, 'login'])->name('login');
