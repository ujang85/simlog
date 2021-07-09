<?php
use yii\helpers\Html;
use kartik\builder\Form;
use kartik\form\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Suplayer */
/* @var $form yii\widgets\ActiveForm */
?>
<?php

$form = ActiveForm::begin(['type'=>ActiveForm::TYPE_VERTICAL]);


    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
            'kd_suplayer'=>['type'=>Form::INPUT_TEXT,'label'=>'Kode Suplayer','options'=>['placeholder'=>'Kode Suplayer..']],
            'nama_spl'=>['type'=>Form::INPUT_TEXT,'label'=>'Nama Suplayer','options'=>['placeholder'=>'Nama Suplayer..']]
         ]
    ]);
    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
            'alamat'=>['type'=>Form::INPUT_TEXT,'label'=>'Alamat','options'=>['placeholder'=>'alamat..']],
            'telp'=>['type'=>Form::INPUT_TEXT,'label'=>'Telp Suplayer','options'=>['placeholder'=>'telp Suplayer..']]
         ]
    ]);

    echo Form::widget([
        'model'=>$model,
        'form'=>$form,
        'columns'=>2,
        'compactGrid'=>true,
        'attributes'=>[       // 2 column layout
            'sales'=>['type'=>Form::INPUT_TEXT,'label'=>'Nama sales','options'=>['placeholder'=>'Nama sales..']],
            'telp_sales'=>['type'=>Form::INPUT_TEXT,'label'=>'Telp sales','options'=>['placeholder'=>'telp sales..']]
         ]
    ]);
  ?>
  <?php ActiveForm::end(); ?>

    <?php if (!Yii::$app->request->isAjax){ ?>
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>
    <?php } ?>