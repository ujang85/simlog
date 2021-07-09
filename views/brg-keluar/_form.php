<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\BrgKeluar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="brg-keluar-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nota_keluar')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_barang_keluar')->textInput() ?>

    <?= $form->field($model, 'qty_keluar')->textInput() ?>

    <?= $form->field($model, 'tgl_keluar')->textInput() ?>

    <?= $form->field($model, 'unit')->textInput() ?>

    <?= $form->field($model, 'pengebon2')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kode_user2')->textInput() ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
