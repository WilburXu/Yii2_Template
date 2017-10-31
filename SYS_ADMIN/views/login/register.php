<?php

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

?>
<!-- Simple splash screen-->
<div class="splash">
    <div class="color-line"></div>
    <div class="splash-title"><h1>Homer - Responsive Admin Theme</h1>
        <p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p>
        <div class="spinner">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
        </div>
    </div>
</div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a
        href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="color-line"></div>
<div class="back-link">
    <a href="/login/login" class="btn btn-primary">Back to Dashboard</a>
</div>
<div class="register-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>Registration</h3>
                <small>Full suported AngularJS WebApp/Admin template with very clean and aesthetic style prepared for
                    your next app.
                </small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>
                        <div class="row">
                            <div class="form-group col-lg-12">
                                <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-lg-6 m-b-sm">
                                <?= $form->field($model, 'password')->passwordInput() ?>
                            </div>
                            <div class="form-group col-lg-6 m-b-sm">
                                <?= $form->field($model, 'passwordConfirm')->passwordInput() ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-lg-6 m-b-sm">
                                <?= $form->field($model, 'phone') ?>
                            </div>
                            <div class="form-group col-lg-6 m-b-sm">
                                <?= $form->field($model, 'verifyCode')->widget(\yii\captcha\Captcha::className(), [
                                    'name' => 'captchaimg',
                                    'captchaAction' => 'login/captcha',
                                    'template' => '<div class="row form-group"><div class="col-xs-7">{input}</div><div class="col-xs-5">{image}</div></div>',
                                    'imageOptions' => ['id' => 'captchaimg', 'title' => '换一个', 'alt' => '换一个', 'style' => 'cursor:pointer;margin-left:2px;'],
                                ]);
                                ?>
                            </div>
                        </div>
                        <div class="text-center col-lg-12">
                            <?= Html::submitButton('Register', ['class' => 'btn btn-success', 'name' => 'signup-button']) ?>
                            <a class="btn btn-default" href="/login/login">Cancel</a>
                        </div>
                        <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong>HOMER</strong> - AngularJS Responsive WebApp <br/> 2015 Copyright Company Name
        </div>
    </div>
</div>