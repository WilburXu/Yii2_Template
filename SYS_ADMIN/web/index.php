<?php
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_ENV') or define('YII_ENV', 'dev');
defined('YII_FRAMEWORK_PATH') or define('YII_FRAMEWORK_PATH', __DIR__ . '/../../SYS_YiiFramework');

require(YII_FRAMEWORK_PATH . '/vendor/autoload.php');
require(YII_FRAMEWORK_PATH . '/vendor/yiisoft/yii2/Yii.php');
require(YII_FRAMEWORK_PATH . '/common/config/bootstrap.php');
require(__DIR__ . '/../config/bootstrap.php');

$config = yii\helpers\ArrayHelper::merge(
    require(YII_FRAMEWORK_PATH . '/common/config/main.php'),
    require(YII_FRAMEWORK_PATH . '/common/config/main-local.php'),
    require(__DIR__ . '/../config/main.php')
);

(new yii\web\Application($config))->run();
