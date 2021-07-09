<?php
use yii\helpers\Url;

return [
   [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '30px',
        'header' => 'No.',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nota_keluar',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'tgl_keluar',
    ],
     [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'kode_brg',
        'value'=>'databarang.kode_brg',
    ],
     [
         'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'jns',
          'header' => 'Jenis Barang',
         'value'=>'jenisbarang.jenis_barang',
     ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nama_barang',
        'value'=>'databarang.nama_barang',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'qty_keluar',
    ],
    [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'pengebon2',
     ],
    
     [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'nama_unit',
         'value'=>'namaunit.user',
     ],
    // 
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'kode_user2',
    // ],
   

];   