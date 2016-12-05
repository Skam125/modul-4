@extends('welcome')

@section('content')

    {{--@if (!Auth::guest())--}}
    {{--@if (Auth::user()->isAdmin())--}}
    {{--asdasdasdasdsad--}}
    {{--@endif--}}
    {{--@endif--}}


    <h3>Добавить рекламу</h3>
    {!! Form::open(array('url'=>'admin/store/ad')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="">Название:</label>
        <input type="text" class="form-control input-sm" name="title" required>
    </div>
    <div class="form-group">
        <label for="">Фирма/продавец:</label>
        <input type="text" class="form-control input-sm" name="company_name" required>
    </div>
    <div class="form-group">
        <label for="">Цена:</label>
        <input type="number" class="form-control input-sm" name="price" min="0" max="3000" required>
    </div>

    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>
<h3>Фон сайта:</h3>
    {!! Form::open(array('url'=>'admin/store/color')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="header">Укажите цвет шапки:</label>
        <input type="color" name="header" id="header">
    </div>
    <div class="form-group">
        <label for="body">Укажите цвет для фона сайта:</label>
        <input type="color" name="body" id="body">
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Сохранить</button>
    </div>
    {!! Form::close() !!}
    <hr>
<h3>Добавить меню:</h3>
    {!! Form::open(array('url'=>'admin/store/menu')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="menu_item">Добавить пункт меню: </label>
        <input type="text" name="menu_item" id="menu_item" required>
    </div>
    <div class="form-group">
        <label for="link">Добавить ссылку: </label>
        <input type="text" name="link" id="link">
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Сохранить</button>
    </div>
    {!! Form::close() !!}
    <hr>


    {!! Form::open(array('url'=>'admin/delete/menu')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <label for="del_menu">Удалить пункт меню:</label>
    <select name="del_menu" id="del_menu">
        @foreach($menu as $item)
            <option value="{{$item->id}}">{{$item->menu_item}}</option>
        @endforeach
    </select>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Удалить</button>
    </div>
    {!! Form::close() !!}
    <hr>

    <h3>Ожидают одобрения:</h3>
    @foreach($approved as $value)
        User: {{$value->user}} Комент: {{$value->message}} <br>
        {!! Form::open(array('url'=>'admin/message/approve')) !!}
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <input type="hidden" name="id" value="{{$value->id}}">
        <div class="form-group">
            <button class="btn btn-sm btn-info">одобрить</button>
        </div>
        {!! Form::close() !!}
    @endforeach
    <hr>
    <h3>Добавить новость:</h3>
    {!! Form::open(array('url'=>'admin/store/news', 'files'=>true)) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="title">Название: </label>
        <input type="text" class="form-control input-sm" name="title" id="title" required>
    </div>

    <div class="form-group">
        <label for="content">Основная часть:</label>
        <textarea name="description" class="form-control" id="content" required></textarea>
    </div>

    <div class="form-group">
        <label for="">Images</label>
        <input type="file" class="form-control input-sm" name="images[]" multiple required>
    </div>

    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}

    <hr>
    <h3>Добавить изображения:</h3>
    {!! Form::open(array('url'=>'admin/store/images', 'files'=>true)) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="news2">Новость: </label>
        <select name="news" required id="news2">
            @foreach($news as $item)
                <option value="{{$item->id}}">{{$item->title}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="">Images</label>
        <input type="file" class="form-control input-sm" name="images[]" multiple required>
    </div>

    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>

    <h3>Теги для новостей</h3>
    {!! Form::open(array('url'=>'admin/store/news_tags')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="tag">Тег: </label>
        <select name="tag" required id="tag">
            @foreach($tags as $tag)
                <option value="{{$tag->id}}">{{$tag->tag_name}}</option>
            @endforeach
        </select>
        =
        <label for="news1">Новость: </label>
        <select name="news" required id="news1">
            @foreach($news as $item)
                <option value="{{$item->id}}">{{$item->title}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>

    <h3>Категории для новостей</h3>
    {!! Form::open(array('url'=>'admin/store/news_categories')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="category1">Категория: </label>
        <select name="category" required id="category1">
            @foreach($categories as $category)
                <option value="{{$category->id}}">{{$category->title}}</option>
            @endforeach
        </select>
        =
        <label for="news1">Новость: </label>
        <select name="news" required id="news1">
            @foreach($news as $item)
                <option value="{{$item->id}}">{{$item->title}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>
    <h3>Добавить категорию:</h3>
    {!! Form::open(array('url'=>'admin/store/category')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="title_cat">Название категории: </label>
        <input type="text" class="form-control input-sm" name="title" id="title_cat" required>
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>
    <h3>Добавить новый тег:</h3>
    {!! Form::open(array('url'=>'admin/store/tag')) !!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="title_tag">Тег: </label>
        <input type="text" class="form-control input-sm" name="title" id="title_tag" required>
    </div>
    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>
    <h3>Добавить комментарии:</h3>
    {!! Form::open(array('url'=>'admin/add/messages')) !!}
    Имя пользователя:
    {!! Form::text('user') !!}
    {!! Form::hidden('id') !!}
    Сообщение:
    {!! Form::text('message') !!}
    ID новости:
    {!! Form::number('news_id') !!}
    Rating:
    {!! Form::number('rating') !!}
    Одобрен ли комментарий:
    {!! Form::selectRange('approved', 0, 1) !!}

    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <button class="btn btn-sm btn-info">Добавить</button>
    </div>
    {!! Form::close() !!}
    <hr>
    <h3>Редактировать комментарии:</h3>
    @foreach($messages as $message)
        {!! Form::model($message, array('url'=>'admin/update/messages')) !!}
        ID =  {{$message->id}};
        Имя пользователя:
        {!! Form::text('user') !!}
        {!! Form::hidden('id') !!}
        Сообщение:
        {!! Form::text('message') !!}
        ID новости:
        {!! Form::number('news_id') !!}
        Rating:
        {!! Form::number('rating') !!}
        Одобрен ли комментарий:
        {!! Form::selectRange('approved', 0, 1) !!}

        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="form-group">
            <button class="btn btn-sm btn-info">Редактировать</button>
        </div>
        {!! Form::close() !!}
        <hr>
    @endforeach
    <!-- Pagination -->
    @if($messages->lastPage() > 2)
        <ul class="pagination">
            <li><a href="{!! $messages ->url(1)!!}">Первая</a></li>
        </ul>
        @if($messages->lastPage() > 2)
            <ul class="pagination">
                <li id="special-pagination"><span>...</span></li>
            </ul>
            <ul class="pagination" id="hidden-pagination" style="display:none">
                @for ($i = 2; $i < $messages->lastPage(); $i++)
                    <li><a href="{!! $messages ->url($i) !!}">{{$i}}</a></li>
                @endfor
            </ul>
        @endif
        <ul class="pagination">
            <li><a href="{!! $messages ->url($messages ->lastPage())!!}">Последняя</a></li>
        </ul>

        <script>
            $('#special-pagination').click(function () {
                $('#hidden-pagination').slideToggle('slow');
                $('#special-pagination').hide();
            });
        </script>
    @endif
    <!-- Pagination -->




@endsection