<?php

use SYS_ADMIN\assets\AppAsset;

$this->title = '饼图';
AppAsset::addScript($this, '/vendor/echarts/echarts.js?v=' . Yii::$app->params['versionJS']);
AppAsset::addScript($this, '/js/echarts/pie.js?v=' . Yii::$app->params['versionJS']);
?>

<div class="normalheader transition animated fadeIn">
    <div class="hpanel">
        <div class="panel-body">
            <a class="small-header-action" href="">
                <div class="clip-header">
                    <i class="fa fa-arrow-up"></i>
                </div>
            </a>
            <div id="hbreadcrumb" class="pull-right m-t-lg">
                <ol class="hbreadcrumb breadcrumb">
                    <li><a href="/">Dashboard</a></li>
                    <li>
                        <span>Charts</span>
                    </li>
                    <li class="active">
                        <span>饼图 </span>
                    </li>
                </ol>
            </div>
            <h2 class="font-light m-b-xs">
                饼图
            </h2>
            <small>Simple HTML5 Charts using the canvas element</small>
        </div>
    </div>
</div>
<div class="content animate-panel">
    <div class="row">
        <div class="col-lg-6">
            <div class="hpanel">
                <div class="panel-heading">
                    <div class="panel-tools">
                        <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                        <a class="closebox"><i class="fa fa-times"></i></a>
                    </div>
                    Radar type chart
                </div>
                <div class="panel-body">
                    <div>
                        <div id="main" style="width: 600px;height:600px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
