<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
//        'db' => [
//            'class' => 'yii\db\Connection',
//            'dsn' => getenv('YII_DB_SYS_DSN'),
//            'username' => getenv('YII_DB_SYS_USER'),
//            'password' => getenv('YII_DB_SYS_PASS'),
//            'charset' => 'utf8',
//            'tablePrefix' => getenv('YII_DB_SYS_PRE')
//        ],
    ],

];
