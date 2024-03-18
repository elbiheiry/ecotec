<?php 

use Intervention\Image\Facades\Image;

if (!function_exists('image_manipulate')) {
    function image_manipulate($image, $path, $width = null, $height = null)
    {

        $image->store($path ,'public');
        $name = $image->hashName();

        Image::make(storage_path('app/public/' . $path . '/' . $name))
            ->resize($width, $height)
            ->save(storage_path('app/public/' . $path . '/' . $name));

        return $name;
    }
}

if (!function_exists('image_delete')) {
    function image_delete($image, $path)
    {
        @unlink(storage_path('app/public/'.$path.'/'.$image));
    }
}

if (!function_exists('get_image')) {
    function get_image($image, $path)
    {
        $image = url(('storage/app/public/'.$path.'/'.$image));

        return $image;
    }
}