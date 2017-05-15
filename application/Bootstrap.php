<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

    public function _initServicesAndMappers() {
        $loader = new Zend_Application_Module_Autoloader(array(
                    'namespace' => 'Application',
                    'basePath' => APPLICATION_PATH
                ));
        $loader->addResourceType('mapper', 'models/Mapper', 'Model_Mapper');
        $loader->addResourceType('service', 'models/Service', 'Model_Service');
        return $loader;

        return $resourceLoader;
    }

    public function _initLoadClasses() {

    }

    protected function _initRestRoute() {
     
    }

}

