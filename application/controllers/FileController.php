<?php

class FileController extends Zend_Controller_Action
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

    public function viewReminderContentAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Reminder();
        
        $result = $db->viewReminderById($params['id']);
        echo json_encode($result);
    }

    public function reminderAction()
    {
        $db = new Application_Model_DbTable_Reminder();
        
        //get today's date
        date_default_timezone_set("Asia/Manila");
        $today = new DateTime('now');                
        $this->view->reminderContent = $db->getReminder($today->format('Y-m-d'));
    }

    public function addReminderAction()
    {
        $params = $this->getRequest()->getParams();
        $db = new Application_Model_DbTable_Reminder();
        if ($this->getRequest()->isPost()) {
                $db->addReminder($params);				
                $this->_redirect("file/reminder");
        }
    }

    public function updateReminderAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Reminder();
        if($params){
            $db->updateReminder($params);
        }
    }

    public function deleteReminderAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Reminder();
        
        if($params){
            $db->deleteReminder($params['id']);
        }
    }

    public function personnelDataAction()
    {
        $user = new Application_Model_DbTable_Personnel();
        $this->view->personnelList = $user->fetchAll()->toArray();
    }

    public function addPersonnelAction()
    {
        $params = $this->getRequest()->getParams();
        $db = new Application_Model_DbTable_Personnel();
        if ($this->getRequest()->isPost()) {
                $db->addPersonnel($params);				
                $this->_redirect("file/personnel-data");
        }
    }

    public function viewPersonnelContentAction()
    {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Personnel();
        
        $result = $db->viewPersonnelById($params['id']);
        echo json_encode($result);
    }

    public function updatePersonnelDataAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Personnel();
        if($params){
            $db->updatePersonnelData($params);
        }
    }

    public function deletePersonnelAction()
    {
        $params = $this->params; //get parameter
        $this->_helper->layout()->disableLayout(); //not include layouts
        $this->_helper->viewRenderer->setNoRender(true); //?
        
        $db = new Application_Model_DbTable_Personnel();
        
        if($params){
            $db->deletePersonnel($params['id']);
        }
    }


}























