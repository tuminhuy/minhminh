<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">ID Danh Mục</th>
            <th scope="col">Tên Danh Mục</th>
            <th scope="col">Mô Tả</th>
            <th scope="col">Quản lý</th>
        </tr>
    </thead>
    <tbody>
        <?php $i=0;
        while ($row_category_product=mysqli_fetch_array($query_category_product)) {
            $i++;
            ?>
            <tr>
                <th scope="row"><?php echo $i?></th>
                <td><?php echo $row_category_product['ID_DanhMuc']?></td>
                <td><?php echo $row_category_product['TenDanhMuc']?></td>
                <td><?php echo $row_category_product['Mota']?></td>
                <td>
                    <a href="views/edit_order.php?id=<?php echo $row_category_product['ID_DanhMuc']?>" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                    <a href="views/deleteCategory.php?id=<?php echo $row_category_product['ID_DanhMuc']?>" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                </td>
            </tr>
        <?php }?>     
    </tbody>
</table>