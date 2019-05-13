<?php

return array(

	// Typical Database configuration
	'pdo/sqlite' => array(
		'dsn' => 'sqlite:/'.realpath(__DIR__.'/../..').'/ci_test.sqlite',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'sqldb_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'sqlite'
	),

	// Database configuration with failover
	'pdo/sqlite_failover' => array(
		'dsn' => 'sqlite:not_exists.sqlite',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'db_websekolah',
		'dbdriver' => 'pdo',
		'subdriver' => 'sqlite',
		'failover' => array(
			array(
				'dsn' => 'sqlite:/'.realpath(__DIR__.'/../..').'/db_websekolah.sqlite',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'sqldb_websekolah',
				'dbdriver' => 'pdo',
				'subdriver' => 'sqlite'
			)
		)
	)
);