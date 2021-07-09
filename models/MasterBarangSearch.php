<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\MasterBarang;

/**
 * MasterBarangSearch represents the model behind the search form about `app\models\MasterBarang`.
 */
class MasterBarangSearch extends MasterBarang
{
    /**
     * @inheritdoc
     */
    public $jenis_barang;
    public $nama;
    public $harga;
    public $suplayer_id;
    public function rules()
    {
        return [
            [['id_brg','group_alat','stok_min'], 'integer'],
            [['suplayer_id','harga','nama','jns','jenis_barang','kode_brg', 'nama_barang', 'merk_type', 'satuan'], 'safe'],
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
        $query = MasterBarang::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }
        $query ->joinWith('jenis');
       
        $query->andFilterWhere([
            'id_brg' => $this->id_brg,
          
            'harga' => $this->harga,
            'stok_min' => $this->stok_min,
        ]);

        $query->andFilterWhere(['like', 'kode_brg', $this->kode_brg])
            ->andFilterWhere(['like', 'nama_barang', $this->nama_barang])
            ->andFilterWhere(['like', 'nama', $this->nama])
            ->andFilterWhere(['like', 'jenis_barang', $this->jenis_barang])
            ->andFilterWhere(['like', 'merk_type', $this->merk_type])
            ->andFilterWhere(['like', 'satuan', $this->satuan]);

        return $dataProvider;
    }
}
