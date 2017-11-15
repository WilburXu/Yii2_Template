<?php
use yii\bootstrap\ActiveForm;

$this->title = '富文本';
?>

<div class="content">
    <?php $form = ActiveForm::begin(['id' => 'loginForm']); ?>
        <?= $form->field($model, 'content')->widget(\yii\redactor\widgets\Redactor::className(), [
            'clientOptions' => [
                'imageManagerJson' => ['/redactor/upload/images-json'],
                'imageUpload' => ['/redactor/upload/images'],
                'fileUpload' => ['/redactor/upload/files'],
                'lang' => 'zh_cn',
                'plugins' => ['clips', 'fontcolor','imagemanager']
            ]
        ]) ?>
    <?php ActiveForm::end(); ?>
</div>