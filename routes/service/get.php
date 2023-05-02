<?php 
require_once('controllers/getController.php');
$table = $routes[1];
$response = new GetController();
$response->getData($table);

?>