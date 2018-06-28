<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Base extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'code', 'name', 'price_base', 'price', 'description', 'img', 'status',
		'cdx', 'cdy', 'img_height', 'img_width', 'height', 'width', 'rotate', 'curls',
		'pulled_oblique', 'colors', 'delete_f'
    ];
}