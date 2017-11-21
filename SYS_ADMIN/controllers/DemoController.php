<?php
namespace SYS_ADMIN\controllers;

use SYS_ADMIN\components\ArrayHelper;

class DemoController extends CommonController
{
    /**
     * Site Index
     */
    public function actionIndex()
    {
        echo crypt('test123', 'Yc2ds35mCNOfIONcG5z1DxJDczjJedoP');
    }

    public function actionMkdir()
    {
        $ret = ArrayHelper::mkdirs('test/info/images');

        var_dump($ret);
    }

    private function _mkdirs($dir)
    {
        if (!is_dir($dir)) {
            if (!self::_mkdirs(dirname($dir))) {
                return false;
            }
            if (!mkdir($dir, 0777)) {
                return false;
            }
        }
        return true;
    }
}
