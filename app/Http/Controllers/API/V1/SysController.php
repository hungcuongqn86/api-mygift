<?php


namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\API\V1\InterceptorController as InterceptorController;
use Validator;


class SysController extends InterceptorController
{
    /**
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bases = Base::all();
        return $this->sendResponse($bases->toArray(), 'Bases retrieved successfully.');
    }

    public function upload()
    {
        request()->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $imageName = time() . '.' . request()->image->getClientOriginalExtension();
        request()->image->move(public_path('upload'), $imageName);

        return $this->sendResponse([], 'Upload successfully.');
    }
}