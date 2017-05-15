<?php

class UploadController extends Zend_Controller_Action
{

    public function init()
    {
        $auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
            $this->_redirect("/login");
        }
    }

    public function indexAction()
    {
        // action body
    }

    public function databaseAction()
    {
        if ($this->getRequest()->isPost()) {
            $db = new Application_Model_DbTable_Calibration();

            $handle = fopen($_FILES['calibrationDb']['tmp_name'],"r");//open files
            $result = array();
            while(($data = fgetcsv($handle, 10000, ",")) !== FALSE){ //fetch

                $result = array(
                    'id' => '',
                    'cs_code' => $data[0],
                    'description' => $data[1],
                    'manufacturer' => $data[2],
                    'model_number' => $data[3],
                    'serial_number' => $data[4],
                    'date_calibration' => date('Y-m-d',strtotime($data[5])),
                    'next_calibration' => $data[6],
                    'frequency' => $data[7],
                    'tolerance' => $data[8],
                    'location' => $data[9],
                    'remarks' => $data[10],
                    'owner' => $data[11],
                    'calibration_hour' => $data[12],
                    'calibration_by' => $data[13],
                    'status' => $data[14],
                    'con_sign' => $data[15],
                    'asset_number' => $data[16],
                    'grr_request' => $data[17],
                    'grr_due' => $data[18],
                    'grr' => $data[19],
                    'grr_date' => $data[20],
                    'grr_personnel' => $data[21],
                    'grr_character' => $data[22],
                    'imt_performance' => $data[23],
                    'rep_number' => $data[24],
                    'recalibration_update' => $data[25],
                    'date_create' => $data[26]
                );
                $db->insert($result);
            }
            $this->_redirect("upload");
        }else{			
            $this->_redirect("upload");
        }
    } 


}







