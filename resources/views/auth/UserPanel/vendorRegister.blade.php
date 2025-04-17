@extends('auth.UserPanel.layouts.userauthmain')
@push('title')
<title>Vendor Registration</title>
@endpush
@section('auth-section')
<div class="position-relative overflow-hidden min-vh-100 w-100">
    <div class="position-relative z-index-5">
        <div class="row">
            <div class="col-xl-12 col-xxl-12">
                <div class="authentication-login   row justify-content-center align-items-center p-4">
                    <div class="d-flex align-items-center justify-content-center">
                        <img src="{{asset('assets/images/jigisha-logo-co-in-AR0MB6lZ5gu5w8Wk.png')}}" class="" alt="" height="100px" width="350px">
                    </div>
                    <div class="">
                        @if ($message = Session::get('success'))
                        <div class="alert border-0 alert-success text-center" role="alert" id="successAlert">
                            <strong>{{ $message }}</strong>
                        </div>
                        @endif
                        @if ($message = Session::get('error'))
                        <div class="alert border-0 alert-danger text-center" role="alert" id="dangerAlert">
                            <strong>{{ $message }}</strong>
                        </div>
                        @endif
                        <div class="mt-0">
                            <div class="card">
                                <div class="card-body wizard-content">
                                    <h1 class="text-center fw-bold text-uppercase mb-0">Vendor Registration</h1>
                                    <h6 class="card-subtitle mb-3"></h6>
                                    <form action="#" id="vendorform" method="POST" class="tab-wizard vertical wizard-circle mt-5" enctype="multipart/form-data">
                                        @csrf
                                        <h6>Basic Details</h6>
                                        <section class="card p-4 w-100 border border-dark">
                                            <!-- Row 1 -->
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="firm_name" class="form-label">Name Of The firm/company</label>
                                                    <input type="text" class="form-control" id="firm_name" name="firm_name" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="email" class="form-label">Email Address</label>
                                                    <input type="email" class="form-control" id="email" name="email" placeholder="E.g. john@doe.com">
                                                </div>
                                            </div>

                                            <!-- Row 2 -->
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label class="form-label">Type Of The Firm</label>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="firm_type[]" value="Public Sector Undertaking" id="type1"><label class="form-check-label" for="type1">Public Sector Undertaking</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="firm_type[]" value="Public limited company Private limited" id="type2"><label class="form-check-label" for="type2">Public limited company Private limited</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="firm_type[]" value="One Person Company" id="type3"><label class="form-check-label" for="type3">One Person Company</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="firm_type[]" value="Sole proprietorship" id="type4"><label class="form-check-label" for="type4">Sole proprietorship</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="firm_type[]" value="NGO" id="type5"><label class="form-check-label" for="type5">NGO</label></div>
                                                </div>

                                                <div class="col-md-6 mb-3">
                                                    <label class="form-label">Status Of The Company</label>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="company_status[]" value="Manu/OEM" id="status1"><label class="form-check-label" for="status1">Manu/OEM</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="company_status[]" value="INDIAn subs" id="status2"><label class="form-check-label" for="status2">INDIAn subs</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="company_status[]" value="Oem Authorize/importer/indian counter part/indian agent" id="status3"><label class="form-check-label" for="status3">Oem Authorize/importer/indian counter part/indian agent</label></div>
                                                    <div class="form-check"><input class="form-check-input" type="checkbox" name="company_status[]" value="Brand owner" id="status4"><label class="form-check-label" for="status4">Brand owner</label></div>
                                                </div>
                                            </div>

                                            <!-- Row 3 -->
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="phone" class="form-label">Phone</label>
                                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="E.g. +1 300 400 5000">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="street_address" class="form-label">Street Address</label>
                                                    <input type="text" class="form-control" id="street_address" name="street_address" placeholder="E.g. 42 Wallaby Way">
                                                </div>
                                            </div>

                                            <!-- Row 4 -->
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="apartment" class="form-label">Apartment, suite, etc</label>
                                                    <input type="text" class="form-control" id="apartment" name="apartment" placeholder="">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="city" class="form-label">City</label>
                                                    <input type="text" class="form-control" id="city" name="city" placeholder="E.g. Sydney">
                                                </div>
                                            </div>

                                            <!-- Row 5 -->
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="state" class="form-label">State/Province</label>
                                                    <input type="text" class="form-control" id="state" name="state" placeholder="E.g. New South Wales">
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="zip" class="form-label">ZIP / Postal Code</label>
                                                    <input type="text" class="form-control" id="zip" name="zip" placeholder="E.g. 2000">
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="country" class="form-label">Country</label>
                                                    <select class="form-control" id="country" name="country">
                                                        <option selected disabled>Select country</option>
                                                        <!-- Add country options dynamically if needed -->
                                                    </select>
                                                </div>
                                            </div>

                                            <!-- Additional Details -->
                                            <div class="mb-3">
                                                <label for="website" class="form-label">Website</label>
                                                <input type="text" class="form-control" id="website" name="website" placeholder="E.g. http://www.example.com">
                                            </div>
                                        </section>
                                        <h6>Upload Documents</h6>
                                        <section class="card p-4 w-100 border border-dark">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="pan" class="form-label">PAN Number</label>
                                                    <input type="text" class="form-control" id="pan" name="pan" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="pan_file" class="form-label">PAN Card</label>
                                                    <input type="file" class="form-control" id="pan_file" name="pan_file">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="gst" class="form-label">GST/VAT NUMBER</label>
                                                    <input type="text" class="form-control" id="gst" name="gst" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="gst_file" class="form-label">GST Certificates</label>
                                                    <input type="file" class="form-control" id="gst_file" name="gst_file">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="certificate_incorporation" class="form-label">Certificate Of Incorporation</label>
                                                    <input type="text" class="form-control" id="certificate_incorporation" name="certificate_incorporation" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="incorporation_file" class="form-label">Upload Certificate</label>
                                                    <input type="file" class="form-control" id="incorporation_file" name="incorporation_file">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="establishment_certificate" class="form-label">Establishment Certificate</label>
                                                    <input type="text" class="form-control" id="establishment_certificate" name="establishment_certificate" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="establishment_file" class="form-label">Upload Certificate</label>
                                                    <input type="file" class="form-control" id="establishment_file" name="establishment_file">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="trademark_certificates" class="form-label">Trademark & Copyright Certificates</label>
                                                    <input type="text" class="form-control" id="trademark_certificates" name="trademark_certificates" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="trademark_file" class="form-label">Upload Certificates</label>
                                                    <input type="file" class="form-control" id="trademark_file" name="trademark_file">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="turnover" class="form-label">Turnover of Company</label>
                                                    <input type="text" class="form-control" id="turnover" name="turnover" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="ca_certificate_file" class="form-label">CA Certificate (If Turnover > 5 CR)</label>
                                                    <input type="file" class="form-control" id="ca_certificate_file" name="ca_certificate_file">
                                                </div>
                                            </div>

                                            <div class="row mb-4">
                                                <div class="col-md-6">
                                                    <label for="msme" class="form-label">MSME Certificate</label>
                                                    <input type="text" class="form-control" id="msme" name="msme" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="ca_certificate_file" class="form-label">MSME Certificate</label>
                                                    <input type="file" class="form-control" id="msme_certificate_file" name="msme_certificate_file">
                                                </div>
                                            </div>

                                        </section>
                                        <h6>Product Details</h6>
                                        <section class="card p-4 w-100 border border-dark">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="establishment_certificate" class="form-label">Product</label>
                                                    <input type="text" class="form-control" id="establishment_certificate" name="product" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="establishment_certificate" class="form-label">Total Number of Employee</label>
                                                    <input type="text" class="form-control" id="establishment_certificate" name="numberofemployee" placeholder="E.g. text placeholder">
                                                </div>
                                                <div class="col-md-12 mb-3 mt-3">
                                                    <label for="product_brief" class="form-label">Brief about Product</label>
                                                    <textarea class="form-control" id="product_brief" name="product_brief" rows="4" placeholder="Write a brief about the product"></textarea>
                                                </div>
                                                <div class="col-md-12 mb-3">
                                                    <label for="business_brief" class="form-label">Brief about Business</label>
                                                    <textarea class="form-control" id="business_brief" name="business_brief" rows="4" placeholder="Write a brief about the business"></textarea>
                                                </div>
                                                <div class="col-md-12 mb-3">
                                                    <label for="company_brief" class="form-label">Brief about Company</label>
                                                    <textarea class="form-control" id="company_brief" name="company_brief" rows="4" placeholder="Write a brief about the company"></textarea>
                                                </div>
                                            </div>
                                        </section>
                                        <h6>Business Documents</h6>
                                        <section class="card p-4 w-100 border border-dark">
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="product_spec_file" class="form-label">Product Spec</label>
                                                    <input type="file" class="form-control" id="product_spec_file" name="product_spec_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="list_product_file" class="form-label">List of Product</label>
                                                    <input type="file" class="form-control" id="list_product_file" name="list_product_file">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="product_certificate_file" class="form-label">Product Certificate</label>
                                                    <input type="file" class="form-control" id="product_certificate_file" name="product_certificate_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="product_test_file" class="form-label">Product Test Certificate</label>
                                                    <input type="file" class="form-control" id="product_test_file" name="product_test_file">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="catalog_file" class="form-label">Catalog</label>
                                                    <input type="file" class="form-control" id="catalog_file" name="catalog_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="approval_certificate_file" class="form-label">Product Approval Certificate</label>
                                                    <input type="file" class="form-control" id="approval_certificate_file" name="approval_certificate_file">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="epfo_file" class="form-label">EPFO</label>
                                                    <input type="file" class="form-control" id="epfo_file" name="epfo_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="iso_file" class="form-label">ISO Certificate</label>
                                                    <input type="file" class="form-control" id="iso_file" name="iso_file">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="product_image_file" class="form-label">Product Image</label>
                                                    <input type="file" class="form-control" id="product_image_file" name="product_image_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="list_plant_file" class="form-label">List of Plant</label>
                                                    <input type="file" class="form-control" id="list_plant_file" name="list_plant_file">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="registered_address_file" class="form-label">Registered Address Image</label>
                                                    <input type="file" class="form-control" id="registered_address_file" name="registered_address_file">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="head_office_image" class="form-label">Head Office Image</label>
                                                    <input type="file" class="form-control" id="head_office_image" name="head_office_image">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="list_product_1" class="form-label">List of Product</label>
                                                    <input type="file" class="form-control" id="list_product_1" name="list_product_1">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="annual_production_1" class="form-label">Annual Prod.</label>
                                                    <input type="file" class="form-control" id="annual_production_1" name="annual_production_1">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 mb-3">
                                                    <label for="plan_image_1" class="form-label">Plan Image</label>
                                                    <input type="file" class="form-control" id="plan_image_1" name="plan_image_1">
                                                </div>
                                                    <input type="hidden" name="userid" value="{{ $userid }}">
                                            </div>
                                        </section>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).on('click', 'a[href="#finish"]', function(e) {
        e.preventDefault();

        // Collect your form data here
        var formData = new FormData($('#vendorform')[0]);

        // Handle file inputs correctly
        $('input[type="file"]').each(function() {
            var inputName = $(this).attr('name');
            var files = $(this)[0].files;

            if (files.length > 0) {
                for (var i = 0; i < files.length; i++) {
                    formData.append(inputName, files[0]);
                }
            }
        });

        // Log all form values to the console
        for (let [key, value] of formData.entries()) {
            console.log(key, value);
        }

        // Example AJAX request to send form data
        $.ajax({
            url: "{{route('user.vendorinsertion')}}", // Replace with your endpoint
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },
            success: function(response) {
                console.log('Form submitted successfully:', response);
            },
            error: function(error) {
                console.error('Error submitting form:', error);
            }
        });
    });

</script>

<script>
    setTimeout(function() {
        $('#successAlert').fadeOut('slow');
    }, 3000);

    setTimeout(function() {
        $('#dangerAlert').fadeOut('slow');
    }, 3000);

</script>
@endsection
