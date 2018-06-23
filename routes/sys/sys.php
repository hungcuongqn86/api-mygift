<?php

Route::group([
    'namespace' => 'API\V1',
    'middleware' => 'api',
    'prefix' => 'v1'
], function () {
    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::post('upload', 'SysController@upload');
    });
});
