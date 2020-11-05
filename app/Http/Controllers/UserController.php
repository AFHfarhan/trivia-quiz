<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Firebase\JWT\JWT;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_name = $request->input('user_name');
        $user_type = $request->input('user_type');
        $email = $request->input('email');
        $password = $request->input('password');

        $data = new \App\User();
        $data->user_name = $user_name;
        $data->user_type = $user_type;
        $data->email = $email;
        $data->password = Hash::make($password);

        if($data->save()){
            $res['message'] = "Success! insert new account";
            $res['value'] = "$data";
            return response($res);
        }
    }

    public function login(Request $request){

        $email = $request->input('email');
        $password = $request->input('password');
        // dd($password);
        $data = \App\User::where('email', $email)->first();
        // dd($data->password);
        if($data){ //apakah email tersebut ada atau tidak
            
            // dd(Hash::check($password, $data->password));
            if(Hash::check($password, $data->password) ){
                    $key = "example_key";
                    $payload = array(
                    "id" => $data->id,
                    "user_type" => $data->user_type 
                    );
                    $jwt = JWT::encode($payload, $key);
                    
                    $val = array(
                        "data" => $data,
                        "token" => $jwt
                        );
                    $res['message'] = "Success!";
                    $res['value'] = $val;
                    return response($res);
            }
            else{
                $res['message'] = "Belum Berhasil!";
            return response()->json($res, 401);
            }
        }
        else{
            $res['message'] = "data tidak ada";
            return response()->json($res, 401);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\user  $user
     * @return \Illuminate\Http\Response
     */
    public function show(user $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\user  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(user $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\user  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, user $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\user  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(user $user)
    {
        //
    }
}
