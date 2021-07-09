<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Transaksi */
?>
<div class="transaksi-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'tgl_transaksi',
            'id_barang',
            'trans_masuk',
            'trans_keluar',
        ],
    ]) ?>

</div>
