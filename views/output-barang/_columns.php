<?php
use yii\helpers\Url;

return [
     [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '30px',
        'header' => 'No.',
    ],
    ['class' => 'kartik\grid\ActionColumn',
      'header' => 'OUTPUT BARANG',
      'template'=>'{update}',
      'updateOptions'=>['role'=>'modal-remote','title'=>'INPUT BARANG'],

    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'kode_brg',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nama_barang',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'merk_type',
    ],
    [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'jenis_barang',
          'header' => 'Jenis Barang',
         'value'=>'jenis.jenis_barang',
     ],
     
  

];   