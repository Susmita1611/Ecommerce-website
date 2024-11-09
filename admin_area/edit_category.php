<?php
if(isset($_GET['edit_category'])){
    $edit_category = $_GET['edit_category'];
    // echo $edit_category;

    $get_categories="SELECT * from `categories` WHERE category_id=$edit_category";
    $result=mysqli_query($conn,$get_categories);
    $row=mysqli_fetch_assoc($result);
    $category_title=$row['category_title'];
    // echo $category_title;
}
if(isset($_POST['edit_cat'])){
    $cat_title=$_POST['category_title'];
    $update_query="UPDATE `categories` set category_title='$cat_title' where category_id=$edit_category";
}



?>

<div class="container mt-5">
    <h3 class="text-center">Edit Category</h3>
    <form action="" method="post" class="text-center">
        <div class="form-outline mb-4 w-50 m-auto">
            <label for="category_title" class="form_label">Category Title</label>
            <input type="text" name="category_title" id="category_title" class="form_control" required="required" value='<?php echo $category_title ?>'>
        </div>
        <input type="submit" value="update Category" class="btn btn-info px-3 mb-3" name="edit_cat">
    </form>
</div>