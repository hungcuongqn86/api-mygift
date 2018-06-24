<?php


namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\API\V1\InterceptorController as InterceptorController;
use App\Entities\Customer;
use Validator;


class CustomerController extends InterceptorController
{
    /**
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$input = $request->all();
		$query = Customer::Where('delete_f',0);
		
		$skey = isset($input['key']) ? trim($input['key']) : '';
		if ($skey != '') {
			$query->Where(function ($query) use ($skey) {
				$query->orWhere('code', 'LIKE', '%' . $skey . '%');
				$query->orWhere('name', 'LIKE', '%' . $skey . '%');
				$query->orWhere('phone', 'LIKE', '%' . $skey . '%');
				$query->orWhere('email', 'LIKE', '%' . $skey . '%');
				$query->orWhere('address', 'LIKE', '%' . $skey . '%');
			});
		}
		$iLimit = isset($input['page_size']) ? trim($input['page_size']) : 10;
		$rResult = $query->paginate($iLimit)->toArray();
        return $this->sendResponse($rResult, 'Customers retrieved successfully.');
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

        $customer = Customer::create($input);
        return $this->sendResponse($customer->toArray(), 'Customer created successfully.');
    }


    /**
     * @param $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $customer = Customer::find($id);

        if (is_null($customer)) {
            return $this->sendError('Customer not found.');
        }

        return $this->sendResponse($customer->toArray(), 'Customer retrieved successfully.');
    }


    /**
     * @param Request $request
     * @param Customer $customer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Customer $customer)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'code' => 'required',
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $customer->code = $input['code'];
        $customer->name = $input['name'];
        $customer->phone = $input['phone'];
        $customer->email = $input['email'];
        $customer->address = $input['address'];
        $customer->note = $input['note'];
        $customer->delete_f = $input['delete_f'];
        $customer->save();

        return $this->sendResponse($customer->toArray(), 'Customer updated successfully.');
    }
}