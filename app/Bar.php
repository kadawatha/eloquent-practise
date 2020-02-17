<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bar extends Model
{
    public function foo() {
        return $this->belongsTo(Foo::class);
    }
}
