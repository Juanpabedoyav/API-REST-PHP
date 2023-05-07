<?php 
require_once('controllers/getController.php');
$table = explode('?', $routes[1])[0];
$param = $_GET['column'] ?? '*';
$response = new GetController();

if(isset($_GET['linkTo']) && isset($_GET['equalTo'])){
    $response->getFilter($table, $param, $_GET['linkTo'], $_GET['equalTo']);
}else{
    $response->getData($table, $param);
}

?>