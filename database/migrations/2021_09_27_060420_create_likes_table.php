<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLikesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('likes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('project_id')->constrained('projects');
            $table->foreignId('user_id')->constrained('users');

            $table->smallInteger('like')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migratio7ns.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('likes');
    }
}
