<?php
namespace SYS_ADMIN\components;

class ArrayHelper
{
    /**
     * 无限级创建目录
     * @param $dir
     * @return bool
     */
    public static function mkdirs($dir)
    {
        if (!is_dir($dir)) {
            if (!self::mkdirs(dirname($dir))) {
                return false;
            }
            if (!mkdir($dir, 0777)) {
                return false;
            }
        }
        return true;
    }
}