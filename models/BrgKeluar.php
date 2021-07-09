<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "brg_keluar".
 *
 * @property int $id_keluar
 * @property string $nota_keluar
 * @property int $id_barang_keluar
 * @property int $qty_keluar
 * @property string $tgl_keluar
 * @property int $unit
 * @property string $pengebon2
 * @property int $kode_user2
 * @property int $kode_trans
 */
class BrgKeluar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public $nama_barang;
    public $kode_brg;
    public $nama_unit;
    public $jenis_barang;
    public static function tableName()
    {
        return 'brg_keluar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_barang_keluar', 'qty_keluar', 'unit', 'kode_user2', 'kode_trans'], 'integer'],
            [['nama_unit','tgl_keluar','jam_keluar'], 'safe'],
            [['nota_keluar'], 'string', 'max' => 100],
            [['pengebon2'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_keluar' => 'Id Keluar',
            'nota_keluar' => 'Nota Keluar',
            'id_barang_keluar' => 'Id Barang Keluar',
            'qty_keluar' => 'Jumlah Keluar',
            'tgl_keluar' => 'Tgl Keluar',
            'unit' => 'Unit',
            'pengebon2' => 'Penerima',
            'kode_user2' => 'Kode User',
            'kode_trans' => 'Kode Trans',
        ];
    }
    public function getDatabarang()
    {
        return $this->hasOne(MasterBarang::className(), [ 'id_brg'=> 'id_barang_keluar']);
      
    }
    public function getJenisbarang()
    {
    return $this->hasOne(JenisBrg::className(),[ 'id'=>'jns'] )
        ->viaTable('master_barang',['id_brg' => 'id_barang_keluar']);
    }
    public function getNamaunit()
    {
        return $this->hasOne(Pemakai::className(), [ 'id'=> 'unit']);
      
    }
    /**
     * {@inheritdoc}
     * @return BrgKeluarQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new BrgKeluarQuery(get_called_class());
    }
}
