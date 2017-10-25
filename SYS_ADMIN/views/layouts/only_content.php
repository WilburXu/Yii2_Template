<?php
/* @var $this \yii\web\View */

/* @var $content string */

use yii\helpers\Html;
use SYS_ADMIN\assets\AppAsset;

AppAsset::register($this);

\romankarkachev\web\HomerAsset::register($this);
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/romankarkachev/yii2-homer-admin/');

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?php $this->head() ?>
</head>

<body class="fixed-navbar fixed-sidebar">
<?php $this->beginBody() ?>

<?= $this->render(
    'content.php',
    ['content' => $content, 'directoryAsset' => $directoryAsset]
) ?>

<?php $this->endBody() ?>

</body>
</html>
<?php $this->endPage() ?>
