<?php
require __DIR__ . '/../vendor/autoload.php';
use Jayp\Config\Database;
$dotenv = Dotenv\Dotenv::createImmutable (__DIR__ . '/../');
$dotenv->load();
$db = Database::getInstance();
