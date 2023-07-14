<?php
require "../model/database.php";
$reg_name = $_POST['reg_name'];
$ser_name = $_POST['ser_name'];
$name = $_POST['name'];
$id = $_POST['id'];
if (!isset($_POST['action'])) {
    if ($ser_name != "Flexible Compute") {

        if ($ser_name == "All") {
            $pack_query = " Select pack From tbl_pack Where region ='{$reg_name}' ";
        } else {
            $pack_query = " Select pack From tbl_pack Where region ='{$reg_name}' And pack_series = '{$ser_name}' ";
        }
        $res2 = mysqli_query($con, $pack_query);
?>
        <select name="instance[<?= $name ?>][]" id="instance_<?= $id ?>" required class="form-control" onchange="instanceVals()">
            <option value="" hidden>Select Instance</option>
            <option class="editable" value="<?= $Editable['instance'][$name][0] ?>" hidden><?= $Editable['instance'][$name][0] ?></option>
            <?php
            while ($rows = mysqli_fetch_array($res2)) { ?>
                <option value='<?= $rows['pack']; ?>'> <?= $rows['pack']; ?> </option>
            <?php  } ?>
        </select>

        <div id="inst_vals_<?= $id ?>"></div>

        <script>
            if ($('#instance_<?= $id ?> .editable').val() == '') {
                $('#instance_<?= $id ?> .editable').remove()
            }

            function instanceVals() {
                $.ajax({
                    url: "../view/instance_ajax.php",
                    type: 'POST',
                    dataType: "TEXT",
                    data: {
                        region: $('#region_<?= $id ?>').val(),
                        instance: $('#instance_<?= $id ?>').val(),
                        action: "inst",
                        name: <?= $name ?>
                    },
                    success: function(response) {
                        $("#inst_vals_<?= $id ?>").html(response);
                    }
                })
            }
        </script>
    <?php
    } else { ?>
        <div class="row ml-2">
            <div class="col-md-4 border p-0 rounded ">
                <label for="vcpu_<?= $id ?>" class="small d-inline-block pl-1">vCPU : </label>
                <input type="number" name="vcpu[<?= $name ?>][]" id="vcpu_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-8 border-0">
            </div>
            <div class="col-md-3 border p-0 rounded ml-1">
                <label for="ram_<?= $id ?>" class="small d-inline-block pl-1">RAM : </label>
                <input type="number" name="ram[<?= $name ?>][]" id="ram_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-7 border-0">
            </div>
            <div class="col-md-4 border p-0 rounded ml-1">
                <label for="inst_disk_<?= $id ?>" class="small d-inline-block pl-1">Disk [ GB ] : </label>
                <input type="number" name="inst_disk[<?= $name ?>][]" id="inst_disk_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-5 border-0">
            </div>
        </div>
    <?php  }
}
function inst_val()
{
    global $con;
    $name = $_POST['name'];
    $reg = $_POST['region'];
    $inst = $_POST['instance'];
    $sr_no = trim(substr($inst, 0, 4));
    if (preg_match('/:/', $sr_no)) {
        $sr_no = preg_replace('/:/', '', $sr_no);
    }
    $vals = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_pack` WHERE `region`= '{$reg}' AND `sr_no` = '{$sr_no}'"))
    ?>

    <input type="hidden" name="vcpu[<?= $name ?>][]" value="<?= $vals['vCores'] ?>">
    <input type="hidden" name="ram[<?= $name ?>][]" value="<?= $vals['ram'] ?>">
    <input type="hidden" name="inst_disk[<?= $name ?>][]" value="<?= $vals['disk'] ?>">

<?php

}

if ($_POST['action'] == 'inst') {
    inst_val();
}

?>