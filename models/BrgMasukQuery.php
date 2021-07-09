<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[BrgMasuk]].
 *
 * @see BrgMasuk
 */
class BrgMasukQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return BrgMasuk[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return BrgMasuk|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
