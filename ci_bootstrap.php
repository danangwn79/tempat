<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| CI Bootstrap 3 Configuration
| -------------------------------------------------------------------------
| This file lets you define default values to be passed into views 
| when calling MY_Controller's render() function. 
| 
| See example and detailed explanation from:
| 	/application/config/ci_bootstrap_example.php
*/

$config['ci_bootstrap'] = array(

	// Site name
	'site_name' => 'Sukadaya Group',

	// Default page title prefix
	'page_title_prefix' => '',

	// Default page title
	'page_title' => '',

	// Default meta data
	'meta_data'	=> array(
		'author'		=> 'Danang Widhi Nugroho',
		'description'	=> 'Website POS untuk Sukadaya Motor',
		'keywords'		=> 'POS, Sukadaya'
	),
	
	// Default scripts to embed at page head or end
	'scripts' => array(
		'head'	=> array(
			'assets/dist/admin/adminlte.min.js',
			'assets/dist/admin/lib.min.js',
			'assets/dist/admin/app.min.js'
		),
		'foot'	=> array(
		),
	),

	// Default stylesheets to embed at page head
	'stylesheets' => array(
		'screen' => array(
			'assets/dist/admin/adminlte.min.css',
			'assets/dist/admin/lib.min.css',
			'assets/dist/admin/app.min.css'
		)
	),

	// Default CSS class for <body> tag
	'body_class' => '',
	
	// Multilingual settings
	'languages' => array(
	),

	// Menu items
	'menu' => array(
		'home' => array(
			'name'		=> 'Home',
			'url'		=> '',
			'icon'		=> 'fa fa-home',
		),
		// 'user' => array(
		// 	'name'		=> 'Users',
		// 	'url'		=> 'user',
		// 	'icon'		=> 'fa fa-users',
		// 	'children'  => array(
		// 		'List'			=> 'user',
		// 		'Create'		=> 'user/create',
		// 		'User Groups'	=> 'user/group',
		// 	)
		// ),
		// 'panel' => array(
		// 	'name'		=> 'Admin Panel',
		// 	'url'		=> 'panel',
		// 	'icon'		=> 'fa fa-cog',
		// 	'children'  => array(
		// 		'Admin Users'			=> 'panel/admin_user',
		// 		'Create Admin User'		=> 'panel/admin_user_create',
		// 		'Admin User Groups'		=> 'panel/admin_user_group',
		// 	)
		// ),
		// 'util' => array(
		// 	'name'		=> 'Utilities',
		// 	'url'		=> 'util',
		// 	'icon'		=> 'fa fa-cogs',
		// 	'children'  => array(
		// 		'Database Versions'		=> 'util/list_db',
		// 	)
		// ),
		'logout' => array(
			'name'		=> 'Sign Out',
			'url'		=> 'panel/logout',
			'icon'		=> 'fa fa-sign-out',
		)
	),

	// Login page
	'login_url' => 'pos/login',

	// Restricted pages
	'page_auth' => array(
		'user/create'				=> array('webmaster', 'admin', 'manager'),
		'user/group'				=> array('webmaster', 'admin', 'manager'),
		'panel'						=> array('webmaster'),
		'panel/admin_user'			=> array('webmaster'),
		'panel/admin_user_create'	=> array('webmaster'),
		'panel/admin_user_group'	=> array('webmaster'),
		'util'						=> array('webmaster'),
		'util/list_db'				=> array('webmaster'),
		'util/backup_db'			=> array('webmaster'),
		'util/restore_db'			=> array('webmaster'),
		'util/remove_db'			=> array('webmaster'),
	),

	// AdminLTE settings
	'adminlte' => array(
		'body_class' => array(
			'webmaster'	=> 'skin-blue',
			'admin'		=> 'skin-purple',
			'manager'	=> 'skin-black',
			'staff'		=> 'skin-red',
		)
	),

	// Useful links to display at bottom of sidemenu
	'useful_links' => array(
		array(
			'auth'		=> array('webmaster', 'admin', 'manager', 'staff'),
			'name'		=> 'Jadwal Developer',
			'url'		=> 'pos/Jadwal',
			'target'	=> '_self',
			'color'		=> 'text-aqua'
		),
		array(
			'auth'		=> array('webmaster', 'admin', 'manager', 'staff'),
			'name'		=> 'Bantuan Developer',
			'url'		=> 'https://wa.link/srzs9t',
			'target'	=> '_blank',
			'color'		=> 'text-orange'
		),
	),

	// Debug tools
	'debug' => array(
		'view_data'	=> FALSE,
		'profiler'	=> FALSE
	),
);

/*
| -------------------------------------------------------------------------
| Override values from /application/config/config.php
| -------------------------------------------------------------------------
*/
$config['sess_cookie_name'] = 'ci_session_admin_sukadaya';