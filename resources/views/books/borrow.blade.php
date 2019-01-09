@extends('layouts.app3')

@section('title', 'Book :: Borrow')

@section('styles')
     <link href="{{ asset('css/show.css') }}" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="{{ asset('/css/borrow.css') }}">  
     <link href="{{ asset('css/parsley.css') }}" rel="stylesheet">
@endsection

@section('breadcrumb')

<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Borrow Book</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Books</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Borrow</li>
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
      	<div class="card-body border-bottom" style=" margin-bottom: 10px;">
      		<h4 class="card-title"><i class="fas fa-user"></i> Borrower Info</h4>
      	</div>
        <form action="{{ route('borrow.book') }}" class="form-horizontal" method="POST" data-parsley-validate="parsley" enctype="multipart/form-data">
	    {{ csrf_field() }}
	    	<input type="hidden" name="book_id" value="{{ $book->id }}">
	          <div class="form-group">
	              <label for="firstname">Name</label>
	              <input type="text" id="name" class="form-control input-sm" name="name" value="{{ old('name') }}" required data-parsley-maxlength="255" data-parsley-required-message="Name is required">
	          </div>
	          <div class="form-group">
	              <label for="address">Address</label>
	              <input type="text" id="address" class="form-control input-sm" name="address" value="{{ old('address') }}" >
	          </div>
	          <div class="form-group">
	              <label for="contact">Contact No. or Email</label>
	              <input type="text" id="contact" class="form-control input-sm" name="contact" value="{{ old('contact') }}" required data-parsley-maxlength="25" data-parsley-required-message="Contact is required">
	          </div>
            <div class="form-group row">
              @if($book->cd_quantity && $book->available >= 1)
              <label class="col-md-3">Book & Cd</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="radio" class="form-control" id="1" name="cd" value="0">
                  </div>
              </div>
              @endif
              @if($book->cd_quantity >= 1)
              <label class="col-md-3">Cd Only</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="radio" class="form-control" id="2" name="cd" value="1">
              </div>
            </div>
            @endif
            @if($book->available >= 1)
          <label class="col-md-3">Book Only</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="radio" class="form-control" id="3" name="cd" value="2">
              </div>
          </div>
          @endif
        </div>

	          <div class="form-group">
	              <label for="deadline">Due Date</label>
	              <input type="date" id="deadline" class="form-control input-sm" name="deadline" value="{{ old('deadline') }}" required data-parsley-required-message="Deadline is required">
	          </div>
	          <button class="btn btn-block btn-cyan btn-sm">Submit</button>
	  	</form>
      </div>

    </div>
  </div>
</div>

@endsection

@section('scripts')
      <script src="{{ asset('js/parsley.min.js') }}"></script>
@endsection