<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\MasterBarang */
?>
<div class="master-barang-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'kode_brg',
            'nama_barang',
            'merk_type',
            'jenis.jenis_barang',
            'satuan',
                  ],
    ]) ?>

</div>
