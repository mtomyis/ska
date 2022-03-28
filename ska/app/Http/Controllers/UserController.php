<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Login;

class UserController extends Controller
{
    public function register(){
        return view('layouts.register');
    }
    
    public function createUser(Request $request){

        if($request->password != $request->cpassword){
            \Session::flash('error','password tidak sama');
            return redirect('/register');
        }
        $post = new Login();
        $post->name = $request->name;
        $post->email = $request->email;
        // $post->password =\Hash::make($request->password);
        $post->password = $request->password;
        $post->save();
        return view('layouts.register');
    }

    public function login(){
        return view('layouts.login');
    }

    public function getUser(Request $request){
        $user = Login::where('email', $request->email)->first();

        if($user->id != null){
            // if(\Hash::check($request->password, $user->password)){
            if(($request->password == $user->password)){
                \Session::put('user', $user);

                return redirect('/');
            }else{
                \Session::flash('error', 'Email atau Password tidak cocok');

                 return redirect('/login');
            }
        }else{
            \Session::flash('error', 'Email tidak ditemukan');

            return redirect('/login');
        }
    }

    public function logout(){
        \Session::flush();

        return redirect('/login');
    }

    public function tambah(){
        \Session::flush();
        return redirect('/input');
    }

}
