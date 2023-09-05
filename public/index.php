<?php
use Jayp\ProjectPhp\app\User;

require '../vendor/autoload.php';

$user = new User;
echo $user->create();