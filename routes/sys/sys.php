<?php

Route::group([
    'namespace' => 'API\V1',
    'middleware' => 'api',
    'prefix' => 'v1'
], function () {
	Route::OPTIONS('upload', 'SysController@oupload');
	Route::post('upload', 'SysController@upload');
	Route::post('print', 'SysController@print');
});
