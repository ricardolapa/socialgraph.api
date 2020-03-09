<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    //

    public function visits()
    {
        return $this->hasMany(Trip::class);
    }

    
}
