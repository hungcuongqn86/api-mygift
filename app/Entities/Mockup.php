<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Mockup extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'img', 'base_id', 'cdx', 'cdy', 'img_height', 'img_width', 'height', 'width', 'rotate', 'curls',
        'pulled_oblique', 'status', 'delete_f'
    ];
}