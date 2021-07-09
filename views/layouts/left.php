<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>
                    <?php 
                    if (Yii::$app->user->isGuest) {
                      echo "tamu";
                    } 
                    else {
                    echo Yii::$app->user->identity->username;
                }
                    ?>
                </p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

       

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    ['label' => 'Logout', 'url' => ['site/logout'],'template' => '<a href="{url}" data-method="post"><i class="fa fa-sign-out"></i>{label}</a>'],
                    

                    [
                        'label' => 'Administrator',
                        'icon' => 'dashboard',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Data User', 'icon' => 'user', 'url' =>'#'],
                             ['label' => 'Setting Hak Akses User', 'icon' => 'key', 'url' => ['/mimin/user/index']],
                             ['label' => 'Ubah Password User', 'icon' => 'key', 'url' => ['/mimin/user/ubahpassword']],
                             ['label' => 'Buat Akun User', 'icon' => 'certificate', 'url' => ['/site/signup']],
                        ],],
                    [
                        'label' => 'Master Data Logistik',
                        'icon' => 'cube',
                        'url' => '#',
                        'items' => [
                           
                                    ['label' => 'Master Barang', 'icon' => 'send', 'url' => ['/master-barang/index']],
                                    ['label' => 'Data Jenis', 'icon' => 'send', 'url' => ['/jenis-brg/index']],
                                    ['label' => 'Data Suplayer', 'icon' => 'send', 'url' => ['/suplayer/index']],
                                    ['label' => 'Data Unit/Instalasi', 'icon' => 'send', 'url' => ['/pemakai/index']],
                                    ['label' => 'Data Satuan', 'icon' => 'send', 'url' => ['/satuan/index']],
                        ],],
                        [
                            'label' => 'In-Out Logistik',
                            'icon' => 'cube',
                            'url' => '#',
                            'items' => [
                               
                                ['label' => 'Barang Masuk', 'icon' => 'pencil', 'url' => ['/input-barang/index']],
                                ['label' =>'Barang Keluar', 'icon' => 'file-code-o', 'url' => ['/output-barang/index']],
                            ],],
                            [
                                'label' => 'Laporan',
                                'icon' => 'newspaper-o',
                                'url' => '#',
                                'items' => [
                                    ['label' => 'Lap.Barang Masuk', 'icon' => 'plus-square', 'url' => ['/brg-masuk/index']],
                                    ['label' => 'Lap.Barang Keluar', 'icon' => 'plus-square', 'url' => ['/brg-keluar/index']],

                                    ['label' => 'Lap.Transaksi Detail', 'icon' => 'plus-square', 'url' => ['/transaksi/index']],
                                    ['label' => 'Lap.Transaksi Ringkas', 'icon' => 'plus-square', 'url' => ['/transaksi/index2']],
                                    ['label' =>'Laporan Stok', 'icon' => 'plus-square', 'url' => ['/transaksi/indexstok']],
                                ],],

                            ],
                        
            ]
        ) 
        ?>

    </section>

</aside>
