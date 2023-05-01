<?php 
class GetController{
     static function getData($table){
        $response = GetModel::get($table);
        return $response;
    }

}
?>