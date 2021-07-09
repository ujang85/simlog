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
     [
         'class'=>'\kartik\grid\DataColumn',
       //  'attribute'=>'jenis_barang',
          'header' => 'Kelompok Komponen',
         'value'=>'groupalat.nama_group',
     ],
    
    [
        'class' => 'kartik\grid\ActionColumn',
        'dropdown' => false,
        'vAlign'=>'middle',
        'urlCreator' => function($action, $model, $key, $index) { 
                return Url::to([$action,'id'=>$key]);
        },
        'viewOptions'=>['role'=>'modal-remote','title'=>'View','data-toggle'=>'tooltip'],
        'updateOptions'=>['role'=>'modal-remote','title'=>'Update', 'data-toggle'=>'tooltip'],
        'deleteOptions'=>['role'=>'modal-remote','title'=>'Delete', 
                          'data-confirm'=>false, 'data-method'=>false,// for overide yii data api
                          'data-request-method'=>'post',
                          'data-toggle'=>'tooltip',
                          'data-confirm-title'=>'Are you sure?',
                          'data-confirm-message'=>'Are you sure want to delete this item'], 
    ],

];   