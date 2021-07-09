<?php
use yii\helpers\Html;
use kartik\builder\Form;
use kartik\form\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Suplayer;
use app\models\JenisBrg;
use app\models\Satuan;
use yii\widgets\DetailView;
use kartik\date\DatePicker;
use kartik\widgets\TimePicker;
use kartik\number\NumberControl;
$dispOptions = ['class' => 'kv-saved'];
$saveOptions = [
    'type' => 'text', 
    'label'=>'<label>Saved Value: </label>', 
    'class' => 'kv-saved',
    'readonly' => true, 
    'tabindex' => 1000
];
$saveCont = ['class' => 'kv-saved-cont'];
?>

<div class="master-barang-form">

     <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'kode_brg',
            'nama_barang',
            'merk_type',
            'jenis.jenis_barang',
            'satuanbarang.nama_satuan',
          //  'stok_min',
        ],
    ]) ?>

<?php
    $form = ActiveForm::begin(['type'=>ActiveForm::TYPE_VERTICAL]);
    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
     
            'no_nota'=>['type'=>Form::INPUT_TEXT, 'options'=>['placeholder'=>'Nomor Nota/Faktur..']],
            'suplayer_id'=>[
            'type'=>Form::INPUT_WIDGET, 
            'widgetClass'=>'\kartik\select2\Select2', 
            'options'=>[
                'pluginOptions' => [
                                'allowClear' => true,
                                'closeOnSelect' => true,
                                'placeholder' => 'pilih Suplayer...', 
                                'class' => 'form-control',
                                 'required' => true   
                                    ],
               
                'data'=> \yii\helpers\ArrayHelper::map(Suplayer::find()->all(),'id_suplayer','nama_spl'),

                ], 
            'hint'=>'pilih Suplayer',
                ],
        ]
    ]);
    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
     
            'tgl_masuk'=>[
                'type'=>Form::INPUT_WIDGET,
                'widgetClass'=>\kartik\widgets\DatePicker::classname(),
                'hint'=>'Tgl Masuk Barang (tahun/bulan/tanggal)',
                'options' => ['pluginOptions' => ['format' => 'yyyy-mm-dd', 'autoclose'=>true, 'todayHighlight' => true]]
                
            ], 
            'jam_masuk'=>[
                'type'=>Form::INPUT_WIDGET,
                'widgetClass'=>\kartik\widgets\TimePicker::classname(),
               'hint'=>'jam Masuk Barang',
                'options' => ['pluginOptions' => ['format' => 'php:His', 'showSeconds' => true,'showMeridian' => false,'minuteStep' => 1,'secondStep' => 5]]
          ],
        ]
    ]);
    
    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
     
            'harga'=>[
                'type'=>Form::INPUT_WIDGET,
                'hint'=>'harga perolehan',
                'widgetClass'=>kartik\number\NumberControl::classname(),
                 'options' => ['pluginOptions' => ['options' => $saveOptions,'displayOptions' => $dispOptions]]
                  ],
                  'qty_masuk'=>[
                    'type'=>Form::INPUT_WIDGET,
                    'hint'=>'Jumlah',
                    'widgetClass'=>kartik\number\NumberControl::classname(),
                    // 'options'=>['placeholder'=>'periode PM..','hint'=>'periode perawatan',]],
                     'options' => ['pluginOptions' => ['options' => $saveOptions,'displayOptions' => $dispOptions]]
                      ],
        ]
    ]);?>
    <?php ActiveForm::end(); ?>
    
</div>
