<?php
$this->fileLayout = "Views/Frontend/Layout_trangtrong.php";
?>
<div class="online_support block">
                    <div class="new_title">
                        <h2 style="font-size: 35px;">Hỗ trợ trực tuyến</h2>
                    </div>
                    <div class="block-content">
                        <?php
                            $data = $this->Lienhe();
                        ?>
                        <?php foreach($data as $rows): ?>
                        <div class="sp_1" style="font-size: 30px;">

                            <p style="font-size: 30px;"> </p>
                            <p>Chủ cửa hàng : <?php echo $rows->hoten; ?></p>
                            <p>Số điện thoại : <?php echo $rows->didong; ?></p>
                            <p>Email : <?php echo $rows->email; ?></p>
                        </div>
                        <?php endforeach; ?>
                        
                    </div>
</div>