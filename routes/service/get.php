<?php 
require_once('controllers/getController.php');
$table = explode('?', $routes[1])[0];
$param = $_GET['column'] ?? '*';
$response = new GetController();
$response->getData($table, $param);

?>