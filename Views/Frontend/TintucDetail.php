<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Frontend/Layout_trangtrong.php";
?>
<?php if(isset($record->news_id)): ?>
<div class="product-detail" itemscope itemtype="http://schema.org/Product">
    <meta itemprop="url" content="//dktstore-theme.bizwebvietnam.net/microsoft-lumia-950-xl-mau-den">
    <meta itemprop="image" content="Assets/upload/product/<?php echo $record->img; ?>">
    <meta itemprop="shop-currency" content="VND">
    <div class="top">
        <div class="row">
            <div class="col-xs-12 col-md-6 product-image">
                <div class="featured-image"> <img src="Assets/upload/Tintuc/<?php echo $record->image; ?>" class="img-responsive" id="large-image" itemprop="image" data-zoom-image="Assets/upload/Tintuc/<?php echo $record->image; ?>"

                                                  alt="<?php echo $record->title; ?>"
                    /> </div>
            </div>
            <div class="col-xs-12 col-md-6 info">
                

                <p style="font-size: 30px;color: #fe0f42;"> <?php echo $record->title; ?></p>
                
<!--                <form action="/cart/add" method="post" enctype="multipart/form-data" class="product-form">-->

<!--                    <div class="action-btn">-->
                       
<!--                    </div>-->
<!--                </form>-->
            </div>
        </div>
    </div>
    <div class="middle">
        <ul class="list-unstyled navtabs">
            <li><a href="#tab1" class="head-tabs head-tab1 active" data-src=".head-tab1">Chi tiết </a></li>
        </ul>
        <div class="tab-container">
            <!-- chi tiet -->
            <div id="tab1" class="content-tabs">
                <div class="rte" style="font-size: 20px;">
                    <?php echo $record->content; ?>
                </div>
            </div>
            <!-- chi tiet -->
        </div>
    </div>
</div>
<?php endif; ?>

