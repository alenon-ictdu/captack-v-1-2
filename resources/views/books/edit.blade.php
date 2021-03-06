@extends('layouts.app3')

@section('title', 'Book :: Edit')

@section('styles')
    <link href="{{ asset('css/create.css') }}" rel="stylesheet">
    <link href="{{ asset('css/parsley.css') }}" rel="stylesheet">
@endsection

@section('breadcrumb')

<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Edit Book</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Books</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Edit</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>

@endsection
            
@section('content')

@if(session('success'))
  <div class="box bg-success text-center col-lg-6 offset-lg-3" style="margin-bottom: 10px;">
      <h6 class="text-white"><i class="mdi mdi-thumb-up"></i> {{ session('success') }}</h6>
  </div>
@endif
<div class="card col-lg-6 offset-lg-3">
  <div class="border-bottom">
    <div class="card-body">
      <h4 class="card-title"><i class="mdi mdi-receipt"></i> Book Info</h4>
    </div>
  </div>
  <form class="form-horizontal" method="POST" id="create_form" data-parsley-validate="parsley" enctype="multipart/form-data">

      <div class="card-body">

          <div class="form-group">
              <label for="title">Title</label>
              <input type="text" id="title" class="form-control" name="title" value="{{ $book->title }}" required>
          </div>
          <div class="form-group">
              <label for="author">Author</label>
              <input type="text" id="author" class="form-control" name="author" value="{{ $book->author }}" required>
          </div>
          <div class="form-group">
              <label for="year_published">Year</label>
              <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="year_published" required>
                      @for($year = date("Y"); $year >= 1900; $year--)
                          <?php echo '<option value="'.$year.'" '.(($year==$book->year_published)?'selected="selected"':"").'>'.$year.'</option>'; ?>
                      @endfor
              </select>
          </div>
          <div class="form-group">
              <label for="course">Course</label>
              <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="course" required>
                      @foreach($courses as $row)
                          <option {{ $row->id == $book->course_id ? 'selected':'' }} value="{{ $row->id }}">{{ $row->name }}</option>
                      @endforeach
              </select>
          </div>
          <div class="form-group">
            <label>Tags</label>
                <select name="tags[]" class="select2 form-control m-t-15" multiple="multiple" style="height: 36px;width: 100%;">
                        @foreach($tags as $row)
                          <option value="{{ $row->id }}">{{ $row->name }}</option>
                      @endforeach
                </select>
          </div>
          <div class="form-group">
              <label for="quantity">Quantity</label>
              <input type="text" id="quantity" class="form-control" name="quantity" value="{{ $book->quantity }}" required>
          </div>
          {{-- <div class="form-group row">
              <label class="col-md-3">Available</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="checkbox" class="custom-control-input" id="available" name="available" @if($book->availability == 1) checked @endif>
                      <label class="custom-control-label" for="available">Yes</label>
                  </div>
              </div>
          </div> --}}
          <div class="form-group row">
              <label class="col-md-3">With Cd</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="checkbox" onchange="validatebtn()" class="form-control" id="withcd" name="withcd" value="1" @if($book->with_cd == 1) checked @endif>
                  </div>
              </div>
              <label class="col-md-3">Cd Only</label>
              <div class="col-md-9">
                  <div class="custom-control custom-checkbox mr-sm-2">
                      <input type="checkbox" onchange="validatebtn()" class="form-control" id="cdonly" name="cdonly" value="1" @if($book->cd_only == 1) checked @endif>
              </div>
          </div>
        </div>
        @if($book->with_cd || $book->cd_only == 1)
          <div class="form-group">
              <label style="visibility: visible;" id="cdquantitylabel" for="cdquantity">CD Quantity</label>
              <input type="text" id="cdquantity" class="form-control" name="cdquantity" value="{{ $book->cd_quantity }}" required>
          </div>
        @else
        <div class="form-group">
              <label style="visibility: hidden;" id="cdquantitylabel" for="cdquantity">CD Quantity</label>
              <input type="hidden" id="cdquantity" class="form-control" name="cdquantity" value="{{ $book->cd_quantity }}" required>
          </div>
        @endif

          <script>
function validatebtn() {
    if (document.getElementById("withcd").checked == true) {
        document.getElementById("cdquantity").type = "text";
        document.getElementById("cdquantitylabel").style.visibility = "visible";
    }
    else if (document.getElementById("cdonly").checked == true) {
        document.getElementById("cdquantity").type = "text";
        document.getElementById("cdquantitylabel").style.visibility = "visible";
    }
    else {
        document.getElementById("cdquantity").type = "hidden";
        document.getElementById("cdquantitylabel").style.visibility = "hidden";
        }
    }
          </script>


      </div>
    <input type="hidden" name="_token" value="{{ Session::token() }}">
    {{ method_field('PUT') }}  
  </form>
  <div class="border-top">
      <div class="card-body">
          <button type="submit" class="btn btn-cyan btn-sm" form="create_form" formaction="{{ route('book.update', $book->id) }}"><i class="fas fa-save"></i> Submit</button>
          <button type="submit" class="btn btn-success btn-sm" form="create_form" formaction="{{ route('book.update.view', $book->id) }}"><i class="fas fa-eye"></i> Submit And View</button>
      </div>
  </div>
</div>





@endsection


@section('scripts')
      <script src="{{ asset('js/parsley.min.js') }}"></script>
@endsection