<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pm;

/**
 * PmSearch represents the model behind the search form about `app\models\Pm`.
 */
class PmSearch extends Pm
{
    /**
     * @inheritdoc
     */
    public $nama_alat;
    public $user;
    public $merk_type;
    public $no_seri;
    public $bulan;
    public $tahun;
    public function rules()
    {
        return [
            [['id_alat','id_pm','id_pengguna', 'kondisi_alat', 'masa_garansi_pm', 'periode_garansi', 'konversi_garansi', 'hapus'], 'integer'],
            [['bulan','tahun','nomor_pm','user','no_seri','merk_type','nama_alat','id_pengguna', 'uraian_pm', 'id_inven', 'terjadwal_pm', 'tgl_pm', 'tgl_pm_berikut', 'teknisi', 'garansi_pm', 'kode_pm'], 'safe'],
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
        $query = Pm::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }
        $query ->joinWith('data_alat');
        $query->andFilterWhere([
            'id_pm' => $this->id_pm,
            'terjadwal_pm' => $this->terjadwal_pm,
            'MONTH(tgl_pm)' =>$this->bulan,
            'year(tgl_pm)' =>$this->tahun,
            'tgl_pm_berikut' => $this->tgl_pm_berikut,
            'kondisi_alat' => $this->kondisi_alat,
            'garansi_pm' => $this->garansi_pm,
            'masa_garansi_pm' => $this->masa_garansi_pm,
            'periode_garansi' => $this->periode_garansi,
            'konversi_garansi' => $this->konversi_garansi,
            'hapus' => $this->hapus,
        //    'teknisi' => $this->teknisi,
        ]);

        $query->andFilterWhere(['like', 'nomor_pm', $this->nomor_pm])
            ->andFilterWhere(['like', 'uraian_pm', $this->uraian_pm])
            ->andFilterWhere(['like', 'id_inven', $this->id_inven])
            ->andFilterWhere(['like', 'nama_alat', $this->nama_alat])
            ->andFilterWhere(['like', 'merk_type', $this->merk_type])
            ->andFilterWhere(['like', 'no_seri', $this->no_seri])
            ->andFilterWhere(['like', 'user', $this->user])
            ->andFilterWhere(['like','teknisi',  $this->teknisi])
           // ->andFilterWhere(['MONTH(tgl_pm)', 2])
            ->andFilterWhere(['like', 'kode_pm', $this->kode_pm]);

        return $dataProvider;
    }
}
