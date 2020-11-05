<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_user');
            $table->unsignedInteger('id_quiz');
            $table->string('answer_1');
            $table->string('answer_2');
            $table->string('answer_3');
            $table->string('answer_4')->null();
            $table->string('answer_5')->null();
            $table->string('answer_6')->null();
            $table->string('answer_7')->null();
            $table->string('answer_8')->null();
            $table->string('answer_9')->null();
            $table->string('answer_10')->null();
            $table->string('answer_11')->null();
            $table->string('answer_12')->null();
            $table->string('answer_13')->null();
            $table->string('answer_14')->null();
            $table->string('answer_15')->null();
            $table->integer('total_score')->null();
            $table->string('ranking')->null();
            $table->softDeletes('deleted_at');
            $table->timestamps();
            $table->foreign('id_user')->references('id')->on('users');
            $table->foreign('id_quiz')->references('id')->on('quizzes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('answers');
    }
}
