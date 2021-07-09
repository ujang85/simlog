<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Transaksi;

/**
 * TransaksiSearch represents the model behind the search form about `app\models\Transaksi`.
 */
class TransaksiSearch extends Transaksi
{
    /**
     * @inheritdoc
     */
    public $harga_beli;
    public $no_nota;
    public $jenis_barang;
    public $jns;
    public $nama_barang;
    public $nama;
    public $suplier;
    public $merk_type;
    public $kode_brg;
    public $nama_spl;
    public function rules()
    {
        return [
            [['harga_beli','id', 'id_barang', 'trans_masuk', 'trans_keluar'], 'integer'],
            [['nama_spl','no_nota','harga_beli','tgl_transaksi','nama_barang','nama','jns','jenis_barang', 'merk_type','kode_brg','suplier'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Transaksi::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }
        $query ->joinWith('barang');
        $query ->joinWith('suplayer');
        $query ->joinWith('unit');
        $query->andFilterWhere([
            'id' => $this->id,
            'tgl_transaksi' => $this->tgl_transaksi,
            'id_barang' => $this->id_barang,
            'trans_masuk' => $this->trans_masuk,
            'trans_keluar' => $this->trans_keluar,
        ]);
        $query->andFilterWhere(['like', 'kode_brg', $this->kode_brg])
            ->andFilterWhere(['like', 'nama_barang', $this->nama_barang])
            ->andFilterWhere(['like', 'jns', $this->jns])
            ->andFilterWhere(['like', 'nama_spl', $this->nama_spl])
            ->andFilterWhere(['like', 'merk_type', $this->merk_type]);
          //  ->andFilterWhere(['like', 'jenis_barang', $this->jenis_barang]);
        return $dataProvider;
    }
}
