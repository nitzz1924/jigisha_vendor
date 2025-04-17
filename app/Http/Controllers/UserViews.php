<?php

namespace App\Http\Controllers;

use App\Models\Nortification;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Session;
use Auth, Validator, Hash, Http;
use App\Models\RegisterUser;
use Exception;
use Log;
use App\Models\Master;
use App\Models\PropertyListing;
class UserViews extends Controller
{
    public function dashboard()
    {
        return view('UserPanelPages.dashboard');
    }

    public function logoutuserpanel()
    {
        Auth::guard('customer')->logout();
        return redirect()->route('user.userloginpage');
    }

    public function myprofile()
    {
        $userdata = Auth::guard('customer')->user();
        return view('UserPanelPages.myprofile', compact('userdata'));
    }

    public function updateuserprofile(Request $request)
    {
        // dd($request->all());
        try {
            $user = Auth::guard('customer')->user();
            $filenameprofileimage = "";
            $thumbnailFilename = null;

            if ($request->hasFile('myprofileimage')) {
                $request->validate([
                    'myprofileimage' => 'image|mimes:jpeg,png,jpg|max:2048',
                ]);
                $profileimage = $request->file('myprofileimage');
                $filenameprofileimage = time() . '_' . $profileimage->getClientOriginalName();
                $profileimage->move(public_path('assets/images/Users'), $filenameprofileimage);
            }

            if ($request->hasFile('company_document')) {
                $request->validate([
                    'company_document' => 'required|mimes:jpeg,pdf,jpg',
                ]);

                $file = $request->file('company_document');
                $thumbnailFilename = time() . '_' . $file->getClientOriginalName();
                $file->move(public_path('assets/images/Users'), $thumbnailFilename);
            }

            $user->update([
                'name' => $request->name,
                'email' => $request->email,
                'mobile' => $request->mobile,
                'company_name' => $request->companyname,
                'profile_photo_path' => $filenameprofileimage == null ? $user->profile_photo_path : $filenameprofileimage,
                'company_document' => $thumbnailFilename == null ? $user->company_document : $thumbnailFilename,
            ]);

            return back()->with('success', "Profile Updated..!!!");
        } catch (Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }

    public function userloginpage()
    {
        return view('auth.UserPanel.login');
    }
    public function userregistration()
    {
       
        return view('auth.UserPanel.registration');
    }

    public function registeruser(Request $request)
    {
        // dd($request->all());
        try {
            // Validate all input fields including reCAPTCHA
            $validator = Validator::make($request->all(), [
                'email' => 'required|email|unique:register_users',
                'mobile' => 'required|unique:register_users|digits:10',
                'fullname' => 'required',
            ]);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            }

            // Create user record
            RegisterUser::create([
                'name' => $request->fullname,
                'mobile' => $request->mobile,
                'email' => $request->email,
                'company_name' => $request->company_name,
                'password' => Hash::make($request->password),
                'profile_photo_path' => '/defaultuser.png',
            ]);

            $user = RegisterUser::where('email', $request->email)->first();
            return redirect()->route('user.vendorregisteration')->with('userid', $user->id);

        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage())->withInput();
        }
    }

    public function loginuser(Request $rq)
    {
        try {
            $user = RegisterUser::where('email', $rq->email)->first();
            if ($user) {
                if (Hash::check($rq->password, $user->password)) {
                    Auth::guard('customer')->login($user);
                    if (Auth::guard('customer')->check()) {
                        $user->verification_status = 1;
                        $user->save();
                        return redirect()->route('user.dashboard');
                    } else {
                        return back()->with('error', "Invalid Credentials..!!!");
                    }
                } else {
                    return back()->with('error', "Invalid Password..!!!");
                }
            } else {
                return back()->with('error', "Invalid Email..!!!");
            }
        } catch (Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }

    public function updatepassword(Request $request)
    {
        try {
            $user = Auth::guard('customer')->user();
            if (Hash::check($request->oldpassword, $user->password)) {
                $udpatedpassword = $user->password = Hash::make($request->newpassword);
            }
            $user->update([
                'password' => $udpatedpassword ?? $user->password,
            ]);
            return back()->with('success', "Password Updated..!!!");
        } catch (Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }
    public function vendorregisteration()
    {
        $userid = session('userid');
        return view('auth.UserPanel.vendorRegister', compact('userid'));
    }

    public function vendorinsertion(Request $request)
    {
        try {
            $fields = $request->all(); // Includes both text + file inputs

            // List all file input names
            $fileInputs = [
                'pan_file',
                'gst_file',
                'incorporation_file',
                'establishment_file',
                'trademark_file',
                'ca_certificate_file',
                'msme_certificate_file',
                'product_spec_file',
                'product_certificate_file',
                'product_test_file',
                'catalog_file',
                'approval_certificate_file',
                'epfo_file',
                'iso_file',
                'product_image_file',
                'list_plant_file',
                'registered_address_file',
                'head_office_image',
                'list_product_1',
                'annual_production_1',
                'plan_image_1'
            ];

            // Loop through file inputs and store them
            foreach ($fileInputs as $fileField) {
                if ($request->hasFile($fileField)) {
                    $file = $request->file($fileField);
                    $filename = time() . '_' . $file->getClientOriginalName();
                    $file->move(public_path('assets/images/Vendors'), $filename);
                    $fields[$fileField] = $filename;
                }
            }
            // Convert any array values to comma-separated strings
            foreach ($fields as $key => $value) {
                if (is_array($value)) {
                    $fields[$key] = json_encode($value);
                }
            }
            Log::info($fields);
            $data = Vendor::create($fields);

            return response()->json(['data' => $data, 'message' => 'Listing inserted successfully!']);
        } catch (Exception $e) {
            return response()->json(['error' => true, 'message' => $e->getMessage()]);
        }

    }
}
