<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Satuan */
?>
<div class="satuan-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nama_satuan',
        ],
    ]) ?>

</div>
