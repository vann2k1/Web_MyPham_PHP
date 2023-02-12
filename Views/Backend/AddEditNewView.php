<!-- load file layout vao day -->
<?php
    $this->fileLayout = "Views/Backend/Layout1.php";
 ?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Add edit news</div>
        <div class="panel-body">
        <!-- them thuoc tinh enctype="multipart/form-data" de upload file -->
        <form method="post" enctype="multipart/form-data" action="<?php echo $formAction; ?>">
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Title</div>
                <div class="col-md-10">
                    <input type="text" value="<?php echo isset($record->title)?$record->title:''; ?>" name="title" class="form-control" required>
                </div>
            </div>
            <!-- end rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tài khoản viết bài</div>
                <div class="col-md-10">
                    <input type="text" value="<?php echo $_SESSION["email"]; ?>" name="email" class="form-control" required>
                </div>
            </div>
            <!-- rows -->

            <!-- end rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Mô tả</div>
                <div class="col-md-10">
                    <textarea name="Mota" id="Mota">
                        <?php echo isset($record->Mota)?$record->Mota:''; ?>
                    </textarea>
                    <script type="text/javascript">
                        CKEDITOR.replace("Mota");
                    </script>
                </div>
            </div>
            <!-- rows -->

            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Content</div>
                <div class="col-md-10">
                    <textarea name="content" id="content">
                        <?php echo isset($record->content)?$record->content:''; ?>
                    </textarea>
                    <script type="text/javascript">
                        CKEDITOR.replace("content");
                    </script>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
<input type="checkbox" <?php if(isset($record->del_flag)&&$record->del_flag==1): ?> checked <?php endif; ?> name="del_flag" id="del_flag"> <label for="del_flag">Del_flag</label>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Upload image</div>
                <div class="col-md-10">
                    <input type="file" name="img">
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <?php if(isset($record->image)&&$record->image!=""&&file_exists("Assets/upload/news/".$record->image)): ?>
                    <img src="Assets/upload/news/<?php echo $record->image; ?>" style="width: 100px;">
                    <?php endif; ?>
                </div>
            </div>
            <!-- end rows -->
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="submit" value="Process" class="btn btn-primary">
                </div>
            </div>
            <!-- end rows -->
        </form>
        </div>
    </div>
</div>
