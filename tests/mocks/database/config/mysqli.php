<?php

return array(

	// Typical Database configuration
	'mysqli' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'mysqli'
	),

	// Database configuration with failover
	'mysqli_failover' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'mysqli',
		'failover' => array(
			array(
				'dsn' => '',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'db_websekolah',
				'dbdriver' => 'mysqli',
			)
		)
	)
);