<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BrgKeluar */
?>
<div class="brg-keluar-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_keluar',
            'nota_keluar',
            'id_barang_keluar',
            'qty_keluar',
            'tgl_keluar',
            'unit',
            'pengebon2',
            'kode_user2',
        ],
    ]) ?>

</div>
