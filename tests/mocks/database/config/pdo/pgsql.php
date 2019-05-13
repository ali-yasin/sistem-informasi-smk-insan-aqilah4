<?php

return array(

	// Typical Database configuration
	'pdo/pgsql' => array(
		'dsn' => 'pgsql:host=localhost;port=5432;dbname=ci_test;',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'pgsql'
	),

	// Database configuration with failover
	'pdo/pgsql_failover' => array(
		'dsn' => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'pgsql',
		'failover' => array(
			array(
				'dsn' => 'pgsql:host=localhost;port=5432;dbname=db_websekolah;',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'db_websekolah',
				'dbdriver' => 'pdo',
				'subdriver' => 'pgsql'
			)
		)
	)
);