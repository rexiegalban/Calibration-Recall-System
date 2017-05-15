<?php

class PrintController extends Zend_Controller_Action
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
        // action body
    }

    public function recallSystemAction()
    {
        // action body
    }

    public function recallSummaryAction()
    {
        // action body
    }

    public function grSummaryAction()
    {
        date_default_timezone_set("Asia/Manila");
        $db = new Application_Model_DbTable_Calibration();
        
        $grr = "YES";
        $this->view->grr = $grr;
        $this->view->grrData = $db->getPrintByGrr($grr);
        
    }

    public function recallForecastAction()
    {
        date_default_timezone_set("Asia/Manila");
        $db = new Application_Model_DbTable_Calibration();
        
        $status = "AAA";
        $this->view->status = $status;
        $this->view->recallForecastData = $db->getPrintForecast($status);
    }

    public function fpdfPrintAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(false);
        
        date_default_timezone_set("Asia/Manila");
        
        $db = new Application_Model_DbTable_Calibration();
        
        if($params['page'] == 'dateRange'){
            $start_date = date("Y-m-d",strtotime($params['start_date']));
            $end_date   = date("Y-m-d",strtotime($params['end_date']));
            $this->view->pdfTitle = "Calibration Print Recall";
            $this->view->startDate = date("M d, Y",strtotime($start_date));
            $this->view->endDate = date("M d, Y",strtotime($end_date));
            $this->view->contentResults = $db->getDataBydateRange($start_date,$end_date);
        }elseif($params['page'] == 'filtering'){
            $this->view->pdfTitle = "Calibration Print Recall";
            $this->view->contentResults = $db->getDataFiltered($params['filteredBy']);
        }elseif($params['page'] == 'grSummary'){
            $this->view->pdfTitle = "Calibration GR&R Summary";
            $this->view->contentResults = $db->getPrintByGrr($params['grr']);
        }else if($params['page'] == 'forecast'){
            $this->view->pdfTitle = "Calibration Recall Forecast";
            $this->view->contentResults = $db->getPrintForecast($params['status']);
        }
        
    }

    public function showSearchPrintAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Calibration();
        
        $result = $db->filterPrintByParams($params['str']);
        echo json_encode($result);
    }

    public function dateRangeResultsAction()
    {
        date_default_timezone_set("Asia/Manila");
        
        $params = $this->getRequest()->getParams();
        $paramsExploded = explode('-', $params['dateRange']);
        $start_date = date("Y-m-d",strtotime($paramsExploded[0]));
        $end_date   = date("Y-m-d",strtotime($paramsExploded[1]));
        
        $db = new Application_Model_DbTable_Calibration();
        
        $this->view->startDate = $start_date;
        $this->view->endDate = $end_date;
        $this->view->dateRangeContent = $db->getDataBydateRange($start_date,$end_date);
    }

    public function saveExcelAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(false);
        
        date_default_timezone_set("Asia/Manila");
        
        $db = new Application_Model_DbTable_Calibration();
        
        if($params['page'] == 'dateRange'){
            $start_date = date("Y-m-d",strtotime($params['start_date']));
            $end_date   = date("Y-m-d",strtotime($params['end_date']));
            $this->view->pdfTitle = "Calibration Print Recall";
            $this->view->startDate = date("M d, Y",strtotime($start_date));
            $this->view->endDate = date("M d, Y",strtotime($end_date));
            $this->view->contentResults = $db->getDataBydateRange($start_date,$end_date);
        }elseif($params['page'] == 'filtering'){
            $this->view->pdfTitle = "Calibration Print Recall";
            $this->view->contentResults = $db->getDataFiltered($params['filteredBy']);
        }elseif($params['page'] == 'grSummary'){
            $this->view->pdfTitle = "Calibration GR&R Summary";
            $this->view->contentResults = $db->getPrintByGrr($params['grr']);
        }else if($params['page'] == 'forecast'){
            $this->view->pdfTitle = "Calibration Recall Forecast";
            $this->view->contentResults = $db->getPrintForecast($params['status']);
        }
    }

    public function filterResultsAction()
    {
        date_default_timezone_set("Asia/Manila");
        
        $params = $this->getRequest()->getParams();
        
        $db = new Application_Model_DbTable_Calibration();
        
        $this->view->filteredBy = $params['searchPrint'];
        
        $this->view->filteredContent = $db->getDataFiltered($params['searchPrint']);
    }


}



















