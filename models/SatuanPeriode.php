<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "satuan_periode".
 *
 * @property int $id
 * @property string $satuan_periode
 */
class SatuanPeriode extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'satuan_periode';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id'], 'integer'],
            [['satuan_periode'], 'string', 'max' => 100],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'satuan_periode' => 'Satuan Periode',
        ];
    }

    /**
     * {@inheritdoc}
     * @return SatuanPeriodeQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SatuanPeriodeQuery(get_called_class());
    }
}
