<?php 
class GetModel extends DB {
    
    static function get($table){
        $sql = "SELECT * FROM $table";
        $stmt = new DB(); 
        $stmt->query($sql);
        return $stmt;
    }



}    
?>