<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "group_alat".
 *
 * @property int $id_group
 * @property string $kode_group
 * @property string $nama_group
 */
class GroupAlat extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'group_alat';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_group'], 'string', 'max' => 20],
            [['nama_group'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_group' => 'Id Group',
            'kode_group' => 'Kode Group',
            'nama_group' => 'Nama Group',
        ];
    }

    /**
     * {@inheritdoc}
     * @return GroupAlatQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new GroupAlatQuery(get_called_class());
    }
}
