<?php
include '../view/content-header.php';
contentHeader('Estimate');
?>
<div class="content Main">
    <div class="container mt-2 Main">
        <form action="final_quotation.php" class="form1" id="form1" method="post">

            <div hidden>
                <?php if (isset($_GET['pot_id'])) { ?>
                    <input type="hidden" name="quot_type" value="<?= $_GET['type'] ?>">
                    <input type="hidden" name="price_list" value="<?= $_GET['list'] ?>">
                    <input type="hidden" name="pot_id" value="<?= $_GET['pot_id'] ?>">
                    <?php
                    $p = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `id` = '{$_SESSION['edit_id']}' "));
                    if ($p['pot_id'] != $_POST['pot_id']) {
                        echo "<input type = 'hidden' name = 'old_pot' value = '{$p['pot_id']}' >";
                    }
                } else { ?>

                    <input type="hidden" name="quot_type" value="<?= $Editable['quot_type'] ?>">
                    <input type="hidden" name="price_list" value="<?= $Editable['price_list'] ?>">
                    <input type="hidden" name="pot_id" value="<?= $Editable['pot_id'] ?>">
                <?php } ?>
                <input type="hidden" name="version" value=" <?php echo $data_query['version'] ?> ">
            </div>

            <div class="mytabs my-2" id="myTab">
                <input type="hidden" name="count_of_est" id="count_of_est" value= 1>

                <?php
                require '../view/content.php';
                mainContent(1, 1, $_GET['type']);
                ?>
            </div>
            <div class="light py-2 rounded d-flex justify-content-center my-4">
                <button class="Next-Btn" name="proceed" formtarget = "_blank">Proceed <i class="px-2 py-2  fa fa-angle-double-right"></i></button>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function() {
        get_default();
        remove_arrow();
        if($('#pot_id').val() === ''){
            location.reload();
        }
    })
</script>
