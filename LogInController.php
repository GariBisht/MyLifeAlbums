<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;


class LogInController extends Controller
{
    

    public function login()
    {
        
        return view('auth.login');
    }

    public function login_form(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            //return $request;
          // dd($request);
            // Redirect to the dashboard
          
           return redirect('/detail')->with('success', 'Upload successfully');
          //return redirect()->route('detail');

        } else {
            // Authentication failed, return with error message
            return back()->withInput()->withErrors(['email' => 'Invalid email or password']);
        }
    }

    // public function detail()
    // {
    //     return view('detail');
    // }





}
