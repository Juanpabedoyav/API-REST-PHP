<?php
require_once('lib/db.php');


$routes = explode("/",$_SERVER["REQUEST_URI"]);
$routes = array_filter($routes);
if(empty($routes)){
  $json = array(
    'status' => 404,
    'message' => 'No found'
  );
  echo json_encode($json, http_response_code($json['status']));
}


?>