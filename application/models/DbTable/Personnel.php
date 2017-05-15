<?php

class Application_Model_DbTable_Personnel extends Zend_Db_Table_Abstract {

    protected $_name    = 'personnel';
    protected $_primary = 'id';
    
    public function viewPersonnelById($id){
        $select = $this->select()->where("id=?",$id);
        $result = $this->fetchRow($select);
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    public function addPersonnel($params ){
        $data = array(
                "fname" => $params['fname'],
                    "lname" => $params['lname'],
                    "department" => $params['department'],
                "type" => $params['type']
        );	
	$this->insert($data);
    }
    
    public function updatePersonnelData($params){
        if ($params['id']) {
            $data = array(
                    "fname" => $params['fname'],
                        "lname" => $params['lname'],
                        "department" => $params['department'],
                    "type" => $params['setType']
            );			
            $this->update($data,$this->_db->quoteInto("id=?",$params['id']));
        }
    }

    public function deletePersonnel($id){
        $this->delete($this->_db->quoteInto("id=?",$id));
    }
}

