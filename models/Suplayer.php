<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "suplayer".
 *
 * @property int $id_suplayer
 * @property string $kd_suplayer
 * @property string $nama_spl
 * @property string $alamat
 * @property string $telp
 * @property string $sales
 * @property string $telp_sales
 * @property string $hapus
 */
class Suplayer extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'suplayer';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['hapus'], 'string'],
            [['kd_suplayer', 'telp'], 'string', 'max' => 20],
            [['nama_spl'], 'string', 'max' => 130],
            [['alamat'], 'string', 'max' => 50],
            [['sales'], 'string', 'max' => 120],
            [['telp_sales'], 'string', 'max' => 30],
            [['nama_spl'], 'required'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_suplayer' => 'Id Suplayer',
            'kd_suplayer' => 'Kode Suplayer',
            'nama_spl' => 'Nama Suplayer',
            'alamat' => 'Alamat',
            'telp' => 'Telp. Kantor',
            'sales' => 'Nama Sales',
            'telp_sales' => 'Telp. Sales',
            'hapus' => 'Hapus',
        ];
    }

    /**
     * {@inheritdoc}
     * @return SuplayerQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SuplayerQuery(get_called_class());
    }
}
