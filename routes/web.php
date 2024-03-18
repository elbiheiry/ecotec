<?php

use App\Http\Controllers\Admin\AboutController as AdminAboutController;
use App\Http\Controllers\Admin\AboutSectionController;
use App\Http\Controllers\Admin\CandidateController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FacilityController;
use App\Http\Controllers\Admin\FeatureController;
use App\Http\Controllers\Admin\FeatureSectionController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Admin\MessageController;
use App\Http\Controllers\Admin\ParkViewSectionController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Site\AboutController;
use App\Http\Controllers\Site\CareerController;
use App\Http\Controllers\Site\ContactController;
use App\Http\Controllers\Site\IndexController;
use App\Http\Controllers\Site\ParkViewController;
use App\Http\Controllers\Admin\ParkViewController as AdminParkViewController ;
use App\Http\Controllers\Admin\ServiceController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

//////////////////////////////////////// admin routes /////////////////////////////////

Route::prefix('admin')->name('admin.')->group(function (){
    Auth::routes(['admin.register' => false]);

    Route::middleware('auth')->group(function ()
    {
        /**
         * dashboard routes
         */
        Route::get('/' , [DashboardController::class , 'index'])->name('dashboard');

        /**
         * messages routes
         */
        Route::prefix('messages')->name('messages.')->group(function ()
        {
            Route::get('/' , [MessageController::class , 'index'])->name('index');
            Route::get('/show/{id}' , [MessageController::class , 'show'])->name('show');
            Route::delete('/destroy/{id}' , [MessageController::class , 'destroy'])->name('delete');
        });

        /**
         * candidates routes
         */
        Route::prefix('candidates')->name('candidates.')->group(function ()
        {
            Route::get('/' , [CandidateController::class , 'index'])->name('index');
        });

        /**
         * main settings routes
         */
        Route::prefix('main-settings')->name('settings.')->group(function ()
        {
            Route::get('/' , [SettingController::class , 'index'])->name('index');
            Route::put('/update' , [SettingController::class , 'update'])->name('update');
        });

        /**
         * profile routes
         */
        Route::prefix('profile')->name('profile.')->group(function ()
        {
            Route::get('/' , [ProfileController::class , 'index'])->name('index');
            Route::put('/update' , [ProfileController::class , 'update'])->name('update');
        });

        /**
         * about routes
         */
        Route::prefix('about-us')->name('about.')->group(function ()
        {
            Route::get('/' , [AdminAboutController::class , 'index'])->name('index');
            Route::put('/update' , [AdminAboutController::class , 'update'])->name('update');
        });

        /**
         * home pages routes
         */
        Route::prefix('homepage')->group(function (){
            /**
             * sliders route
             */
            Route::prefix('slider')->name('sliders.')->group(function () {
                Route::get('/' , [SliderController::class , 'index'])->name('index');
                Route::post('/store' , [SliderController::class , 'store'])->name('store');
                Route::get('/show/{id}' , [SliderController::class , 'show'])->name('show');
                Route::put('/update/{id}' , [SliderController::class , 'update'])->name('update');
                Route::delete('/delete/{id}' ,[SliderController::class , 'destroy'])->name('delete');
            });

            /**
             * about-section routes
             */
            Route::prefix('about-section')->name('about.section.')->group(function ()
            {
                Route::get('/' , [AboutSectionController::class , 'index'])->name('index');
                Route::put('/update' , [AboutSectionController::class , 'update'])->name('update');
            });

            /**
             * home-park-view routes
             */
            Route::prefix('park-view')->name('park.section.')->group(function ()
            {
                Route::get('/' , [ParkViewSectionController::class , 'index'])->name('index');
                Route::put('/update' , [ParkViewSectionController::class , 'update'])->name('update');
            });

            /**
             * features-section routes
             */
            Route::prefix('features-section')->name('features.section.')->group(function ()
            {
                Route::put('/update' , [FeatureSectionController::class , 'update'])->name('update');
            });

            /**
             * features route
             */
            Route::prefix('features')->name('features.')->group(function () {
                Route::post('/store' , [FeatureController::class , 'store'])->name('store');
                Route::get('/show/{id}' , [FeatureController::class , 'show'])->name('show');
                Route::put('/update/{id}' , [FeatureController::class , 'update'])->name('update');
                Route::delete('/delete/{id}' ,[FeatureController::class , 'destroy'])->name('delete');
            });
        });

        /**
         * park-view routes
         */
        Route::prefix('park-view')->name('park.')->group(function ()
        {
            Route::get('/' , [AdminParkViewController::class , 'index'])->name('index');
            Route::put('/update' , [AdminParkViewController::class , 'update'])->name('update');
            Route::put('/update2' , [AdminParkViewController::class , 'update2'])->name('update2');

            /**
             * gallery route
             */
            Route::prefix('gallery')->name('gallery.')->group(function () {
                Route::post('/store' , [GalleryController::class , 'store'])->name('store');
                Route::get('/show/{id}' , [GalleryController::class , 'show'])->name('show');
                Route::put('/update/{id}' , [GalleryController::class , 'update'])->name('update');
                Route::delete('/delete/{id}' ,[GalleryController::class , 'destroy'])->name('delete');
            });

            /**
             * services route
             */
            Route::prefix('services')->name('services.')->group(function () {
                Route::post('/store' , [ServiceController::class , 'store'])->name('store');
                Route::get('/show/{id}' , [ServiceController::class , 'show'])->name('show');
                Route::put('/update/{id}' , [ServiceController::class , 'update'])->name('update');
                Route::delete('/delete/{id}' ,[ServiceController::class , 'destroy'])->name('delete');
            });

            /**
             * facilities route
             */
            Route::prefix('facilities')->name('facilities.')->group(function () {
                Route::post('/store' , [FacilityController::class , 'store'])->name('store');
                Route::get('/show/{id}' , [FacilityController::class , 'show'])->name('show');
                Route::put('/update/{id}' , [FacilityController::class , 'update'])->name('update');
                Route::delete('/delete/{id}' ,[FacilityController::class , 'destroy'])->name('delete');
            });
        });

    });
});

//////////////////////////////////////////// site routes ////////////////////////////////////
Route::name('site.')->group(function () {
    Route::get('/' , [IndexController::class , 'index'])->name('index');
    Route::post('/subscribe' , [IndexController::class , 'subscribe'])->name('subscribe');

    Route::get('/about-us' , [AboutController::class , 'index'])->name('about');

    Route::get('/park-view' , [ParkViewController::class , 'index'])->name('park');

    Route::get('/careers' , [CareerController::class , 'index'])->name('careers');
    Route::post('/careers-store', [CareerController::class , 'store'])->name('careers.store');

    Route::get('/contact-us' , [ContactController::class , 'index'])->name('contact');
    Route::post('/contact-store', [ContactController::class , 'store'])->name('contact.store');
});
