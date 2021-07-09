<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\JenisBrg */
?>
<div class="jenis-brg-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'jenis_barang',
        ],
    ]) ?>

</div>
