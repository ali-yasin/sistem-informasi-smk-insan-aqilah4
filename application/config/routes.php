<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['']='admin/login';
$route['artikel']='blog';
$route['artikel']='blog/index';
$route['artikel/(:any)']='blog/detail/$1';
$route['404_override'] = 'eror';
$route['translate_uri_dashes'] = FALSE;
