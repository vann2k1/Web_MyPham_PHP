<?php
$this->fileLayout = "Views/Frontend/Layout_trangtrong.php";
?>

<div class="special-collection">
    <div class="tabs-container">
        <div class="clearfix">
            <h2>Tin tức nổi bật</h2>
        </div>
    </div>
    <div class="tabs-content row">
        <div id="content-tabb1" class="content-tab content-tab-proindex" style="display:none;">
            <div class="clearfix">
                <?php
                  $data = $this->Tintuc();
                ?>
                                <!-- end box product -->
                <div class="row">
                  <?php foreach($data as $rows): ?>
                  	  <article style="margin-left: 30px;">
			            <div class="cat-post-desc" style="position: relative;">
			                <h3><a href="index.php?controller=TintucDetail&news_id=<?php echo $rows->news_id; ?>"><?php echo $rows->title; ?></a></h3>
			                <p><a href="index.php?controller=Tintuc&news_id=<?php echo $rows->news_id; ?>"><img class="img_category" src="Assets/upload/Tintuc/<?php echo $rows->image; ?>" style="width:200px;height: 100%;" alt=""></a></p>
			                <p style="margin-left: 230px;position: absolute;margin-top: -130px;font-size: 18px;"><?php echo $rows->Mota; ?></p>
			            </div>
			            <div class="clear"></div>
			            
                  	</article>
                  		
    				<?php endforeach; ?>

</div>

            </div>
        </div>
    </div>
</div>            