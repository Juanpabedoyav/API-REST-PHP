<?php
require_once('lib/db.php');
require_once('config/config.php');
require_once('controllers/routesController.php');

error_reporting(E_ALL); // Error/Exception engine, always use E_ALL
ini_set('ignore_repeated_errors', TRUE); // always use TRUE
ini_set('display_errors', TRUE); // Error/Exception display, use FALSE only in production environment or real server. Use TRUE in development environment
ini_set('log_errors', TRUE); // Error/Exception file logging engine.
ini_set("error_log", "/xampp/htdocs/PHP-API/php-error.log");
error_log( "start api" );



$index = new RoutesController();
$index->index();
?>