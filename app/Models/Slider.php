<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;
    protected $fillable = ['title' ,'title1', 'description' ,'image'];

    public function delete()
    {
        image_delete($this->image , 'sliders');
        return parent::delete();
    }
}
