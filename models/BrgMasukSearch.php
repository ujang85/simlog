<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BrgMasuk;

/**
 * BrgMasukSearch represents the model behind the search form about `app\models\BrgMasuk`.
 */
class BrgMasukSearch extends BrgMasuk
{
    /**
     * @inheritdoc
     */
    public $nama_barang;
    public $kode_brg;
    public function rules()
    {
        return [
            [['id_masuk', 'id_barang_masuk', 'qty_masuk', 'kd_suplayer', 'harga'], 'integer'],
            [['kode_brg','jam_masuk','nama_barang','no_nota', 'tgl_masuk'], 'safe'],
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
        $query = BrgMasuk::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }
        $query ->joinWith('databarang');
        $query->andFilterWhere([
            'id_masuk' => $this->id_masuk,
            'id_barang_masuk' => $this->id_barang_masuk,
            'qty_masuk' => $this->qty_masuk,
            'tgl_masuk' => $this->tgl_masuk,
            'jam_masuk'=> $this->jam_masuk,
            'kd_suplayer' => $this->kd_suplayer,
            'harga' => $this->harga,
        ]);

        $query->andFilterWhere(['like', 'no_nota', $this->no_nota])
              ->andFilterWhere(['like', 'kode_brg', $this->kode_brg])
              ->andFilterWhere(['like', 'nama_barang', $this->nama_barang]);

        return $dataProvider;
    }
}
