<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tahun".
 *
 * @property int $id_tahun
 * @property int $tahun
 */
class Tahun extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tahun';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tahun'], 'required'],
            [['tahun'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_tahun' => 'Id Tahun',
            'tahun' => 'Tahun',
        ];
    }

    /**
     * {@inheritdoc}
     * @return TahunQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TahunQuery(get_called_class());
    }
}
