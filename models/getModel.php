<?php 
class GetModel extends DB {
    
    static public function getData($table){
        $sql = "SELECT * FROM $table";
        $db = new DB();
        $stmt = $db->prepare($sql);
        $stmt->execute();
        error_log('GET DATA MODEL table '. $table);
        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }



}    
?>