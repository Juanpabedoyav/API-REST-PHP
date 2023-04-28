<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');


$requestMethod = $_SERVER['REQUEST_METHOD'];
if($requestMethod == 'GET'){


}else{
    $data = [
        'status' => 405,
        'message' => 'Method Not Allowed'
    ];
    header("HTTP/1.0 405 Method Not Allowed");
    echo json_encode($data, http_response_code($data['status']));
}


?>
