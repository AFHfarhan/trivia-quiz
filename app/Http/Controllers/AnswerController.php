<?php

namespace App\Http\Controllers;

use App\Answer;
use Illuminate\Http\Request;
use Firebase\JWT\JWT;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class AnswerController extends Controller
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
        $header = $request->header('Authorization');
        $token = explode(' ',$header);
        // dd($token[1]);
        $key = "example_key";
        $decoded = JWT::decode($token[1], $key, array('HS256'));

        $question = \App\Question::where('id_quiz',$request->input('quiz'))->get();
        

        $id_user = $decoded->id;
        $id_quiz = $request->input('quiz');
        $answer_1 = $request->input('answer_1');
        $answer_2 = $request->input('answer_2');
        $answer_3 = $request->input('answer_3');
        $answer_4 = $request->input('answer_4');
        $answer_5 = $request->input('answer_5');
        $answer_6 = $request->input('answer_6');
        $answer_7 = $request->input('answer_7');
        $answer_8 = $request->input('answer_8');
        $answer_9 = $request->input('answer_9');
        $answer_10 = $request->input('answer_10');

        $answers = array(   $answer_1,
        $answer_2,
        $answer_3,
        $answer_4,
        $answer_5,
        $answer_6,
         $answer_7,
        $answer_8,
        $answer_9,
        $answer_10
        );
        $total = 0;
        foreach($question as $ca)
        {
            foreach($answers as $asw){
                if($ca->correct_answer == $asw)
                {
                    $total += 10;
                }
            }
            
        }

        $total_score = $total;
        $ranking = "";
        
        

        $data = new \App\Answer();
        $data->id_user = $id_user;
        $data->id_quiz = $id_quiz;
        $data->answer_1 = $answer_1;
        $data->answer_2 = $answer_2;
        $data->answer_3 = $answer_3;
        $data->answer_4 = $answer_4;
        $data->answer_5 = $answer_5;
        $data->answer_6 = $answer_6;
        $data->answer_7 = $answer_7;
        $data->answer_8 = $answer_8;
        $data->answer_9 = $answer_9;
        $data->answer_10 = $answer_10;
        $data->total_score = $total_score;
        $data->ranking = $ranking;
        


        if($data->save()){
            $res['message'] = "Success! Answer Saved!";
            $res['value'] = "$data";
            return response($res);
        }
    }

    public function ranking(Request $request, $id_answer){
        $header = $request->header('Authorization');
        $token = explode(' ',$header);
        // dd($token[1]);
        $key = "example_key";
        $decoded = JWT::decode($token[1], $key, array('HS256'));

        // $answers = DB::table('answers')
        //              ->select(DB::raw('count(*) as rank, total_score'))
        //              ->groupBy('total_score')->orderBy('total_score','desc')
        //              ->get();

        $collection = collect(\App\Answer::orderBy('total_score', 'DESC')->get());
        $data       = $collection->where('id', $id_answer);
        $value      = $data->keys()->first() + 1;


        // $answers = \App\Answer::where('id_quiz',$request->input('quiz'))->orderBy('total_score', 'desc')->get();
        // dd($value);

        $data = \App\Answer::where('id',$id_answer)->first();
        $data->ranking = $value;

        if($data->save()){
            $res['message'] = "Success! your ranking is! : $value" ;
            $res['value'] = "$data";
            return response($res);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Answer  $answer
     * @return \Illuminate\Http\Response
     */
    public function show(Answer $answer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Answer  $answer
     * @return \Illuminate\Http\Response
     */
    public function edit(Answer $answer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Answer  $answer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Answer $answer)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Answer  $answer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Answer $answer)
    {
        //
    }
}
