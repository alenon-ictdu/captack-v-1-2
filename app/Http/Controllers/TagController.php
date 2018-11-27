<?php

namespace ICTDUInventory\Http\Controllers;

use Illuminate\Http\Request;
use ICTDUInventory\Tag; 
use Session;

class TagController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'name' =>  'required'                           
        ]);

        $tag = New Tag;
        $tag->name = $request->name;
        $tag ->save();

        Session::flash('success', 'tag successfully added.');
        return redirect()->route('tag.index');
        

    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'editedname' => 'required|max:255'
        ]);

        $tag = Tag::find($id);
        $tag->name = $request->editedname;
        $tag->save();
        Session::flash('success', 'Tag has been changed');
        return redirect()->route('tag.index');
    }

    public function index(){
    	$tags = Tag::all();
    	return view('tags.index')->withTags($tags);
    }
}
