<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/public/favicon.ico">
    <link href="/public/css/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Модуль #4</title>
<style>
    .container{
        background-color: {{$settings[0]->menu}}  !important;
    }
    body{
        background-color: {{$settings[0]->body}}  !important;
    }
</style>
    <!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/starter-template/starter-template.css" rel="stylesheet">
    <link href="/public/css/stuly.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ url('/') }}">Модуль #4</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="{{ url('/') }}">Главная</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Выпадающий список <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Раз</a></li>
                        <li><a href="#">Два</a></li>
                        <li><a href="#">Три</a></li>
                        <li class="dropdown-submenu">
                            <a tabindex="-1" href="#">Еще один выпадающий список</a>
                            <ul class="dropdown-menu">
                                <li><a tabindex="-1" href="#">Четыре</a></li>
                                <li><a href="#">Пять</a></li>
                                <li><a href="#">Шесть</a></li>
                                <li class="dropdown-submenu">
                                    <a href="#">Еще один выпадающий список</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Семь</a></li>
                                        <li><a href="#">Восемь</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                @if(count($menu))
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Дополнительное меню<span class="caret"></span></a>
                    @foreach($menu as $item)
                    <ul class="dropdown-menu">
                        <li><a href="{!! $item->link !!}">{{$item->menu_item}}</a></li>
                    </ul>
                        @endforeach
                </li>
                    @endif
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!-- Authentication Links -->
                @if (Auth::guest())
                    <li><a href="{{ url('/auth/login') }}">Login</a></li>
                    <li><a href="{{ url('/auth/register') }}">Register</a></li>
                @else

                    <li><a>{{ Auth::user()->name }}</a>
                    <li>
                        <a href="{{ url('/auth/logout') }}">
                            Logout
                        </a>
                        <form id="logout-form" action="{{ url('/auth/logout') }}" method="POST">
                            {{ csrf_field() }}
                        </form>
                    </li>

                    </li>
                @endif
            </ul>
            <form class="form-inline pull-right lol" action="{{url('/search')}}">
                <div class="form-group">
                    <input type="text" class="form-control" id="tags" placeholder="tags" name="tag">
                </div>
                <button type="submit" class="btn btn-default">Поиск</button>
            </form>

        </div><!--/.nav-collapse -->

    </div>

</nav>

<div id="pp">
    <div class="pp-content">
        <h3>Подпишись на рассылку</h3>
        {!! Form::open(array('url'=>'storeMail')) !!}
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="form-group">
            <label for="">Ваше имя:</label>
            <input type="text" class="form-control input-sm" name="name">
        </div>

        <div class="form-group">
            <label for="">Email:</label>
            <input type="email" class="form-control input-sm" name="email">
        </div>
        <div class="form-group">
            <button class="btn btn-sm btn-info">Submit</button>
        </div>
        {!! Form::close() !!}
    </div>
</div>
<div id="pp-bg"></div>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">

            @foreach($left_ads as $ad)
                <div class="row">
                    <div class="col-md-12">
                        <div class="thumbnail block special">
                            <div class="caption">
                                <h3>
                                    {{$ad->title}}
                                </h3>
                                <p class="company">{{$ad->company_name}}</p>
                                <p class="price"><span>{{$ad->price}}</span></p>
                                <p class="discount" style="display: none">Купон на скидку: <span><b>{{$ad->kupon}}</b></span> - примените и получите
                                    скидку 10%</p>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12">
                    <div>
                        @if(Session::has('flash_message'))
                            <div class="alert alert-success">
                                {{ Session::get('flash_message') }}
                            </div>
                        @endif
                    </div>
                    @yield('content')
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="row">
                @foreach($right_ads as $ad)
                    <div class="row">
                        <div class="col-md-12">
                            <div class="thumbnail block special">
                                <div class="caption">
                                    <h3>
                                        {{$ad->title}}
                                    </h3>
                                    <p class="company">{{$ad->company_name}}</p>
                                    <p class="price"><span>{{$ad->price}}</span></p>
                                    <p class="discount" style="display: none">Купон на скидку: <span><b>{{$ad->kupon}}</b></span> - примените и получите
                                        скидку 10%</p>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            </div>
        </div>
    </div>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/public/js/script.js "></script>
<script>
    $(function () {
        $("#tags").autocomplete({
            source: <?php echo $json ?>
        });
    });
        //close
        window.onbeforeunload = function () {
            return true;
        };

        $(function () {
            $("a").click(function () {
                window.onbeforeunload = null;
            });
        });
        $(function () {
            $("button").click(function () {
                window.onbeforeunload = null;
            });
        });
        $(function () {
            $("input").click(function () {
                window.onbeforeunload = null;
            });
        });
    //ads
    $('.block').mouseenter(function () {
        $(this).find('.price').css({'fontSize': 21, 'color': 'red'});
        $(this).find('.price span').html(($(this).find('.price span').html() * 0.9).toFixed(2));
        $(this).find('.discount').slideToggle('slow');

    });

    $('.block').mouseleave(function () {
        $(this).find('.price').css({'fontSize': 16, 'color': 'black'});
        $(this).find('.price span').html(Math.ceil($(this).find('.price span').html() * 1.11111111111111111111111111));
        $(this).find('.discount').slideToggle('slow');
    });
</script>
</body>
</html>
