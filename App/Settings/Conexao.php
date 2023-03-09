<?php
namespace App\Settings;
class Conexao{
    private $db_host = "localhost";
    private $db_user = "root";
    private $db_pass = "Raimundo$123";
    private $db_schema = "odontocloud";
    private $db_con = "";

    public function __construct(){
        $this->db_con = mysqli_connect($this->db_host, $this->db_user, $this->db_pass) or die ("Erro ao Conectar-se");
        mysqli_select_db($this->db_con, $this->db_schema) or die ("Erro ao Selecionar Banco de Dados");
    }

    public function getDb_con(){
        return $this->db_con;
    }
}