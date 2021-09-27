<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $guarded=[];

    public  function targets(){
        return $this->hasMany(Target::class);}

    public  function attachments(){
        return $this->hasMany(Attachment::class);

    }

    public function likes(){

        return $this->hasMany(Like::class)->sum('like');

    }

}
