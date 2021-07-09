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
        'attribute'=>'no_nota',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'tgl_masuk',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'kode_brg',
        'value'=>'databarang.kode_brg',
    ],
    [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'jns',
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
        'attribute'=>'qty_masuk',
        'label'=>'Jumlah Masuk',
    ],
    [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'harga',
     ],
     [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'kd_suplayer',
         'header'=>'Nama suplayer',
         'value'=>'suplayer.nama_spl',
     ],
   
    

];   
