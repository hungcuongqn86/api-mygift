<?php


namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\API\V1\InterceptorController as InterceptorController;
use App\Entities\Base;
use Validator;
use Image;


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

    public function print(Request $request)
    {
        $baseid = $request->input('base');
        $base = Base::find($baseid);
        if (is_null($base)) {
            return $this->sendError('Bases not found.');
        }

        $bg = urldecode($base['img']);
        $bgpath = public_path('') . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $bg);
        if (!file_exists($bgpath)) {
            return $this->sendError('Bases img not found.');
        }

        $file = $request->input('file');
        $des = urldecode($file);
        $despath = public_path('') . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $des);

        //compositeImage
        $imagick1 = Image::make($bgpath);
        $imagick2 = Image::make($despath)->resize(100, 100);
        $imagick1->insert($imagick2,'top-left', 280, 220);
        // $imagick2->setImageFormat('png');
        $imageName = time() . '.' . 'test.png';
        $imagick1->save(public_path('design/') . $imageName);
        return $this->sendResponse([$bgpath, $despath], 'Successfully.');
    }

    public function upload()
    {
        request()->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $imageName = time() . '.' . request()->image->getClientOriginalExtension();
        try {
            $dir = 'upload' . DIRECTORY_SEPARATOR . date('Y') . DIRECTORY_SEPARATOR . date('m') . DIRECTORY_SEPARATOR . date('d');
            request()->image->move(public_path($dir), $imageName);

            $url = urlencode(str_replace(DIRECTORY_SEPARATOR, '/', $dir . DIRECTORY_SEPARATOR . $imageName));
            return $this->sendResponse(['url' => $url], 'Upload successfully.');
        } catch (Exception $e) {
            return $this->sendError('Upload Error.', $e->getMessage());
        }
    }
}