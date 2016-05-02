<?php

return [
	/** Loggers attached to every command */
	'_' => function () {
		return [
			new \Monolog\Handler\StreamHandler('php://stderr', \Monolog\Logger::CRITICAL),
		];
	}
];
