<?php
namespace SYS_ADMIN\controllers;

use yii\rest\ActiveController;

class ApiController extends ActiveController
{
    public $modelClass = 'SYS_ADMIN\models\SysAdvise';

    public function actionIndex()
    {
        echo 123;
        exit;
        return [123];
    }
}
