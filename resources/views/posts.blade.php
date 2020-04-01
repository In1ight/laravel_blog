@extends('layouts.myapp')

@section('content')

    <h1>Товары</h1>
    @if($posts)
        <div class="row">
        <div class="col-lg-10">
            <div class="row mb-3">
                @foreach($posts as $post)
                    <div class="col-lg-5">
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
        </div>
            <div class="col-lg-2">
                @if($cats)
                    @foreach($cats as $cat)
                        <p><a href="/category/{{ $cat->id }}" class="btn btn-dark">{{ $cat->name }}</a></p>
                        @endforeach
                    @endif
            </div>
        </div>
    @endif
    @endsection
