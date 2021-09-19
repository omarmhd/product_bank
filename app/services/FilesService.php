<?php

namespace App\services;

class  FilesService
{


    public function upload($file, $path,$name_project="")
    {
        $name = $file->getClientOriginalName();
        $extension = $file->getClientOriginalExtension();
        $fileName = $name_project ."-".time() . "." . $extension;
         $file->move($path . '/', $fileName);
         return $fileName;
     }
}
