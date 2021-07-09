<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Pemakai */
?>
<div class="pemakai-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
        //    'id',
            'user',
        //    'hapus',
        ],
    ]) ?>

</div>
