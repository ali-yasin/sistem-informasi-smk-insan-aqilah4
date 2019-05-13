<?php

return array(

	// Typical Database configuration
	'pdo/mysql' => array(
		'dsn' => 'mysql:host=localhost;dbname=ci_test',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'mysql'
	),

	// Database configuration with failover
	'pdo/mysql_failover' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'mysql',
		'failover' => array(
			array(
				'dsn' => 'mysql:host=localhost;dbname=db_websekolah',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'db_websekolah',
				'dbdriver' => 'pdo',
				'subdriver' => 'mysql'
			)
		)
	)
);