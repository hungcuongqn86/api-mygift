<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'code', 'name', 'phone', 'email', 'address', 'note', 'delete_f'
    ];
}