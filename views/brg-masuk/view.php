<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BrgMasuk */
?>
<div class="brg-masuk-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_masuk',
            'no_nota',
            'id_barang_masuk',
            'qty_masuk',
            'tgl_masuk',
            'kd_suplayer',
            'harga',
        ],
    ]) ?>

</div>
