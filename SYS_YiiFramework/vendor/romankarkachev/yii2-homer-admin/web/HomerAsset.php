<?php
namespace romankarkachev\web;

use yii\web\AssetBundle as BaseHomerAsset;

/**
 * @author Roman Karkachev <post@romankarkachev.ru>
 * @copyright 2016 Roman Karkachev
 * @date 2016-12-17
 * Homer AssetBundle
 * @since 0.1
 */
class HomerAsset extends BaseHomerAsset
{
    public $sourcePath = '@romankarkachev/src';
    public $css = [
        'fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css',
        'fonts/pe-icon-7-stroke/css/helper.css',
        'vendor/metisMenu/dist/metisMenu.css',
        'vendor/animate.css/animate.css',
        'vendor/fontawesome/css/font-awesome.min.css',
        'styles/style.css',
    ];
    public $js = [
        'vendor/slimScroll/jquery.slimscroll.min.js',
        'vendor/metisMenu/dist/metisMenu.min.js',
        'vendor/iCheck/icheck.min.js',
        'scripts/homer.js',
    ];
    public $depends = [
        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];
}
