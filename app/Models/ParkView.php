<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParkView extends Model
{
    use HasFactory;

    protected $fillable = [
        'title','description1','description2','square','building','address','location_title','location_description' ,'image1','image2','image3'
    ];
}
