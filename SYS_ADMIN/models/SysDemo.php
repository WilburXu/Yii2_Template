<?php

namespace SYS_ADMIN\models;

use Yii;

/**
 * This is the model class for table "sys_demo".
 *
 * @property integer $id
 * @property string $content
 */
class SysDemo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_demo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['content'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'content' => Yii::t('app', 'Content'),
        ];
    }
}
