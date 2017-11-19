<?php
namespace SYS_ADMIN\controllers;

use SYS_ADMIN\models\SysAdvise;

class GridViewController extends CommonController
{
    /**
     *
     */
    public function actionList()
    {
        $advise = SysAdvise::find()
            ->select(['*'])
            ->asArray()
            ->all();
        return $this->render('index');
    }
}
