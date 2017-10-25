<?php

/* @var $this \yii\web\View */

/* @var $content string */

use SYS_ADMIN\assets\AppAsset;
use yii\helpers\Html;

AppAsset::register($this);
\romankarkachev\web\HomerAsset::register($this);
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/romankarkachev/yii2-homer-admin/');
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="fixed-navbar fixed-sidebar">
<?php $this->beginBody() ?>

<?= $this->render(
    'header.php',
    ['directoryAsset' => $directoryAsset]
) ?>

<?= $this->render('left.php', [
        'directoryAsset' => $directoryAsset,
    ]
)
?>

<div id="wrapper">
    <?= $this->render(
        'content.php',
        ['content' => $content, 'directoryAsset' => $directoryAsset]
    ) ?>
    <footer class="footer">
        Copyright © 2017 Wondershare. All Rights Reserved. </a>
    </footer>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
