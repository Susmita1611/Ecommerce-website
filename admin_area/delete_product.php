<?php

if(isset($_GET['delete_product'])){
    $delete_id = $_GET['delete_product'];
    // echo $delete_id;
    $delete_product = "DELETE FROM `products` WHERE product_id = '$delete_id'";
    $result_product=mysqli_query($conn,$delete_product);
    if($result_product){
        echo "<script>alert('Product deleted successfully');</script>";
        echo "<script>window.open('./insert_product.php','_self')</script>";
}
}
?>