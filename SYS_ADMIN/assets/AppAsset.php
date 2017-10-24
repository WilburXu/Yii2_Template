<?php

namespace SYS_ADMIN\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css?v=20171024163600',
    ];
    public $js = [
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];

    /**
     * 定义按需加载JS方法，注意加载顺序在最后
     * @param $view
     * @param $jsfile
     */
    public static function addScript($view, $jsfile)
    {
        $view->registerJsFile($jsfile, [AppAsset::className(), 'depends' => '\romankarkachev\web\HomerAsset']);
    }

    /**
     * 定义按需加载css方法，注意加载顺序在最后
     * @param $view
     * @param $cssfile
     */
    public static function addCss($view, $cssfile)
    {
        $view->registerCssFile($cssfile, [AppAsset::className(), 'depends' => '\romankarkachev\web\HomerAsset']);
    }
}
