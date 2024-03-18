<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;
    protected $fillable = ['image'];

    public function delete()
    {
        image_delete($this->image , 'gallery');

        return parent::delete();
    }
}
