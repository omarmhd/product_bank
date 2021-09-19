<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attachment extends Model
{
    use HasFactory;
    protected $guarded=[];
    protected $fillable = ['project_id','attachment','attachment_name','type'];
    protected $primaryKey = 'id';



    public function project(){
        return $this->belongsTo(Project::class);

    }
}
