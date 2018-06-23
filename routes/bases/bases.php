<?php

Route::group([
    'namespace' => 'API\V1',
    'middleware' => 'api',
    'prefix' => 'v1'
], function () {
    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::get('bases', 'BaseController@index');
        Route::get('base/{id}', 'BaseController@show');
        Route::post('base/add', 'BaseController@store');
        Route::put('base/{base}', 'BaseController@update');
    });
});
