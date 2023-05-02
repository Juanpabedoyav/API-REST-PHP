<?php 
require_once('models/getModel.php');
class GetController{
     static public function getData($table){
        $response = GetModel::getData($table);
        $return = new GetController();
        $return->manage_response($response);
    }

    public function manage_response($response){
        if(!empty($response)){
            $json = array(
                'status' => 200,
                'total' => count($response), 
                'result' => $response
              );

        }else{
            $json = array(
                'status' => 404,
                'result' => 'Not found'
              );
            }
        echo json_encode($json, http_response_code($json['status']));
    }
}
?>