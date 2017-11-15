<?php
namespace SYS_ADMIN\controllers;

class HomeController extends CommonController
{
    /**
     * Site Index
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
}
