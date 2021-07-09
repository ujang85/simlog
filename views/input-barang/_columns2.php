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
        'attribute'=>'tgl_transaksi',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'no_nota',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'kode_brg',
        'value'=>'barang.kode_brg',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nama_barang',
        'value'=>'barang.nama_barang',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'merk_type',
        'value'=>'barang.merk_type',
    ],
    [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'jns',
          'header' => 'Jenis Barang',
         'value'=>'jenisbarang.jenis_barang',
     ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'trans_masuk',
        'header' => 'Transaksi Masuk',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nama',
        'header' => 'Nama Suplayer',
        'value'=>'suplayer.nama_spl',
    ],
   

];   
