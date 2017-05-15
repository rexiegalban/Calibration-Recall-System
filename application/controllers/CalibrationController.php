<?php

class CalibrationController extends Zend_Controller_Action
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
        $db = new Application_Model_DbTable_Calibration();
        
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
        
        //reminder
        $remind = new Application_Model_DbTable_Reminder();
        $reminderStatus = "Pending";
        $this->view->reminderContent = $remind->getReminderPending($reminderStatus,$today->format('Y-m-d'));
    }

    public function scheduleTodayAction()
    {
        $db = new Application_Model_DbTable_Calibration();
        
        //get today's date
        date_default_timezone_set("Asia/Manila");
        $today = new DateTime('now');        
        $this->view->today = $today->format("l - F d, Y");
        
        $this->view->scheduleToday = $db->getScheduleDate($today->format('Y-m-d'),false);
    }

    public function scheduleTomorrowAction()
    {
        $db = new Application_Model_DbTable_Calibration();
        
        //get tomorrow's date
        date_default_timezone_set("Asia/Manila");
        $tomorrow = new DateTime('tomorrow'); 
        $this->view->tomorrow = $tomorrow->format('l');
        
        $this->view->scheduleTomorrow = $db->getScheduleDate($tomorrow->format("Y-m-d"),false);
    }

    public function scheduleNextdayAction()
    {
        $db = new Application_Model_DbTable_Calibration();
        
        //get nextday date
        date_default_timezone_set("Asia/Manila");
        $today = new DateTime('now');
        $nextday = new DateTime($today->format('Y-m-d H:i:s'));
        $nextday->modify('+2 day');
        $this->view->nextday = $nextday->format('l');
        
        $this->view->scheduleNextday = $db->getScheduleDate($nextday->format("Y-m-d"),false);
    }

    public function scheduleBacklagAction()
    {
        $db = new Application_Model_DbTable_Calibration();
        
        //get today's date
        date_default_timezone_set("Asia/Manila");
        $today = new DateTime('now');        
        
        $this->view->scheduleBacklag = $db->getScheduleDate($today->format('Y-m-d'),true);
    }

    public function scheduleContentAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Calibration();
        
        $result = $db->getContentById($params['id']);
        
        if($result){
            echo json_encode($result);
        }
    }



}













