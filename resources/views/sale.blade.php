@extends('layouts.myapp')

@section('content')
    <a href="/posts" class="btn btn-primary mb-3">Назад</a>
    @if($posts)
        <div class="row">
            @foreach($posts as $post)
                <div class="col-lg-4">
                    <div class="card bg-secondary mb-3 text-white">
                        <div class="card-body">
                            <h5 class="card-title">{{ $post->title }}</h5>
                            <p class="card-text">{{ $post->descr }}</p>
                            <a href="/posts/{{ $post->id }}" class="btn btn-info">Посмотреть</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        {{ $posts->links() }}
    @endif
    @endsection


AddDefaultCharset utf-8

RewriteEngine On
RewriteRule ^(.*) /public/index.php