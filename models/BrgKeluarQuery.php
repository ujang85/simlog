<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[BrgKeluar]].
 *
 * @see BrgKeluar
 */
class BrgKeluarQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return BrgKeluar[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return BrgKeluar|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
