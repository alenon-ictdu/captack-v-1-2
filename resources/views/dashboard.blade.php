@extends('layouts.app3')

@section('title', 'Dashboard')

@section('breadcrumb')

<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Dashboard</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        {{-- <li class="breadcrumb-item"><a href="#">Home</a></li> --}}
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>

@endsection

@section('content')

<!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-md-6 col-lg-6 col-xlg-3">
                        <a href="{{ route('home') }}">
                        <div class="card card-hover">
                            <div class="box bg-cyan text-center">
                                <h1 class="font-light text-white"><i class="fas fa-book"></i></h1>
                                <h5 class="text-white">{{ $books->count() }}</h5>
                                <h6 class="text-white">Total Books</h6>
                            </div>
                        </div>
                        </a>
                    </div>
                    <!-- Column -->
                    {{-- <div class="col-md-6 col-lg-4 col-xlg-3">
                        <a href="{{ route('course.index') }}">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-chart-bubble"></i></h1>
                                <h5 class="text-white">{{ $courses->count() }}</h5>
                                <h6 class="text-white">Total Programs</h6>
                            </div>
                        </div>
                        </a>
                    </div> --}}
                     <!-- Column -->
                    
                    <!-- Column -->
                    <div class="col-md-6 col-lg-6 col-xlg-3">
                        <a href="{{ route('view.borrowers') }}">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="fas fa-users"></i></h1>

                                <h5 class="text-white">
                                {{ $returnedcount }}
                               </h5>
                            
                                <h6 class="text-white">Total Books Borrowed</h6>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
                
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><i class="fas fa-list"></i> Latest Books</h4>
                            </div>
                            <div class="border-top"></div>
                            <div class="comment-widgets scrollable">
                                <!-- Comment Row -->
                                @foreach($latestBooks as $row)
                                <div class="d-flex flex-row comment-row m-t-0">
                                    <div class="p-2"></div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium" style="text-transform: capitalize;">{{$row->author}}</h6>
                                        <span class="m-b-15 d-block" style="text-transform: capitalize;">{{$row->title}} </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-right"> {{$row->year_published}}</span>

                                            <a href="{{ route('book.show', $row->id) }}" class="btn btn-success btn-sm">View</a>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <!-- column -->

                     <div class="col-lg-6">
                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><i class="fas fa-list"></i> Borrowed Books</h4>
                            </div>
                            <div class="border-top"></div>
                            <div class="comment-widgets scrollable">
                                <!-- Comment Row -->
                                @foreach($borrowers as $row)
                                    @if(empty($row->returned))
                                        <div class="d-flex flex-row comment-row m-t-0">
                                            <div class="p-2"></div>
                                            <div class="comment-text w-100">
                                                @if($row->borrowed == 0)
                                                <h6 class="font-medium" style="text-transform: capitalize;">{{$row->book->title}} (Book & CD)</h6>
                                                @elseif($row->borrowed == 1)
                                                <h6 class="font-medium" style="text-transform: capitalize;">{{$row->book->title}} (CD ONLY)</h6>
                                                @elseif($row->borrowed == 2)
                                                <h6 class="font-medium" style="text-transform: capitalize;">{{$row->book->title}} (BOOK ONLY)</h6>
                                                @endif
                                                <span class="m-b-15 d-block" style="text-transform: capitalize;">{{$row->name}} </span>
                                                <span class="m-b-15 d-block" style="text-transform: capitalize;">{{$row->contact}} </span>

                                                <div class="comment-footer">
                                                    <span class="text-muted float-right"> {{$row->borrowed}}</span>
                                                    <span class="text-muted float-right">Due: {{$row->deadline}}</span>
                                                    <a href="{{ route('book.show', $row->id) }}" class="btn btn-success btn-sm">View</a>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                   
                </div>
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->

@endsection