@extends('layouts.app3')

@section('title', 'Book :: Show')

@section('styles')
     <link href="{{ asset('css/show.css') }}" rel="stylesheet">  
@endsection

@section('breadcrumb')

<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Show Book</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Books</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Show</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>

@endsection
            
@section('content')

<div class="card">
  <div class="card-body">
    <div class="row">
      <div class="col-lg-7 border-right">
        <h1 style="display: inline;">{{ $book->title }} </h1><br>
        <label>Author(s): </label> {{ $book->author }} <br>
        <label>Year Published: </label> {{ $book->year_published }} <br>
        <label>Course: </label> @foreach($courses as $row) @if($row->id == $book->course_id) {{ $row->name }} @endif @endforeach

      </div>
      <div class="col-lg-5">
        <dl class="dl-horizontal">
          <label>Created At:</label>
          <p class="small">{{ date('M j, Y H:i', strtotime($book->created_at)) }}</p>
        </dl>

        <dl class="dl-horizontal">
          <label>Last Updated:</label>
          <p class="small">{{ date('M j, Y H:i', strtotime($book->updated_at)) }}</p>
        </dl>
        <div class="border-top" style="margin-bottom: 10px;"></div>
        <dl class="dl-horizontal">
          {{-- <label>Available:</label> @if($book->availability == 1)
                                        <i style="color: #28b779;" class="fas fa-check"></i>
                                        @else
                                        <i style="color: #da542e;" class="fas fa-times"></i>
                                        @endif --}}
            {{-- <label>Quantity :</label> {{ $book->quantity }}
            <label>Available :</label> {{ $book->available }} --}}
        </dl>
        <div class="col-lg-5">
          @if($book->with_cd == 1)
                                        <label>CD: {{$book->cd_quantity}}</label>
                                        <label>Book Available: {{$book->available}}</label> 
                                        @elseif($book->cd_only == 1)
                                        <label>CD ONLY: {{$book->cd_quantity}}</label>
                                       {{--  <i style="color: #da542e;" class="fas fa-check"></i> --}}
                                        @else
                                        <label>Book Only {{$book->available}}</label>
                                        @endif
        </div>
        @if($book->available >= 1)
                                            <a href="{{ route('view.borrow.book', $book->id) }}" class="btn btn-outline-dark btn-xs"><i class="fa fa-book"> Borrow</i></a>
                                          @endif
      </div>

    </div>
  </div>
</div>

@endsection

@section('scripts')

<!-- this page js -->
    <script src="{{ asset('assets/libs/magnific-popup/dist/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('assets/libs/magnific-popup/meg.init.js') }}"></script>

@endsection
