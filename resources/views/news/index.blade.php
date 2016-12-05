@extends('welcome')

@section('content')
    @if(isset($asd) && isset($karusel))
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>


            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img style="max-width: 100%; height: auto;" src="http://kingofwallpapers.com/hello/hello-006.jpg">
                </div>
                @foreach($karusel as $q=>$item)

                    <div class="item">
                        <img style=" max-width: 100%;  height: auto;"
                             src="/public/images/{!! $asd["$item->id"] !!}">
                        <div class="container">
                            <div class="carousel-caption">
                                <a href="{{ url('/show', $item->id) }}"><h1>{{$item->title}}</h1></a>
                                <p style=" display: -webkit-box;
  -webkit-line-clamp: 13;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;"> {{$item->body}}</p>
                            </div>
                        </div>
                    </div>

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
    <div>
        <h3>Топ 5 комментаторов:</h3>
        {{--топ 5 коментов--}}
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                Username
                            </th>
                            <th>
                                Количество комментариев
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($top5UserComments as $value)
                            <tr class="success">
                                <td>
                                    <a href="{{ url('/user', $value->user) }}">{{$value->user}}</a>
                                </td>
                                <td>
                                    {{$value->quantity}}
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    {{--топ 5 коментов--}}
<h3>Топ 3 активных темы:</h3>
    {{--топ 3 темы--}}
    <ul>
        @foreach($top3topics as $topic)
            <li>
                <a href="{{ url('/show', $topic->id) }}">{{$topic->title}} </a> Комментариев:  {{$topic->q}}
            </li>
        @endforeach
    </ul>
    {{--топ 3 темы--}}
    <hr>
    <div>
        <dl>
            @foreach($data as $key=>$value)
                <h2><a href="{{ url('/category', $key) }}"> {{$key}}</a></h2>

                @foreach($value as $item)
                    <p><a href="{{ url('/show', $item->id) }}"> {{$item->title}}</a></p>
                @endforeach
                <hr>
            @endforeach
        </dl>
    </div>
@endsection