<?php 
/*session_start();*/
require_once '../public/index.php';
require_once '../model/giohang.php';
$ten = $phuong = $dc = $sodt = $money = $sl = "";
if(isset($_POST['ten'])){
	$ten = $_POST['ten'];
}
if(isset($_POST['phuong'])){
	$phuong = $_POST['phuong'];
}
if(isset($_POST['dc'])){
	$dc = $_POST['dc'];
}
if(isset($_POST['sodt'])){
	$sodt = $_POST['sodt'];
}
if(isset($_POST['sl'])){
	$sl = $_POST['sl'];
}

if($ten == "" || $phuong == "" || $dc == "" ||$sodt == ""){
	echo "Không được để trống bất kỳ ô nào!";
	require_once 'layout/second_footer.php';
	return 0;
}

date_default_timezone_set('Asia/Ho_Chi_Minh');
$now = date("Y-m-d h:i:s");
$conn = connect();
mysqli_set_charset($conn, 'utf8');
/*$sql = "SELECT * FROM sanpham sp WHERE ";
$result = mysqli_query($conn, $sql);*/
for($i = 0; $i < count($sl); $i++){
	if($sl[$i] < 0){
		echo "<h3 style='color: red; padding: 30px;'>Số lượng tối thiểu phải bằng 0</h3>";
		require_once 'layout/second_footer.php';
		return 0;
	}
	$x = str_replace(' ','',$_SESSION['cost'][$i]);
	$money += $sl[$i]*$x;
	
}
if($money == 0){
	echo "<h3 style='color: red; padding: 30px;'>Không có sản phẩm nào được đặt!</h3>";
	require_once 'layout/second_footer.php';
	return 0;
}
?>