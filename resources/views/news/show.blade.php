@extends('welcome')

@section('content')


    @if(count($images))
        <!-- Carousel
================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">

                @foreach($images as $key=>$image)

                    @if($key == '0')

                        <div class="item active">
                            <img style="max-width: 100%; height: auto;" src="/public/images/{{$image->file_name}}">

                        </div>
                        <div class="container">
                            <div class="carousel-caption">

                            </div>
                        </div>
                    @else
                        <div class="item">
                            <img style=" max-width: 100%;  height: auto;" src="/public/images/{{$image->file_name}}">
                            <div class="container">
                                <div class="carousel-caption">

                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div><!-- /.carousel -->

    @endif
    <div class="jumbotron">

        # {{$news->id}}<br>
        <h3>{{$news->title}}</h3><br>
        <p>
            {!! $news->body !!}
        </p>
        Теги:
        @foreach($tags as $tag)
            <a href="{{url('/tag', $tag->tag_name)}}"><b>{{$tag->tag_name}}</b></a>
        @endforeach
        <br>
        {{$news->created_at->format('d.m.Y')}}<br>

        <div>
            Сейчас новость читают:
            <div id='rand'>0</div>
        </div>
        <div>
            Всего прочитали:
            <div id='all'>0</div>
        </div>
    </div>

    <script>
        var randomValue;
        var all = 0;
        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

        function a() {
            randomValue = getRandomInt(0, 5)
            document.getElementById('rand').innerHTML = randomValue;
            return randomValue;
        }

        var timerId = setInterval(function () {
            a();
        }, 3000);

        function allRead() {
            all = all + randomValue;
            document.getElementById('all').innerHTML = all;
        }

        var timerIdAll = setInterval(function () {
            allRead();

        }, 3000)
    </script>



    @if (!Auth::guest())
        {!! Form::open(array('url'=>'storeComment')) !!}

        @if(in_array($news->id, $politics))
            <input type="hidden" name="approved" value="0">
            @else <input type="hidden" name="approved" value="1"> @endif
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <input type="hidden" name="news_id" value="{{$news->id}}">
        <input type="hidden" name="user" value="{{Auth::user()->name}}">

        <div class="form-group">
            <label for="comments">Комментарии</label>
            <textarea name="message" class="form-control" placeholder="Добавить коментарий" id="comments"></textarea>
        </div>
        <div class="form-group">
            <button class="btn btn-sm btn-info">Submit</button>
        </div>
        {!! Form::close() !!}

    @endif

    <div>
        @foreach($comments as $comment)
            @if($comment->approved)
            <h4>{{$comment->user}}</h4>
            <p>{{$comment->message}}</p>
            <p>Рейтинг комментария: {{$comment->rating}}</p>
            @if (!Auth::guest())
                {!! Form::open(array('url'=>'plus')) !!}
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="news_id" value="{{$news->id}}">
                <input type="hidden" name="id" value="{{$comment->id}}">
                <div class="form-group">
                    <button class="btn btn-sm btn-info">+</button>
                </div>
                {!! Form::close() !!}
                {!! Form::open(array('url'=>'minus')) !!}
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="news_id" value="{{$news->id}}">
                <input type="hidden" name="id" value="{{$comment->id}}">
                <div class="form-group">
                    <button class="btn btn-sm btn-info">-</button>
                </div>
                {!! Form::close() !!}
            @endif
            <hr>
            @endif
        @endforeach
    </div>
@endsection