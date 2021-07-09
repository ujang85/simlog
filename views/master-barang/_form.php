<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Suplayer;
use app\models\JenisBrg;
use app\models\Satuan;
use app\models\GroupAlat;
/* @var $this yii\web\View */
/* @var $model app\models\MasterBarang */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-barang-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kode_brg')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_barang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'merk_type')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'jns')->dropDownList(
        ArrayHelper::map(JenisBrg::find()->all(),'id','jenis_barang'))
    ?>
   <?=
    $form->field($model, 'group_alat')->dropDownList(
        ArrayHelper::map(GroupAlat::find()->all(),'id_group','nama_group'))
    ?>
    <?=
    $form->field($model, 'satuan')->dropDownList(
        ArrayHelper::map(Satuan::find()->all(),'id','nama_satuan'))
    ?>
   
  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
