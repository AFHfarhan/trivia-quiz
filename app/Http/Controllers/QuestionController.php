<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;
use Firebase\JWT\JWT;
use Illuminate\Support\Facades\Hash;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = \App\Question::all();
        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            $res['message'] = "Data Success!";
            $res['values'] = $data;
            return response($res);
        }
        else{
            $res['message'] = "Empty!";
            return response($res);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id_category = $request->input('category');
        $id_type = $request->input('type');
        $id_difficulty = $request->input('difficulty');
        $id_quiz = $request->input('quiz');
        $question = $request->input('question');
        $correct_answer = $request->input('correct_answer');
        $incorrect_answer = $request->input('incorrect_answer');
        

        $data = new \App\Question();
        $data->id_category = $id_category;
        $data->id_type = $id_type;
        $data->id_difficulty = $id_difficulty;
        $data->id_quiz = $id_quiz;
        $data->question = $question;
        $data->correct_answer = $correct_answer;
        $data->incorrect_answer = $incorrect_answer;
        


        if($data->save()){
            $res['message'] = "Success! Question Saved!";
            $res['value'] = "$data";
            return response($res);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        //
    }
}
