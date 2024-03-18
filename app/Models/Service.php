<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = ['title' , 'description' , 'image'];

    public function delete()
    {
        image_delete($this->image , 'services');
        return parent::delete();
    }
}
