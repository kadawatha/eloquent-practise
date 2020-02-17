<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Foo extends Model
{
    public function bar() {
        return $this->hasMany(Bar::class);
    }
}
