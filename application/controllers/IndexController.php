<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        
    }

    public function indexAction()
    {
        
        $auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
             $this->_forward("index","login"); 
        }else{
            $this->_redirect("calibration");
        }
    }


}





