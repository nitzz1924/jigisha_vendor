<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    protected $fillable = [
        'userid',
        'firm_name',
        'email',
        'firm_type',
        'company_status',
        'phone',
        'street_address',
        'apartment',
        'city',
        'state',
        'zip',
        'country',
        'website',
        'pan',
        'pan_file',
        'gst',
        'gst_file',
        'certificate_incorporation',
        'incorporation_file',
        'establishment_certificate',
        'establishment_file',
        'trademark_certificate',
        'trademark_file',
        'turnover',
        'ca_certificate_file',
        'msme',
        'msme_certificate_file',
        'product',
        'numberofemployee',
        'product_brief',
        'business_brief',
        'company_brief',
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
    
}
