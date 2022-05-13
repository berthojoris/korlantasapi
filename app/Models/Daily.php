<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Daily extends Model
{
    use HasFactory;

    public function polda()
    {
        return $this->belongsTo(Polda::class);
    }

    public function operation()
    {
        return $this->belongsTo(Operation::class);
    }

    protected $guarded = ['id'];

}
