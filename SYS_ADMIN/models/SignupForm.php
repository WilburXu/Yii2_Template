<?php

namespace SYS_ADMIN\models;

use yii\base\Model;
use common\models\User;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $username;
    public $email;
    public $password;
    public $passwordConfirm;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'trim'],
            ['username', 'required', 'message' => '身份证必填.'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This username has already been taken.'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'trim'],
            ['email', 'required', 'message' => '邮箱必填.'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.'],

            ['password', 'required', 'message' => '密码必填.'],
            ['password', 'string', 'min' => 6, 'message' => '不能少于6位.'],
            ['passwordConfirm', 'compare', 'compareAttribute' => 'password', 'message' => '两次密码不一致.'],
        ];
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }

        $user = new User();
        $user->username = $this->username;
        $user->email = $this->email;
        $user->setPassword($this->password);
        $user->generateAuthKey();

        return $user->save() ? $user : null;
    }

    /**
     * Sys_user AttributeLabels
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'username' => '身份证号码',
            'password' => '用户密码',
            'email' => '邮箱',
            'passwordConfirm' => '确认密码',
        ];
    }
}
