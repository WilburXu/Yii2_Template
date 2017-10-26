<?php
namespace SYS_ADMIN\controllers;

class DemoController extends BaseController
{
    /**
     * Site Index
     */
    public function actionIndex()
    {
        echo crypt('test123', 'Yc2ds35mCNOfIONcG5z1DxJDczjJedoP');
    }

}
