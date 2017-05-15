<?php

class Application_Model_DbTable_Login extends Zend_Db_Table_Abstract {

    protected $_name = "user";
    
//    public function checkLog($username,$password){
//        
//        $select = $this->select()->where("uname=?",$username)
//                ->where("pword=?",$password);
//        $result = $this->fetchRow($select);
//
//        if ($result) {
//                $_SESSION['session_user'] = $result['id'];
//                //var_dump($_SESSION['session_user']);
//        }else{
//                return false;
//        }
//    }
}

