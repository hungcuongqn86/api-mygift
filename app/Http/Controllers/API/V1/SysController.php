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
		try {
			$dir = 'upload'.DIRECTORY_SEPARATOR.date('Y').DIRECTORY_SEPARATOR.date('m').DIRECTORY_SEPARATOR.date('d');
			request()->image->move(public_path($dir), $imageName);
			$url = urlencode(str_replace(DIRECTORY_SEPARATOR,'/',$dir.DIRECTORY_SEPARATOR.$imageName));
			return $this->sendResponse(['url'=>$url], 'Upload successfully.');
		} catch (Exception $e) {
			return $this->sendError('Upload Error.',$e->getMessage());
		}
    }
}