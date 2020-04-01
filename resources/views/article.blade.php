@extends('layouts.myapp')

@section('content')

    <a href="/posts" class="mt-3 btn btn-primary mb-3">Назад</a>
    @auth
        <?php /*if (Auth::user()->is_admin == 1) {
            echo 'Это одмен нахуй' . '&nbsp;';
        }else{
            echo ' не одмен' . '&nbsp;';
        }*/?>
        @endauth
    @php

            /*if (Auth::user() == ['is_admin' => 1]) {
            echo 'Это одмен нахуй';
        }else{
        echo ' не одмен';
        }*/

        /*if (Auth::id() == 3){
        echo 'Одмен';
        }else{
        echo 'Не одмен';
        }*/
    @endphp
    @isset($posts)
        @foreach($posts as $post)
            <div class="card bg-secondary mb-3 text-white">
                <div class="card-body">
                    <h5 class="card-title">{{ $post->title }}</h5>
                    <p class="card-text">{{ $post->descr }}</p>
                </div>
            </div>
            @endforeach
        {{ $posts->links() }}
        @endisset
    @isset($items)
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8 ">
                <div class="card bg-secondary mb-3 text-white">
                    <div class="card-body">
                        <h5 class="card-title">{{ $items->title }}</h5>
                        <p class="card-text">{{ $items->descr }}</p>
                    </div>
                </div>
            </div>
        </div>
    @endisset
    @endsection