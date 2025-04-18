<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Lead;
use App\Models\Master;
use App\Models\Nortification;
use App\Models\Project;
use App\Models\PropertyListing;
use App\Models\RegisterCompany;
use App\Models\RegisterUser;
use Illuminate\Http\Request;
use Auth;
use Notification;
class AdminViews extends Controller
{
    public function admindashboard()
    {
        
        return view('AdminPanelPages.dashboard');
    }
    public function master()
    {
        $data = Master::where('type', 'Master')->get();
        $allcategories = Master::orderBy('created_at', 'desc')->get();

        return view('AdminPanelPages.master', compact('data', 'allcategories'));
    }
    public function companyprofile()
    {
        $companydata = RegisterCompany::first();
        return view('AdminPanelPages.companyprofile', compact('companydata'));
    }
    public function myprofile()
    {
        $userdata = auth()->user();
        // dd($userdata);
        return view('AdminPanelPages.myprofile', compact('userdata'));
    }
    public function allusers(){
        $allusers = RegisterUser::orderBy('created_at', 'desc')->get();
        $userscnt = RegisterUser::count();
        return view('AdminPanelPages.allusers', compact('allusers','userscnt'));
    }
}
