<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BrgKeluar;

/**
 * BrgKeluarSearch represents the model behind the search form about `app\models\BrgKeluar`.
 */
class BrgKeluarSearch extends BrgKeluar
{
    /**
     * @inheritdoc
     */
    public $nama_barang;
    public $kode_brg;
    public $nama_unit;
    public $jenis_barang;
    public function rules()
    {
        return [
            [['id_keluar', 'id_barang_keluar', 'qty_keluar', 'unit', 'kode_user2'], 'integer'],
            [['jenis_barang','kode_brg','nama_barang','nama_unit','nota_keluar', 'tgl_keluar', 'pengebon2'], 'safe'],
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
        $query = BrgKeluar::find();

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
        $query ->joinWith('namaunit');
     //   $query ->joinWith('jenisbarang');
        $query->andFilterWhere([
            'id_keluar' => $this->id_keluar,
            'id_barang_keluar' => $this->id_barang_keluar,
            'qty_keluar' => $this->qty_keluar,
            'tgl_keluar' => $this->tgl_keluar,
            'unit' => $this->unit,
            'kode_user2' => $this->kode_user2,
        ]);

        $query->andFilterWhere(['like', 'nota_keluar', $this->nota_keluar])
            ->andFilterWhere(['like', 'nama_unit', $this->nama_unit])
            ->andFilterWhere(['like', 'jenis_barang', $this->jenis_barang])
            ->andFilterWhere(['like', 'nama_barang', $this->nama_barang])
            ->andFilterWhere(['like', 'pengebon2', $this->pengebon2]);

        return $dataProvider;
    }
}
