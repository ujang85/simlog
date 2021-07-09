<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Suplayer;

/**
 * SuplayerSearch represents the model behind the search form about `app\models\Suplayer`.
 */
class SuplayerSearch extends Suplayer
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_suplayer'], 'integer'],
            [['kd_suplayer', 'nama_spl', 'alamat', 'telp', 'sales', 'telp_sales', 'hapus'], 'safe'],
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
        $query = Suplayer::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id_suplayer' => $this->id_suplayer,
        ]);

        $query->andFilterWhere(['like', 'kd_suplayer', $this->kd_suplayer])
            ->andFilterWhere(['like', 'nama_spl', $this->nama_spl])
            ->andFilterWhere(['like', 'alamat', $this->alamat])
            ->andFilterWhere(['like', 'telp', $this->telp])
            ->andFilterWhere(['like', 'sales', $this->sales])
            ->andFilterWhere(['like', 'telp_sales', $this->telp_sales])
            ->andFilterWhere(['like', 'hapus', $this->hapus]);

        return $dataProvider;
    }
}
