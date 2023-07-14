<?php
// print_r($Editable);
function CreateNew()
{
    global $con, $Editable;

    if(isset($_GET['create_new'])){
        require '../view/content-header.php';
        contentHeader('Create Estimate');
    }
?>

    <div class="except container mt-2">
        <div class="Errors except"></div>
        <section id="create_Main" class="light rounded">
            <form class="row px-3 p-3 g-2">
                <div class="except px-2 col-md-6">
                    <label for="inputEmail4" class="form-label">POT ID : </label>
                    <input type="number" class="form-control" id="pot_id" value="<?= $Editable['pot_id'] ?>" min = "1000" max = '9999' name="pot_id" placeholder="Enter POT ID Here" style="border: none; border-bottom: 1px solid ; border-radius:0;">
                </div>
                <div class="except px-2 col-md-6">
                    <label for="pice_list" class="form-label">Price List</label>
                    <select class="form-control" name="price_list" id="pice_list" style="border: none; border-bottom: 1px solid ; border-radius:0;">
                        <?php
                        $list = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `pricing_list_master` WHERE `pricing_list_id` ='{$Editable['price_list']}' "));
                        echo "<option value='{$list["pricing_list_id"]}' class='editable' hidden>{$list["pricing_list_name"]}</option>'";

                        $p_query = mysqli_query($con, "SELECT * FROM `pricing_list_master`");
                        while ($pricing_list = mysqli_fetch_array($p_query)) {
                        ?>
                            <option value="<?= $pricing_list["pricing_list_id"] ?>"><?= $pricing_list["pricing_list_name"] ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="except px-2 col-md-6 py-4">
                    <label for="type_est" class="form-label">Quotation Type</label>
                    <select class="form-control" name="quot_type" id="type_est" style="border: none; border-bottom: 1px solid ; border-radius:0;">
                        <?= "<option value= '{$Editable['quot_type']}' class='editable' hidden>{$Editable['quot_type']} </option>"; ?>
                        <option value="DC">DC</option>
                        <option value="DR">DR</option>
                    </select>
                </div>
                <div class="except px-2 col-12 d-flex justify-content-center">
                    <a href="#" role='button' id="Next-Btn" class="Next-Btn" name="Next-Btn">Next</a>
                </div>
            </form>
        </section>
    </div>

    <script>
        $("#Next-Btn").on("click", function() {
            if ($('#type_est').val() == "phase" || $('#type_est').val() == "phase_dr") {
                $(this).attr("href", '?<?= (isset($_GET['edit_id'])) ? "edit_id={$_GET['edit_id']}&" : '' ?>next&pot_id=' + $('#pot_id').val() + '&list=' + $('#pice_list').val() + '&type=' + $('#type_est').val() + "&phase=" + $("#phases").val())
            } else {
                $(this).attr("href", '?<?= (isset($_GET['edit_id'])) ? "edit_id={$_GET['edit_id']}&" : '' ?>next&pot_id=' + $('#pot_id').val() + '&list=' + $('#pice_list').val() + '&type=' + $('#type_est').val());
            }
        })

        <?php 
        $err = '<div class="except alert alert-danger alert-dismissible fade show" role="alert"><strong>Error !</strong> Please Enter valid Fields.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span class = "except" aria-hidden="true">&times;</span></button></div>';
        echo($_GET['create_new'] == 'alert')?"$('.Errors').html('{$err}')":''?>
    </script>

<?php

}
?>