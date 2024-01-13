<?php

define('PATH', substr(__FILE__, 0, strrpos(__FILE__, '/')));

require_once __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load(); 
