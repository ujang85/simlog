<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "satuan".
 *
 * @property int $id
 * @property string $nama_satuan
 */
class Satuan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'satuan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_satuan'], 'string', 'max' => 90],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_satuan' => 'Nama Satuan',
        ];
    }

    /**
     * {@inheritdoc}
     * @return SatuanQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SatuanQuery(get_called_class());
    }
}
