<?php
namespace SYS_ADMIN\controllers;

use SYS_ADMIN\models\SysDemo;

class TextController extends CommonController
{
    /**
     * Site Index
     */
    public function actionIndex()
    {
        $model = new SysDemo();
        return $this->render('index', [
            'model' => $model
        ]);
    }
}
