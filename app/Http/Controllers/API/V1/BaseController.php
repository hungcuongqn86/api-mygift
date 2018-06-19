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
    public function index()
    {
        $bases = Base::all();
        return $this->sendResponse($bases->toArray(), 'Bases retrieved successfully.');
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
        $base->save();

        return $this->sendResponse($base->toArray(), 'Bases updated successfully.');
    }


    /**
     * @param Base $base
     * @return \Illuminate\Http\Response
     * @throws \Exception
     */
    public function destroy(Base $base)
    {
        $base->delete();
        return $this->sendResponse($base->toArray(), 'Bases deleted successfully.');
    }
}