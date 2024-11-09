<h3 class="text-center text-success"style="position: absolute;">All Brands</h3>
<table class="table table-bordered mt-5">
    <thead class='bg-info'>
        <tr class="text-center">
            <th>SlNO</th>
            <th>Brand Title</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody class="bg-secondary text-light">
        <?php
            $select_cat="SELECT * from `brands`";
            $result=mysqli_query($conn,$select_cat);
            $number=0;
            while($row=mysqli_fetch_assoc($result)){
                $brand_id=$row['brand_id'];
                $brand_title=$row['brand_title'];
                $number++;

        ?>
        <tr class="text-center">
            <td><?php echo $number; ?></td>
            <td><?php echo $brand_title; ?></td>
            <td> <a href="" class='text-light'><i class='fa-solid fa-pen-to-square'></i></a></td>
            <td><a href="" class='text-light'><i class='fa-solid fa-trash'></i></td>
        </tr>
        <?php
            }
        ?>
    </tbody>
</table>