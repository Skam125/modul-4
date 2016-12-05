<?php

namespace App\Http\Controllers;

use App\Image;
use Illuminate\View\View;
use Input;
use App\News;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Tags;
use App\Message;
use Illuminate\Support\Facades\Auth;



class NewsController extends Controller
{


    public function index()
    {
        $karusel = News::orderBy('created_at', 'desc')->take(3)->get();

        foreach ($karusel as $value) {
            $images[$value->id] = $value->images()->take(1)->get();
        }
        if (isset($images)) {

            foreach ($images as $key1 => $image) {
                $asd[$key1] = $image[0]->file_name;
            }
        }

        $top3topics = DB::select('select *, count(messages.news_id) as q from messages
join news on news.id=messages.news_id
WHERE messages.created_at > NOW() - INTERVAL 1 DAY
Group by messages.news_id
order by count(messages.news_id) desc
limit 3');


$top5UserComments = DB::select('select user, count(*) as quantity from messages
group by user
order by quantity desc
limit 5');





        $categories = DB::select('select title from categories');
        foreach ($categories as $category) {
            $data[$category->title] = DB::select('select DISTINCT categories.title, news.id, news.title from news
join news_categories on news.id = news_categories.news_id
join categories on categories.id = news_categories.category_id
where categories.title= ?
 ORDER BY created_at
LIMIT 5', [$category->title]);
        }

        return view('news.index', compact('data', 'karusel', 'asd', 'top5UserComments', 'top3topics'));
    }


    
    public function show($id)
    {
        $news = News::findOrFail($id);
        $images = $news->images()->get();
        $comments = DB::table('messages')
            ->where('news_id', '=', $id)
            ->orderBy('rating', 'desc')
            ->get();

        $politicsObj = DB::select('select news.id from news
join news_categories on news.id=news_categories.news_id
where category_id = 1');
        foreach ($politicsObj as $value) {
            $politics[]=$value->id;
  }

        $tags = DB::select('select DISTINCT tags.tag_name from news
join news_tags on news.id = news_tags.news_id
join tags on tags.id = news_tags.tags_id
where news.id = ?', [$id]);
        return view('news.show', compact('news', 'images', 'tags', 'comments', 'politics'));
    }


    

    public function search()
    {
        $tag = Input::get('tag');
        return redirect(url('/tag', $tag));
    }




    public function test()
    {
//        $affected = DB::update('update news set date_created = ? where id = 1', [$datecreate]);

//        $categories = DB::select('select * from news');


        $news = DB::table('news')->paginate(5);


//        DB::connection('mysql') ->table('users') ->leftJoin('payments', 'users.id', '=', 'payments.userID') ->paginate(5);


        return view('news.test', compact('news'));
    }


    public function showCategory($title)
    {
        $news = DB::table('news')
            ->join('news_categories', 'news.id', '=', 'news_categories.news_id')
            ->join('categories', 'categories.id', '=', 'news_categories.category_id')
            ->select('news.title', 'news.id')
            ->where('categories.title', '=', $title)
            ->paginate(5);
        return view('news.showCategory', compact('news', 'title'));
    }

    public function showByTags($tag)
    {
        $news = DB::table('news')
            ->join('news_tags', 'news.id', '=', 'news_tags.news_id')
            ->join('tags', 'news_tags.tags_id', '=', 'tags.id')
            ->select('news.title', 'news.id')
            ->where('tags.tag_name', '=', $tag)
            ->distinct()
            ->paginate(5);
        return view('news.showByTags', compact('news', 'tag'));
    }


    public function storeComment()
    {
        $news_id = Input::get('news_id');

        $comment = Message::create([
            'user' => Input::get('user'),
            'message' => Input::get('message'),
            'news_id' => Input::get('news_id'),
            'approved' => Input::get('approved')
        ]);


        return redirect(url('/show', $news_id))->with(['flash_message' => 'Коментарий добавлен']);

    }

    public function plus()
    {
        $news_id = Input::get('news_id');
        $id = Input::get('id');
        Message::where("id", $id)->increment("rating");
        return redirect(url('/show', $news_id))->with(['flash_message' => 'Рейтинг увеличен']);
    }


    public function minus()
    {
        $news_id = Input::get('news_id');
        $id = Input::get('id');
        Message::where("id", $id)->decrement("rating");;
        return redirect(url('/show', $news_id))->with(['flash_message' => 'Рейтинг уменьшен']);
    }

    public function userComments($user){
        $comments = DB::table('messages')
            ->select('id','message', 'user', 'rating')
            ->where('user', '=', $user)
            ->paginate(5);
        return view('messages.messageByUser', compact('comments', 'user'));
    }
}
