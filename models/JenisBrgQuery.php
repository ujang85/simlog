<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[JenisBrg]].
 *
 * @see JenisBrg
 */
class JenisBrgQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return JenisBrg[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return JenisBrg|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
