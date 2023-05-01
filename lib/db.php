<?php 

    class DB{
        private $host;
        private $user;
        private $password;
        private $db;
        private $charset;

        public function __construct(){
            $this->host = constant('HOST');
            $this->user = constant('USER');
            $this->password = constant('PASSWORD');
            $this->db = constant('DB');
            $this->charset = constant('CHARSET');
        }

        public function conection(){  
            try{
                $conection = "mysql:host={$this->host};dbname={$this->db};charset={$this->charset}";
                $options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_EMULATE_PREPARES => false];          
                $pdo = new PDO($conection, $this->user, $this->password, $options);
                error_log('conection with database succesfull ');
                return $pdo;
            }catch(PDOException $e){
                print_r("Error conection" . $e->getMessage());
            }

        }
        function query($query){
            return $this->conection()->query($query);
        }
        function prepare($query){
            return $this->conection()->prepare($query);
        }
    }





?>