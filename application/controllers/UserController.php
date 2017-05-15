<?php

class UserController extends Zend_Controller_Action {

    public function init() {
        $this->params = $this->getRequest()->getParams();
    }

    public function indexAction() {
        $user = new Application_Model_DbTable_Users();
        $this->view->userList = $user->fetchAll()->toArray();
    }

    public function addAction() {
        
    }

    public function ajaxAddAction() {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);

        $user = new Application_Model_DbTable_Users();
        
        $user->addUser($params);
    }

    public function ajaxShowAllAction() {
        $params = $this->params;
        $this->_helper->layout()->disableLayout();
        $this->_helper->viewRenderer->setNoRender(true);
        
        $db = new Application_Model_DbTable_Users();
        
        $result = $db->fetchAll()->toArray();
        echo json_encode($result);
    }
    
    public function ajaxShowViewAction(){
           $this->_helper->layout()->disableLayout();
    }

}