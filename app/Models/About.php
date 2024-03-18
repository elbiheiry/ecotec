<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;

    protected $fillable = ['heading' ,'name1' , 'brief1' ,'name2' ,'brief2' ,'name3' ,'brief3' ,'image1' ,'image2'];
}
