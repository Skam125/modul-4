@extends('welcome')

@section('content')
    <h3>По тегу "{{$tag}}" найдены новости:</h3>
    @foreach($news as $value)
            <dd><a href="{{ url('/show', $value->id) }}"> {{$value->title}}</a></dd>
        @endforeach
    <!-- Pagination -->
    @if($news->lastPage() >= 2)
        <ul class="pagination">
            <li><a href="{!! $news ->url(1)!!}">Первая</a></li>
        </ul>
        @if($news->lastPage() > 2)
            <ul class="pagination">
                <li id="special-pagination"><span>...</span></li>
            </ul>
            <ul class="pagination" id="hidden-pagination" style="display:none">
                @for ($i = 2; $i < $news->lastPage(); $i++)
                    <li><a href="{!! $news ->url($i) !!}">{{$i}}</a></li>
                @endfor
            </ul>
        @endif
        <ul class="pagination">
            <li><a href="{!! $news ->url($news ->lastPage())!!}">Последняя</a></li>
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