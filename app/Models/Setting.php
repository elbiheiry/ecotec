<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;

    protected $fillable = [
        'title' , 'copy' ,'address' ,'email' ,
        'phone1' , 'phone2' , 'phone3' ,
        'mobile1' , 'mobile2' ,'mobile3' ,
        'facebook' , 'instagram'
    ];
}
