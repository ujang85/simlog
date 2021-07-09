<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "brg_masuk".
 *
 * @property int $id_masuk
 * @property string $no_nota
 * @property int $id_barang_masuk
 * @property int $qty_masuk
 * @property string $tgl_masuk
 * @property int $kd_suplayer
 * @property int $harga
 * @property int $kode_user
 * @property int $id_trans
 */
class BrgMasuk extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public $nama_barang;
    public $kode_brg;
    public static function tableName()
    {
        return 'brg_masuk';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_barang_masuk', 'qty_masuk', 'kd_suplayer', 'harga', 'kode_user', 'id_trans'], 'integer'],
            [['tgl_masuk','jam_masuk'], 'safe'],
            [['no_nota'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_masuk' => 'Id Masuk',
            'no_nota' => 'No Nota',
            'id_barang_masuk' => 'ID Barang Masuk',
            'qty_masuk' => 'Qty Masuk',
            'tgl_masuk' => 'Tgl Masuk',
            'jam_masuk' => 'Jam Masuk',
            'kd_suplayer' => 'Kode Suplayer',
            'harga' => 'Harga',
            'kode_user' => 'Kode User',
            'id_trans' => 'Id Trans',
        ];
    }
    public function getDatabarang()
    {
        return $this->hasOne(MasterBarang::className(), [ 'id_brg'=> 'id_barang_masuk']);
      
    }
    public function getJenisbarang()
    {
    return $this->hasOne(JenisBrg::className(),[ 'id'=>'jns'] )
        ->viaTable('master_barang',['id_brg' => 'id_barang_masuk']);
    }
    public function getSuplayer()
    {
        return $this->hasOne(Suplayer::className(), [ 'id_suplayer'=> 'kd_suplayer']);
      
    }
    /**
     * {@inheritdoc}
     * @return BrgMasukQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new BrgMasukQuery(get_called_class());
    }
}
