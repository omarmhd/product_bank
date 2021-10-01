<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

            $table->string('manager_name')->nullable();;
            $table->string('manager_phone')->nullable();;
            $table->string('manager_job')->nullable();;
            $table->string('manager_email')->nullable();;
            $table->text('description');
            $table->enum('status',['معلق','تم التنفيذ','قيد التنفيذ','مغلق'])->nullable();;
            $table->string('project_health')->nullable();
            $table->string('reason_status')->nullable();
            $table->text('notes')->nullable();
            $table->date('last_update')->nullable();;
            $table->string('image');
            $table->string('initial_evaluation')->nullable();
            $table->string('final_evaluation')->nullable();



            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}
