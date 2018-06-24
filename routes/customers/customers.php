<?php

Route::group([
    'namespace' => 'API\V1',
    'middleware' => 'api',
    'prefix' => 'v1'
], function () {
    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::get('customers', 'CustomerController@index');
        Route::get('customer/{id}', 'CustomerController@show');
        Route::post('customer/add', 'CustomerController@store');
        Route::put('customer/{customer}', 'CustomerController@update');
    });
});
