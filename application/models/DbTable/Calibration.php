<?php

class Application_Model_DbTable_Calibration extends Zend_Db_Table_Abstract {

    protected $_name    = 'calibration_qa';
    protected $_primary = 'id';
    
    //dashboard
    public function getCountDate($date,$backlag){        
        if(!$backlag){
            $select = $this->select()
                    ->where("date_calibration=?",$date);
            $result = $this->fetchAll($select);
        }else{
            $select = $this->select()
                    ->where("date_calibration<?",$date)
                    ->where("status=?", "AAA");
            $result = $this->fetchAll($select);
        }
        
        return count($result);
    }

    public function getScheduleDate($date,$backlag){        
        if(!$backlag){
            $select = $this->select()
                    ->where("date_calibration=?",$date);
            $result = $this->fetchAll($select);
        }else{
            $select = $this->select()
                    ->where("date_calibration<?",$date)
                    ->where("status=?", "AAA");
            $result = $this->fetchAll($select);
        }
        
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    public function getContentById($id){        
        $select = $this->select()->where("id=?",$id);
        $result = $this->fetchRow($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //record
    public function getRecordCalibration($start_date,$end_date){        
        $select = $this->select()
                ->where("date_calibration>=?",$start_date)
                ->where("date_calibration<=?",$end_date);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
        
    }
    
    public function updateCalibration($params){
        if ($params['id']) {
                $data = array(
                        "description" => $params['description'],
                            "manufacturer" => $params['manufacturer'],
                                "model_number" => $params['model_number'],
                                    "serial_number" => $params['serial_number'],
                                        "date_calibration" => date("Y-m-d",  strtotime($params['date_calibration'])),
                                            "next_calibration" => date("Y-m-d",  strtotime($params['next_calibration'])),
                                                "frequency" => $params['frequency'],
                                                    "tolerance" => $params['tolerance'],
                                                "location" => $params['location'],
                                            "remarks" => $params['remarks'],
                                        "calibration_hour" => $params['calibration_hour'],
                                    "calibration_by" => $params['calibration_by'],
                                "status" => $params['status'],
                        "rep_number" => $params['rep_number']
                );			
                $this->update($data,$this->_db->quoteInto("id=?",$params['id']));
        }
    }  
    
    public function deleteCalibration($id){
        $this->delete($this->_db->quoteInto("id=?",$id));
    }
    
    //gr&r
    public function getGrStudyContent($content){        
        $select = $this->select()->where("status=?", $content)->order("date_calibration", ASC);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //active PR
    public function prActivePrContent($content){        
        $select = $this->select()->where("status=?", $content);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //search record 
    public function getRecorByCs_code($cs_code){    
        $select = $this->select()->where("cs_code LIKE ?","%".$cs_code."%");
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //filter print recall
    public function filterPrintByParams($str){
        
        $description    = new Zend_Db_Expr("description LIKE '%".$str."%'");
        $remarks        = new Zend_Db_Expr("remarks LIKE '%".$str."%'");
        $location       = new Zend_Db_Expr("location LIKE '%".$str."%'");
        
        $select = $this->select()
                ->where("{$description} OR {$remarks} OR {$location}");
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //get date range filtered
    public function getDataBydateRange($start_date,$end_date){      
       $select = $this->select()
                ->where("date_calibration>=?",$start_date)
                ->where("date_calibration<=?",$end_date);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //print grr 
    public function getPrintByGrr($grr){    
        $select = $this->select()->where("grr_request=?", $grr);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //print recall forecast 
    public function getPrintForecast($status){    
        $select = $this->select()->where("status=?", $status);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //print filtered str
    public function getDataFiltered($str){    
        
       $select = $this->select()
                ->where("description=?", $str)
                ->orWhere("remarks=?", $str)
                ->orWhere("location=?", $str);
        $result = $this->fetchAll($select);

        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
    
    //add record
    public function addCalibrationRecord($params){
        $data = array(
                "cs_code" => $params['cs_code'],
                "description" => $params['description'],
                    "manufacturer" => $params['manufacturer'],
                            "serial_number" => $params['serial_number'],
                                "date_calibration" => date("Y-m-d",  strtotime($params['date_calibration'])),
                                    "next_calibration" => date("Y-m-d",  strtotime($params['next_calibration'])),
                                        "frequency" => $params['frequency'],
                                            "tolerance" => $params['tolerance'],
                                        "location" => $params['location'],
                                    "remarks" => $params['remarks'],
                                "calibration_hour" => $params['calibration_hour'],
                            "calibration_by" => $params['calibration_by'],
                        "status" => $params['status'],
                "rep_number" => $params['rep_number']
        );			
	$this->insert($data);
    }
    
    public function getCscodeGen($code_generator){
        
        $select = $this->select()
                ->where('cs_code LIKE ?', $code_generator.'%');
        $result = $this->fetchAll($select);
        if ($result) {
                $result = $result->toArray();
                return $result;
        }else{
                return false;
        }
    }
}