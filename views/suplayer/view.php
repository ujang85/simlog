<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Suplayer */
?>
<div class="suplayer-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
        //    'id_suplayer',
            'kd_suplayer',
            'nama_spl',
            'alamat',
            'telp',
            'sales',
            'telp_sales',
        //    'hapus',
        ],
    ]) ?>

</div>
