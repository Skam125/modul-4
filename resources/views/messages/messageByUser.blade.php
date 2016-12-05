@extends('welcome')

@section('content')
    <h3>Коментарии пользователя "{{$user}}":</h3>
    <div>
        @foreach($comments as $comment)
            <h4>{{$comment->user}}</h4>
            <p>{{$comment->message}}</p>
            <p>rating -> {{$comment->rating}}</p>

            <hr>
        @endforeach
    </div>
    <!-- Pagination -->
    @if($comments->lastPage() >= 2)
        <ul class="pagination">
            <li><a href="{!! $comments ->url(1)!!}">Первая</a></li>
        </ul>
        @if($comments->lastPage() > 2)
            <ul class="pagination">
                <li id="special-pagination"><span>...</span></li>
            </ul>
            <ul class="pagination" id="hidden-pagination" style="display:none">
                @for ($i = 2; $i < $comments->lastPage(); $i++)
                    <li><a href="{!! $comments ->url($i) !!}">{{$i}}</a></li>
                @endfor
            </ul>
        @endif
        <ul class="pagination">
            <li><a href="{!! $comments ->url($comments ->lastPage())!!}">Последняя</a></li>
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