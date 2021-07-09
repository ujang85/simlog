<?php
use yii\helpers\Url;

return [
    
    [
        'class' => 'kartik\grid\SerialColumn',
        'header' => 'No',
        'width' => '30px',
    ],
       
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'kd_suplayer',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'nama_spl',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'alamat',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'telp',
    ],
     [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'sales',
    ],
     [
         'class'=>'\kartik\grid\DataColumn',
         'attribute'=>'telp_sales',
     ],
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'hapus',
    // ],
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
                          'data-confirm-title'=>'Yakin Hapus?',
                          'data-confirm-message'=>'Hapus Data item ini'], 
    ],

];   