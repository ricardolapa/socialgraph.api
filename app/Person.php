<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    public function group()
    {
        return $this->belongsTo(Group::class);
    }

    public function conections()
    {
        return $this->hasMany(Conection::class);
    }

    public function trips()
    {
        return $this->hasMany(Trip::class);
    }
}
