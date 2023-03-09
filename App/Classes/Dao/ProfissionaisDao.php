<?php
namespace App\Classes\Dao;
use App\Settings\Conexao;

class ProfissionaisDao{
    private $conexao;

    public function __construct(){
        $this->conexao = new Conexao();
    }

    public function efetuaLogin($usuario, $senha){
        $sql = "SELECT * FROM oc_profissionais WHERE '".$usuario."' = usuario_profissional AND '".$senha."' = senha_profissional";
        $exe = mysqli_query($this->conexao->getDb_con(), $sql);
        if(mysqli_num_rows($exe) > 0){
            return true;
        }else{
            return false;
        }
    }

    public function dadosProfissional($usuario){
        $sql = "SELECT * FROM oc_profissionais WHERE '".$usuario."' = usuario_profissional";
        $exe = mysqli_query($this->conexao->getDb_con(), $sql);
        if(mysqli_num_rows($exe) > 0){
            return $exe;
        }else{
            return false;
        }
    }
}