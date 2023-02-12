<?php
//ket thua layout1.php de load vao day
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr class="panel-heading">
                    <th>Theo ngày </th>
                    <th>Doanh thu</th>
                </tr>
                <?php foreach ($ngay as $rows):?>
                <tr>
                    <td><?php
                        echo $rows->create_at; ?></td>
                    <td><?php
                        echo $rows->tong; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Theo tháng</th>
                    <th>Doanh thu</th>
                </tr>
                <?php foreach ($thang as $row):?>
                <tr>
                    <td>
                        tháng <?php
                        { echo $row->month;}?>
                        năm <?php
                        { echo $row->year;}?>
                    </td>
                    <td><?php
                        {echo $row->thang;} ?></td>
                </tr>
                <?php endforeach;?>
            </table>
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Theo năm</th>
                    <th>Doanh thu</th>
                </tr>
                <?php foreach ($nam as $row):?>
                    <tr>
                        <td>
                            năm <?php
                            { echo $row->year;}?>
                        </td>
                        <td><?php
                            {echo $row->nam;} ?></td>
                    </tr>
                <?php endforeach;?>
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
            </ul>
        </div>
    </div>
</div>
