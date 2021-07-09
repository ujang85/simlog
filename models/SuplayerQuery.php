<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[Suplayer]].
 *
 * @see Suplayer
 */
class SuplayerQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Suplayer[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Suplayer|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
