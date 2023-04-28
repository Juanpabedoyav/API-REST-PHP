<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');


$routes = explode("/",$_SERVER["REQUEST_URI"]);
$routes = array_filter($routes);
$requestMethod = $_SERVER["REQUEST_METHOD"];
if(empty($routes)){
  $json = array(
    'status' => 404,
    'message' => 'No found'
  );
  echo json_encode($json, http_response_code($json['status']));
}
if(!empty($routes) && isset($requestMethod)){
  if($requestMethod == 'GET'){
    $json = array(
      'status' => 200,
      'message' => 'GET'
    );
    echo json_encode($json, http_response_code($json['status']));
  }
  if($requestMethod == 'POST'){
    $json = array(
      'status' => 200,
      'message' => 'POST'
    );
    echo json_encode($json, http_response_code($json['status']));
  }
  if($requestMethod == 'PUT'){
    $json = array(
      'status' => 200,
      'message' => 'PUT'
    );
    echo json_encode($json, http_response_code($json['status']));
  }
  if($requestMethod == 'DELETE'){
    $json = array(
      'status' => 200,
      'message' => 'DELETE'
    );
    echo json_encode($json, http_response_code($json['status']));
  }
}


?>