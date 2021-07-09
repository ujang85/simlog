<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[SatuanPeriode]].
 *
 * @see SatuanPeriode
 */
class SatuanPeriodeQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return SatuanPeriode[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return SatuanPeriode|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
