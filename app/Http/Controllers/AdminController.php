<?php

namespace App\Http\Controllers;

use App\Category;
use App\Menu;
use App\News_categories;
use App\News_tags;
use App\Tags;
use Illuminate\Http\Request;
use Illuminate\Auth;
use Input;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Ad;
use DB;
use App\Message;
use App\News;
use App\Image;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tags::all();
        $news = News::all();
        $categories = Category::all();
        $messages = Message::paginate(5);
        $approved = DB::select('select * from messages
where approved = 0');

        return view('admin.index', compact('approved', 'messages', 'tags', 'news', 'categories'));
    }

    public function storeAd()
    {
        $random_string = '';
        for ($i = 0; $i < 5; $i++) {
            $random_string .= chr(rand(0, 25) + 65);
        }

        $ad = Ad::create([
            'title' => Input::get('title'),
            'price' => Input::get('price'),
            'company_name' => Input::get('company_name'),
            'kupon' => $random_string
        ]);
        return redirect('/admin')->with(['flash_message' => 'Реклама добавлена']);
    }

    public function storeColor()
    {
        DB::table('settings')
            ->where('id', 1)
            ->update([
                'body' => Input::get('body'),
                'menu' => Input::get('header'),

            ]);

        return redirect('/admin')->with(['flash_message' => 'Цвет изменен!']);
    }

    public function storeMenu()
    {
        Menu::create([
            'menu_item' => Input::get('menu_item'),
            'link' => Input::get('link'),
        ]);
        return redirect('/admin')->with(['flash_message' => 'Пункт в меню добавлен']);
    }

    public function deleteMenu()
    {
        DB::table('menu')->where('id', '=', Input::get('del_menu'))->delete();
        return redirect('/admin')->with(['flash_message' => 'Пункт удален']);
    }

    public function plus()
    {
        $id = Input::get('id');
        Message::where("id", $id)->increment("approved");
        return redirect(url('/admin'))->with(['flash_message' => 'Комментарий одобрен']);
    }


    public function updateMessages()
    {
        DB::table('messages')
            ->where('id', Input::get('id'))
            ->update([
                'user' => Input::get('user'),
                'message' => Input::get('message'),
                'news_id' => Input::get('news_id'),
                'rating' => Input::get('rating'),
                'approved' => Input::get('approved'),
            ]);

        return redirect(url('/admin'))->with(['flash_message' => 'Комментарий изменен']);
    }

    public function addComment()
    {
        Message::create([
            'user' => Input::get('user'),
            'message' => Input::get('message'),
            'news_id' => Input::get('news_id'),
            'approved' => Input::get('approved'),
            'rating' => Input::get('rating'),
        ]);
        return redirect(url('/admin'))->with(['flash_message' => 'Комментарий добавлен!']);
    }

    public function storeNews()
    {
//        $tags = explode(' ',Input::get('tags'));
//
//        foreach ($tags as $tag) {
//                        
//        }
        $news = News::create([
            'title' => Input::get('title'),
            'body' => Input::get('description')
        ]);

        $images = Input::file('images');

        foreach ($images as $image) {
            $move = $image->move('public/images', $image->getClientOriginalName());

            if ($move) {
                $imagedata = Image::create([
                    'title' => $image->getClientOriginalName(),
                    'file_name' => $image->getClientOriginalName()
                ]);


                $news->images()->attach([$imagedata->id]);
            }
        }
        return redirect('/admin')->with(['flash_message' => 'Новость добавлена']);
    }

    public function storeCategory()
    {
        $category = DB::select('select id from categories where title=?', [Input::get('title')]);
        if ($category) {
            return redirect('/admin')->with(['flash_message' => 'Категория уже существует!']);
        } else {
            Category::create([
                'title' => Input::get('title'),
            ]);
        }
        return redirect('/admin')->with(['flash_message' => 'Категория добавлена']);
    }

    public function storeNewTag()
    {
        $tags = DB::select('select id from tags where tag_name=?', [Input::get('title')]);
        if ($tags) {
            return redirect('/admin')->with(['flash_message' => 'Тег уже существует!']);
        } else {
            Tags::create([
                'tag_name' => Input::get('title'),
            ]);
        }
        return redirect('/admin')->with(['flash_message' => 'Тег добавлен']);
    }

    public function storeNewsTags()
    {

        $news_tags = DB::select('select * from news_tags
where news_id=? and tags_id=?', [Input::get('news'), Input::get('tag')]);
        if ($news_tags) {
            return redirect('/admin')->with(['flash_message' => 'Этой записи уже добавлен такой тег']);
        } else {
            News_tags::create([
                'tags_id' => Input::get('tag'),
                'news_id' => Input::get('news'),
            ]);
        }
        return redirect('/admin')->with(['flash_message' => 'Тег добавлен к записи']);
    }

    public function storeNewsCategories()
    {
        $news_categories = DB::select('select * from news_categories
where news_id=? and category_id=?', [Input::get('news'), Input::get('category')]);
        if ($news_categories) {
            return redirect('/admin')->with(['flash_message' => 'Эта запись уже в данной категории']);
        } else {
            News_categories::create([
                'category_id' => Input::get('category'),
                'news_id' => Input::get('news'),
            ]);
        }
        return redirect('/admin')->with(['flash_message' => 'Запись добавленка к категории']);
    }

    public function storeImages()
    {
        $id = Input::get('news');
        $news = News::find($id);
        $images = Input::file('images');

        foreach ($images as $image) {
            $move = $image->move('public/images', $image->getClientOriginalName());

            if ($move) {
                $imagedata = Image::create([
                    'title' => $image->getClientOriginalName(),
                    'file_name' => $image->getClientOriginalName()
                ]);
                $news->images()->attach([$imagedata->id]);
            }
        }
        return redirect('/admin')->with(['flash_message' => 'Изображения добавлены']);
    }
}