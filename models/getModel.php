<?php 
class GetModel extends DB {
    
    static public function getData($table, $param){
        $sql = "SELECT $param FROM $table";
        $db = new DB();
        $stmt = $db->prepare($sql);
        $stmt->execute();
        error_log('GET DATA MODEL table '. $table);
        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }

    static public function getFilter($table, $param, $linkTo, $equalTo){
        $sql = "SELECT $param FROM $table WHERE $linkTo = :equalTo";
        $db = new DB();
        $stmt = $db->prepare($sql);
        $stmt->execute([
            'equalTo' => $equalTo,
        ]);
        error_log('GET FILTER MODEL');
        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }  
}  
?>