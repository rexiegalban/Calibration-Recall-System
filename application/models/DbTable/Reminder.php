<?php

class Application_Model_DbTable_Reminder extends Zend_Db_Table_Abstract {

    protected $_name = "reminder";
    protected $_primary = 'id';
    
    public function viewReminderById($id){
        $select = $this->select()->where("id=?",$id);
        $result = $this->fetchRow($select);
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    public function getReminder($reminderDate){
        $select = $this->select()->where("dateRemind>=?",$reminderDate);
        $result = $this->fetchAll($select);
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
        
    }
    
    public function getReminderPending($status,$today){
        $select = $this->select()
                ->where("status=?",$status)
                ->where("dateRemind>=?",$today)
                ->order('dateRemind ASC');
        $result = $this->fetchAll($select);
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    public function addReminder($params ){
        //var_dump($params['dateRemind']);
        $data = array(
                "dateRemind" => date("Y-m-d",  strtotime($params['dateRemind'])),
                    "message" => $params['message'],
                "status" => 'Pending'
        );	
	$this->insert($data);
    }
    
    public function updateReminder($params){
        if ($params['id']) {
            $data = array(
                    "dateRemind" => $params['dateRemind'],
                        "message" => $params['message'],
                    "status" => $params['status']
            );			
            $this->update($data,$this->_db->quoteInto("id=?",$params['id']));
        }
    }

    public function deleteReminder($id){
        $this->delete($this->_db->quoteInto("id=?",$id));
    }
}

