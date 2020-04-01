<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Category;
use Carbon\Carbon;

class ArticleController extends Controller
{
    public function index(){
        $posts = Article::paginate(4);
        $cats = Category::all();
        return view('posts', [
            'posts' => $posts, 'cats' => $cats
        ]);
    }
    public function article(Request $request){
        $id = (int) $request['id'];
        $posts = Article::where('id', $id)->first();
        return view('article', ['items' => $posts]);
    }
    public function category(Request $request){
        $cat_id = (int) $request['cat_id'];
        $posts = Article::where('cat', $cat_id)->paginate(2);
        return view('article', ['posts' => $posts]);
    }

    public function getSale()
    {
        $posts = Article::where('sale', 1)->paginate(3);
        return view('sale', ['posts' => $posts]);
    }
    public function getInsert(Request $request)
    {
//        Сохранение новой записи в таблицу
        $article = new Article;
        $article->title = $request->id;
        $article->descr = 'LARAVEL';
        $article->date = Carbon::now();
        $article->cat = '1';
        $article->sale = '1';
        $article->save();

    }
    public function getEdit(Request $request)
    {
        $article = Article::where('sale', 1)
            ->where('cat', 1)
            ->update(['descr' => 'ШАЛАЛА']);;
        /*$article->title = $request->title;
        $article->save();*/
    }

}
