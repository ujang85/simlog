<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bulan".
 *
 * @property int $id_bulan
 * @property string $bulan
 */
class Bulan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bulan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['bulan'], 'required'],
            [['bulan'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_bulan' => 'Id Bulan',
            'bulan' => 'Bulan',
        ];
    }

    /**
     * {@inheritdoc}
     * @return BulanQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new BulanQuery(get_called_class());
    }
}
