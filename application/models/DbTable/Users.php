<?php

class Application_Model_DbTable_Users extends Zend_Db_Table_Abstract {

    protected $_name    = 'user';
    protected $_primary = 'id';


    public function addUser($params){
        
        $data = array(
            "uname" => $params['username'],
            "pword" => $params['password'],
            "fullname" => $params['fullname'],
            "type" => $params['type']
        );
        $this->insert($data);
        
    }

}

