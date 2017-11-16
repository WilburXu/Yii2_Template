<?php
namespace SYS_ADMIN\controllers;

class EchartsController extends CommonController
{
    /**
     * 饼图
     */
    public function actionPie()
    {
        $type = \Yii::$app->request->get('type');
        if ($type) {
            $data = [];
            $data['eLegend'] = ['会消防报警', '会逃生自救', '会扑救初期火灾', '会组织疏散', '会检查消除火灾隐患'];
            $data['eSeries'] = [
                [
                    'name' => '会消防报警',
                    'value' => 335,
                ],
                [
                    'name' => '会扑救初期火灾',
                    'value' => 234,
                ],
                [
                    'name' => '会组织疏散',
                    'value' => 135,
                ],
                [
                    'name' => '会检查消除火灾隐患',
                    'value' => 30,
                ],
                [
                    'name' => '会逃生自救',
                    'value' => 666,
                ],
            ];
            return $this->successInfo($data);
        } else {
            return $this->render('pie');
        }
    }
}
