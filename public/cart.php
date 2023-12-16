<?php 
include("inc/top.php");
?>


<?php if (demhangtronggio() == 0) { ?>
    <h3 class="text-info"><strong>Giỏ hàng đang trống và không có gì liu liu !!!</strong></h3>
    <p><strong>Vui lòng đi chọn sản phẩm ngay ...</strong></p>
<?php } else { ?>
    <h3 class="text-info"><strong>Giỏ hàng của bạn: </strong></h3>

    <form action="index.php">
        <table class="table table-hover">
            <tr>
                <th><strong>Hình ảnh</strong></th><th><strong>Tên hàng</strong></th> <th><strong>Đơn giá</strong></th> <th><strong>Số lượng</strong></th><th><strong>Thành tiền</strong></th>
            </tr>
            
                
            
           
            <?php foreach ($giohang as $id => $mh) : ?>
                <tr>
                    <td><img width="50" src="../<?php echo $mh["hinhanh"]; ?>"></td>
                    <td><?php echo $mh["tenmathang"]; ?></td>
                    <td><?php echo number_format($mh["giaban"]); ?>đ</td>
                    <td><input type="number" name="mh[<?php echo $id; ?>]" value="<?php echo $mh["soluong"]; ?>"></td>
                    <td><?php echo number_format($mh["thanhtien"]); ?>đ</td>
                </tr>
            <?php endforeach; ?>
                <tr>
                    <td colspan="3"></td>
                    <td class="fw-bold">Tổng tiền</td>
                    <td class="text-danger fw-bold"><?php echo number_format(tinhtiengiohang()); ?>đ</td>
                </tr>
        </table>
        <div class="row">
            <div class="col">
                <a href="indẽ.php?action=xoagiohang"><strong><h3>Xóa tất cả</h3></strong></a>
                <strong><i>(Xóa một mặt hàng nhập số lượng = 0)</i></strong>
            </div>
            <div class="col text-end">
                <input type="hidden" name="action" value="capnhapgio">
                <input type="submit" class="btn btn-warning" value="Cập nhập">
                <a href="index.php?action=thanhtoan" class="btn btn-success">Thanh toán</a>
            </div>
        </div>
    </form>
<?php } 
include("inc/bottom.php");
?>