<?php

return array(

	// Typical Database configuration
	'mysql' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'mysql'
	),

	// Database configuration with failover
	'mysql_failover' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'mysql',
		'failover' => array(
			array(
				'dsn' => '',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'db_websekolah',
				'dbdriver' => 'mysql',
			)
		)
	)
);