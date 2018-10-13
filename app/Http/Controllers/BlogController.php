<?php

namespace App\Http\Controllers;
use App\Models\Blog;
use Auth;
use Session;
use Illuminate\Http\Request;


class BlogController extends Controller
{
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $blogs=Blog::orderBy('id', 'asc')->paginate(2);

        return view('admin.blog.index' , compact('blogs'));
    }

    public function create()
    {
        
        return view('admin.blog.create');
    }

    public function store(Request $request)
    {
        
        $request->validate([
            'title' => 'required|min:6',
            'content' => 'required|min:20'
        ]);

        Blog::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => Auth::user()->id
        ]);

        Session::flash('status', 'A new Post was successfully created');
        return redirect()->route('admin.blog.index');
        // return view('admin.blog.index');
    }

    public function show($id)
    {
        $blog = Blog::findOrFail($id);
        return view('admin.blog.show',compact('blog'));
    }

    public function edit(Blog $blog,$id)
    {
        $blog = Blog::findOrFail($id);

        return view('admin.blog.edit',compact('blog'));
    }

    public function update(Request $request, $id)
    {

        $blog = Blog::findOrFail($id);
        $this->validate($request, ['title' => 'required','content' => 'required']);
        $input = $request->all();
        $blog->fill($input)->save();
        Session::flash('flash_message', 'Content successfully added!');
        return redirect()->back();
    }

    public function destroy($id)
    {
        Blog::find($id)->delete();
        return redirect()->route('admin.blog.index')
                        ->with('success','Article deleted successfully');
    }

    
    






    public function backend_dashboard()
    {
        return view('backend.dashboard');
    }

    public function service()
    {
        return view('frontend.service');
    }

    public function news()
    {
        return view('frontend.news');
    }

    public function contact()
    {
        return view('frontend.contact');
    }

    public function support()
    {
        return view('frontend.support');
    }

    public function About()
    {
        return view('frontend.aboutus');
    }

    public function faq()
    {
        return view('frontend.faq');
    }
}