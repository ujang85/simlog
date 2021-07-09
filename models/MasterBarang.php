<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "master_barang".
 *
 * @property int $id_brg
 * @property string $kode_brg
 * @property string $nama_barang
 * @property string $merk_type
 * @property int $jns
 * @property string $satuan
 * @property int $kd_suplier
 * @property int $harga
 * @property int $stok_min
 */
class MasterBarang extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public $jenis_barang;
    public $nama;

    public $no_nota;
    public $tgl_masuk;
    public $jam_masuk;
    public $tgl_keluar;
    public $jam_keluar;
    public $qty_masuk;
    public $qty_keluar;
    public $harga;
    public $suplayer_id;
    public $suplayer;
    public $unit_bagian;
    public $pengebon;
    public static function tableName()
    {
        return 'master_barang';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_brg'], 'required'],
            [[ 'group_alat','qty_masuk','stok_min'], 'integer'],
            [['kode_brg', 'satuan'], 'string', 'max' => 20],
            [['nama_barang', 'merk_type'], 'string', 'max' => 100],
            [['pengebon','unit_bagian','harga','suplayer_id','tgl_keluar','jam_keluar','tgl_masuk','jam_masuk','qty_masuk','qty_keluar','nama','no_nota','jns','jenis_barang'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_brg' => 'Id Brg',
            'kode_brg' => 'Kode Brg',
            'nama_barang' => 'Nama Barang',
            'merk_type' => 'Merk Type',
            'jns' => 'Jns',
            'suplayer_id' => 'Nama Suplayer',
            'satuan' => 'Satuan',
            'stok_min' => 'Stok Minimal Gudang',
            'qty_masuk' => 'Jumlah Barang Masuk',
            'group_alat' => 'Kelompok Komponen',
            'pengebon' => 'Penerima',
        ];
    }
    
    public function getJenis()
    {
        return $this->hasOne(JenisBrg::className(), [ 'id'=> 'jns']);
      
    }
    public function getSatuanbarang()
    {
        return $this->hasOne(Satuan::className(), [ 'id'=> 'satuan']);
      
    }
    public function getGroupalat()
    {
        return $this->hasOne(GroupAlat::className(), [ 'id_group'=> 'group_alat']);
      
    }
    /**
     * {@inheritdoc}
     * @return MasterBarangQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MasterBarangQuery(get_called_class());
    }
}
