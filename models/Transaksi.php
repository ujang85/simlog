<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "transaksi".
 *
 * @property int $id
 * @property string $tgl_transaksi
 * @property int $id_barang
 * @property int $trans_masuk
 * @property int $trans_keluar
 * @property int $harga_beli
 * @property string $no_nota
 * @property int $suplayer_id
 * @property string $pengebon
 * @property int $unit_bagian
 * @property int $id_user
 */
class Transaksi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public $jenis_barang;
    public $jns;
    public $nama_barang;
    public $suplier;
    public $merk_type;
    public $kode_brg;
    public $jml_masuk;
    public $jml_keluar;
    public $stok_akhir;
    public static function tableName()
    {
        return 'transaksi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tgl_transaksi'], 'safe'],
            [['id_barang', 'trans_masuk', 'trans_keluar', 'harga_beli', 'suplayer_id', 'unit_bagian', 'id_user'], 'integer'],
            [['no_nota'], 'string', 'max' => 20],
            [['pengebon'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tgl_transaksi' => 'Tgl Transaksi',
            'id_barang' => 'Id Barang',
            'trans_masuk' => 'Trans Masuk',
            'trans_keluar' => 'Trans Keluar',
            'harga_beli' => 'Harga Beli',
            'no_nota' => 'No Nota',
            'suplayer_id' => 'Nama Suplayer',
            'pengebon' => 'Pengebon',
            'unit_bagian' => 'Unit Bagian',
            'id_user' => 'Id User',
        ];
    }
    public function getBarang()
    {
        return $this->hasOne(MasterBarang::className(), [ 'id_brg'=> 'id_barang']);
      
    }

    public function getJenisbarang()
    {
    return $this->hasOne(JenisBrg::className(),[ 'id'=>'jns'] )
        ->viaTable('master_barang',['id_brg' => 'id_barang']);
    }
    public function getSuplayer()
    {
        return $this->hasOne(Suplayer::className(), ['id_suplayer'=> 'suplayer_id']);
      
    }
  /*  public function getUnit()
    {
        return $this->hasOne(Unit::className(), [ 'id_unit'=> 'unit_bagian']);
      
    } */
    public function getUnit()
    {
        return $this->hasOne(Pemakai::className(), [ 'id'=> 'unit_bagian']);
      
    }
    
    /**
     * {@inheritdoc}
     * @return TransaksiQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TransaksiQuery(get_called_class());
    }
}
