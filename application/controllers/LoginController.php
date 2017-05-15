<?php

class LoginController extends Zend_Controller_Action
{

    public function init()
    {
        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $this->_redirect("calibration");
        }
    }

    public function indexAction()
    { 
        $params = $this->getRequest()->getParams(); //get parameters request from view
        
        if($this->getRequest()->isPost()){
            $db = Zend_DB_Table::getDefaultAdapter();
            $authAdapter = new Zend_Auth_Adapter_DbTable($db, 'users', 'username', 'password');
            $authAdapter->setIdentity($params['username']);
            $authAdapter->setCredential($params['password']);
            $auth = Zend_Auth::getInstance();
            $result = $auth->authenticate($authAdapter);
            
            if ($result->isValid()) {
                 $data = $authAdapter->getResultRowObject(array("id","username"), 'password'); //get queried user; if All set NULL
                 $auth->getStorage()->write($data); //save to session
                 $this->_redirect("calibration");
            }  
        }
      $this->_helper->layout->setLayout("login"); //?
    }

    public function loginAction()
    {
        // action body
    }


}



