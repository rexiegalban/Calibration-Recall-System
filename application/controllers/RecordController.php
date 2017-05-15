<?php

class RecordController extends Zend_Controller_Action
{

    public function init()
    {
        $this->params = $this->getRequest()->getParams();
        $auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
            $this->_redirect("/login");
        }
    }

    public function indexAction()
    {
        //set default date and time
        date_default_timezone_set("Asia/Manila");

        //get today's date
        $today = new DateTime('now');        
        $this->view->today = $today->format("l - F d, Y");
        $this->view->todayCntr = $db->getCountDate($today->format('Y-m-d'),false);
        
        //get tomorrow's date
        $tomorrow = new DateTime('tomorrow'); 
        $this->view->tomorrow = $tomorrow->format('l');
        $this->view->tomorrowCntr = $db->getCountDate($tomorrow->format("Y-m-d"),false);
        
        //get nextday date
        $nextday = new DateTime($today->format('Y-m-d H:i:s'));
        $nextday->modify('+2 day');
        $this->view->nextday = $nextday->format('l');
        $this->view->nextdayCntr = $db->getCountDate($nextday->format("Y-m-d"),false);
        
        //backlag counter
        $this->view->backlagCntr = $db->getCountDate($today->format('Y-m-d'),true);
    }

    public function calibrationAction()
    {
        $db = new Application_Model_DbTable_Calibration();
        
        //get date for record calibration
        date_default_timezone_set("Asia/Manila");
        
        $start_date = new DateTime('-1 day'); 
        $end_date = new DateTime('+2 day'); 
        
        $this->view->start_date = $start_date->format("Y-m-d");
        $this->view->end_date = $end_date->format("Y-m-d");
        
        $this->view->recordCalibration = $db->getRecordCalibration($start_date->format("Y-m-d"),$end_date->format("Y-m-d"));
    }

    public function grStudyAction()
    {
        date_default_timezone_set("Asia/Manila");
        
        $db = new Application_Model_DbTable_Calibration();
        $grContent = "AAA";
        $this->view->content = $grContent;
        $this->view->grStudyContent = $db->getGrStudyContent($grContent);
    }

    public function searchRecordAction()
    {
    }

    public function showSearchRecordAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Calibration();
        
        $result = $db->getRecorByCs_code($params['cs_code']);
        echo json_encode($result);
    }

    public function incomingLogAction()
    {
        // action body
    }

    public function activePrAction()
    {
        date_default_timezone_set("Asia/Manila");
        
        $db = new Application_Model_DbTable_Calibration();
        $prContent = "AAB";
        $this->view->content = $prContent;
        $this->view->activePrContent = $db->prActivePrContent($prContent);
    }

    public function equipmentNoticeAction()
    {
        // action body
    }

    public function fpdfPrintAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(false);
        
        date_default_timezone_set("Asia/Manila");
        $db = new Application_Model_DbTable_Calibration();
        
        if($params['page'] == 'calibration'){
            $start_date = date("Y-m-d",strtotime($params['start_date']));
            $end_date   = date("Y-m-d",strtotime($params['end_date']));
            $this->view->pdfTitle = "Record Calibration";
            $this->view->startDate = date("M d, Y",strtotime($start_date));
            $this->view->endDate = date("M d, Y",strtotime($end_date));
            $this->view->contentResults = $db->getRecordCalibration($start_date,$end_date);
        }elseif($params['page'] == 'grStudy'){
            $this->view->pdfTitle = "Record GR&R Study";
            $this->view->contentResults = $db->getGrStudyContent($params['content']);
        }else if($params['page'] == 'activePR'){
            $this->view->pdfTitle = "Record Active PR";
            $this->view->contentResults = $db->prActivePrContent($params['content']);
        }
    }

    public function updateCalibrationContentAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Calibration();
        if($params){
            $db->updateCalibration($params);
        }
    }

    public function deleteCalibrationEntryAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Calibration();
        
        if($params){
            $db->deleteCalibration($params['id']);
        }
    }

    public function addRecordAction()
    {
        $params = $this->getRequest()->getParams();
        $db = new Application_Model_DbTable_Calibration();
        if ($this->getRequest()->isPost()) {
                $db->addCalibrationRecord($params);				
                $this->_redirect("record/add-record");
        }
    }

    public function getCscodeAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Calibration();
        
        $code_generator = $params['code_department'].$params['code_category'].$params['code_description'];
        
        $result = $db->getCscodeGen($code_generator);
        
        echo json_encode($result);
    }


}

























