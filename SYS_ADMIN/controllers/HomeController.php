<?php
namespace SYS_ADMIN\controllers;

class HomeController extends BaseController
{
    /**
     * Site Index
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
}
