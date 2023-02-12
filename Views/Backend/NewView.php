<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?area=backend&controller=New&action=add" class="btn btn-primary">Add news</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List news</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Image</th>
                    <th>Title</th>
                    <th>Tài khoản viết bài</th>
                    <th style="width: 100px;">CreateDate</th>
                    <th style="width: 100px;">Del_Flag</th>
                    <th style="width:100px;"></th>
                </tr>
                <?php foreach ($data as $rows): ?>
                    <tr>
                        <td>
                            <?php if ($rows->image != "" && file_exists("Assets/upload/Tintuc/" . $rows->image)): ?>
                                <img src="Assets/upload/Tintuc/<?php echo $rows->image; ?>" style="width: 100px;">
                            <?php endif; ?>
                        </td>
                        <td><?php echo $rows->title; ?></td>
                        <td><?php echo $_SESSION["email"]; ?> </td>
                        <td style="text-align: center;">
                            <?php echo($rows->createdate); ?>
                        </td>
                        <td style="text-align: center;">
                            <?php if ($rows->del_flag == 1): ?>
                                <span class="glyphicon glyphicon-check"></span>
                            <?php endif; ?>
                        </td>
                        <td style="text-align:center;">
                            <a href="index.php?area=backend&controller=New&action=edit&news_id=<?php echo $rows->news_id; ?>">Edit</a>&nbsp;
                            <a href="index.php?area=backend&controller=New&action=delete&news_id=<?php echo $rows->news_id; ?>"
                               onclick="return window.confirm('Are you sure?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination {
                    padding: 0px;
                    margin: 0px;
                }
            </style>
            <ul class="pagination">
                <li class="page-item disabled">
                    <a href="#" class="page-link">Trang</a>
                </li>
                <?php for ($i = 1; $i <= $numPage; $i++): ?>
                    <li class="page-item">
                        <a href="index.php?area=backend&controller=New&p=<?php echo $i; ?>"
                           class="page-link"><?php echo $i; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>
