<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_category');
            $table->unsignedInteger('id_type');
            $table->unsignedInteger('id_difficulty');
            $table->unsignedInteger('id_quiz');
            $table->string('question');
            $table->string('correct_answer');
            $table->string('incorrect_answer');
            $table->softDeletes('deleted_at');
            $table->timestamps();
            $table->foreign('id_category')->references('id')->on('categories');
            $table->foreign('id_type')->references('id')->on('types');
            $table->foreign('id_difficulty')->references('id')->on('difficulties');
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
        Schema::dropIfExists('questions');
    }
}
