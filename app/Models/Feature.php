<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Feature extends Model
{
    use HasFactory;

    protected $fillable = ['name' , 'image'];

    public function delete()
    {
        image_delete($this->image , 'features');
        return parent::delete();
    }
}
