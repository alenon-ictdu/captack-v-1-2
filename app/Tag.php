<?php

namespace ICTDUInventory;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function books(){
    	return $this->belongsToMany('ICTDUInventory\Book');
    }
}
