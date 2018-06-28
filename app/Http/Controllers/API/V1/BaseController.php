<?php


namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\API\V1\InterceptorController as InterceptorController;
use App\Entities\Base;
use Validator;


class BaseController extends InterceptorController
{
    /**
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$input = $request->all();
		$query = Base::Where('delete_f',0);
		
		$skey = isset($input['key']) ? trim($input['key']) : '';
		if ($skey != '') {
			$query->Where(function ($query) use ($skey) {
				$query->orWhere('code', 'LIKE', '%' . $skey . '%');
				$query->orWhere('name', 'LIKE', '%' . $skey . '%');
			});
		}
		$iLimit = isset($input['page_size']) ? trim($input['page_size']) : 10;
		$rResult = $query->paginate($iLimit)->toArray();
        return $this->sendResponse($rResult, 'Bases retrieved successfully.');
    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'code' => 'required',
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $bases = Base::create($input);
        return $this->sendResponse($bases->toArray(), 'Bases created successfully.');
    }


    /**
     * @param $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $bases = Base::find($id);

        if (is_null($bases)) {
            return $this->sendError('Bases not found.');
        }

        return $this->sendResponse($bases->toArray(), 'Bases retrieved successfully.');
    }


    /**
     * @param Request $request
     * @param Base $base
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Base $base)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'code' => 'required',
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $base->code = $input['code'];
        $base->name = $input['name'];
        $base->price_base = $input['price_base'];
        $base->price = $input['price'];
        $base->description = $input['description'];
        $base->img = $input['img'];
        $base->status = $input['status'];
        $base->img_height = $input['img_height'];
        $base->img_width = $input['img_width'];
        $base->height = $input['height'];
        $base->width = $input['width'];
        $base->curls = $input['curls'];
        $base->rotate = $input['rotate'];
        $base->pulled_oblique = $input['pulled_oblique'];
        $base->colors = $input['colors'];
        $base->cdx = $input['cdx'];
        $base->cdy = $input['cdy'];
        $base->delete_f = $input['delete_f'];
        $base->save();

        return $this->sendResponse($base->toArray(), 'Bases updated successfully.');
    }
}