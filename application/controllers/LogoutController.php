<?php

class LogoutController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
         $auth = Zend_Auth::getInstance();
         $auth->clearIdentity();
//        unset($_SESSION['session_user']);
        $this->_redirect("login");
    }


}

