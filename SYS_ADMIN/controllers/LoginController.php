<?php

namespace SYS_ADMIN\controllers;

use Yii;
use common\models\LoginForm;
use SYS_ADMIN\models\SignupForm;
use yii\bootstrap\Alert;

/**
 * Site controller
 */
class LoginController extends CommonController
{
    /**
     * @inheritdoc
     */
//    public function behaviors()
//    {
//        return [
//            'verbs' => [
//                'class' => VerbFilter::className(),
//                'actions' => [
//                    'logout' => ['post'],
//                ],
//            ],
//        ];
//    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
                'backColor' => 0x000000, //背景颜色
                'maxLength' => 4, //最大显示个数
                'minLength' => 4, //最少显示个数
                'padding' => 5, //间距
                'height' => 35, //高度
                'width' => 90, //宽度
                'foreColor' => 0xffffff, //字体颜色
                'offset' => 4, //设置字符偏移量 有效果
                //'controller'=>'login',        //拥有这个动作的controller
            ],
        ];
    }

    /**
     * Displays homepage.
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect("/home/index");
        } else {
            $this->layout = 'only_content';
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Register action
     */
    public function actionRegister()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->getSession()->setFlash('success', '注册成功.');
            return $this->redirect(['/login/login']);
        } else {
            $this->layout = 'only_content';
            return $this->render('register', [
                'model' => $model
            ]);
        }

    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
