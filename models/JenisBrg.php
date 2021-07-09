<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "jenis_brg".
 *
 * @property int $id
 * @property string $jenis_barang
 * @property int $kode_jenis
 */
class JenisBrg extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'jenis_brg';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_jenis'], 'integer'],
            [['jenis_barang'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'jenis_barang' => 'Jenis Barang',
            'kode_jenis' => 'Kode Jenis',
        ];
    }

    /**
     * {@inheritdoc}
     * @return JenisBrgQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new JenisBrgQuery(get_called_class());
    }
}
