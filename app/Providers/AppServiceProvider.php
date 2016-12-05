<?php

namespace App\Providers;

use App\Menu;
use Illuminate\Support\ServiceProvider;
use DB;
use App\Setting;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $settings = Setting::all();

        foreach (DB::select('select * from tags') as $tag) {
            $tags[] = $tag->tag_name;
        }
        $json = json_encode($tags);
        $ads = DB::select('select * from ads order by created_at desc limit 8');
        $left_ads = array_slice($ads,0 , 4);
        $right_ads = array_slice($ads, 4, 4);
        $menu = Menu::all();

        view()->share('left_ads', $left_ads);
        view()->share('right_ads', $right_ads);
        view()->share('json', $json);
        view()->share('settings', $settings);
        view()->share('menu', $menu);
    }


    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
