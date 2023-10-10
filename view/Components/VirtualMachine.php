<?php
function vmContent($name, $id, $count, $type = '', $cloneId = '')
{
    require '../model/editable.php';
?>

    <div class="contain-btn btn-link border-bottom" id='vmHead_<?= $id ?>'>
        <a class="btn btn-link text-left" id="vmHead_<?= $id ?>" data-toggle="collapse" href="#vm_collapse_<?= $id ?>" role="button" aria-expanded="true" aria-controls="vm_collapse_<?= $id ?>">
            <i class="fa fa-desktop"></i>
            <h6 class="d-inline-block ml-1">Virtual Machine : </h6>
            <h6 class="d-inline-block ml-1 OnInput"></h6>
        </a>
        <?php
        if ($type == "ajax") {
        ?>
            <input type="button" value=" Remove " class="add-estmt btn btn-link float-right except" id="rem-vm_<?= $id ?>" data-toggle="button" aria-pressed="flase" autocomplete="on">
        <?php
        } else {
        ?>
            <input type="button" value=" Add VM " class="add-estmt btn btn-link float-right except" id="add-vm_<?= $name ?>" data-toggle="button" aria-pressed="flase" autocomplete="on">
        <?php
        }
        ?>
    </div>
    <div class="collapse show py-1" id="vm_collapse_<?= $id ?>">
        <h6><small>VM Name :</small></h6>
        <input type="text" class="form-control" id="vmname_<?= $id ?>" placeholder="Virtual Machine" name="vmname[<?= $name ?>][]" value="<?= $Editable['vmname'][$name][$count] ?>">
        <div class="form-row mt-2">
            <div class="form-group col-md-9 px-2">
                <h6><small>Instance :</small></h6>
                <div class="row flexComp">
                    <div class="col-4 input-group">
                        <span class="input-group-text form-control col-5 bg-transparent border-right-0 text-sm" id="vcpu_<?= $id ?>">vCPU </span>
                        <span class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm" id="vcpu_<?= $id ?>"> : </span>
                        <input type="number" class="form-control small col-6 text-sm-left border-left-0" id="vcpu_<?= $id ?>" min=0 placeholder="Quantity" value="<?= !empty($Editable['vcpu'][$name][$count]) ? $Editable['vcpu'][$name][$count] : 1 ?>" name="vcpu[<?= $name ?>][]">
                    </div>
                    <div class="col-4 input-group">
                        <span class="input-group-text form-control col-5 bg-transparent border-right-0 text-sm" id="ram_<?= $id ?>">vRAM </span>
                        <span class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm" id="ram_<?= $id ?>"> : </span>
                        <input type="number" class="form-control small col-6 text-sm-left border-left-0" id="ram_<?= $id ?>" min=0 placeholder="Quantity" value="<?= !empty($Editable['ram'][$name][$count]) ? $Editable['ram'][$name][$count] : 2 ?>" name="ram[<?= $name ?>][]">
                    </div>
                    <div class="col-4 input-group">
                        <span class="input-group-text form-control col-5 p-0 bg-transparent border-0 " id="inst_disk_<?= $id ?>">
                            <select name="vmDiskIOPS[<?= $name ?>][]" id="disk_<?= $id ?>" class="form-control p-0 text-sm  border-right-0">
                                <?php
                                $strQuery = mysqli_query($con, "SELECT DISTINCT `product`, `prod_int` FROM `product_list` WHERE `sec_category` = 'object_storage'");
                                while ($strg = mysqli_fetch_assoc($strQuery)) {
                                    $iops = preg_replace("/Object Storage | IOPS per GB/", '', $strg['product']) . " IOPS/GB";
                                    if ($Editable["vmDiskIOPS"][$name][$count] == $strg['prod_int']) {
                                        echo '<option selected value = "' . $strg['prod_int'] . '">' . $iops . '</option>';
                                    } else {
                                        echo '<option value = "' . $strg['prod_int'] . '">' . $iops . '</option>';
                                    }
                                }
                                ?>
                            </select>
                        </span>
                        <span class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm" id="inst_disk_<?= $id ?>"> : </span>
                        <input type="number" class="form-control small col-6 text-sm-left border-left-0" id="inst_disk_<?= $id ?>" min=0 placeholder="Quantity" value="<?= !empty($Editable['inst_disk'][$name][$count]) ? $Editable['inst_disk'][$name][$count] : 100 ?>" name="inst_disk[<?= $name ?>][]">
                    </div>
                </div>
            </div>
            <div class="form-group col-md-3 px-2">
                <h6><small>VM State :</small></h6>
                <select name="state[<?= $name ?>][]" id="state_<?= $id ?>" class="form-control">
                    <option value="Standalone">Standalone</option>
                    <option value="Active" class="single">Active</option>
                    <option value="Passive" class="single">Passive</option>
                    <option value="Active-Active" class="multiple">Active-Active</option>
                    <option value="Active-Passive" class="multiple">Active-Passive</option>
                </select>
                <script>
                    $('#vmqty_<?= $id ?>').on("input", function() {
                        if ($(this).val() < 2) {
                            $('#state_<?= $id ?> .multiple').attr("hidden", "true");
                        } else {
                            $('#state_<?= $id ?> .multiple').removeAttr('hidden');
                        }
                    })
                    if ($('#vmqty_<?= $id ?>').val() < 2) {
                        $('#state_<?= $id ?> .multiple').attr("hidden", "true");
                    } else {
                        $('#state_<?= $id ?> .multiple').removeAttr('hidden');
                    }
                </script>
            </div>

            <div class="form-group col-md-3 px-2">
                <h6><small>Operating System :</small></h6>
                <select name="os[<?= $name ?>][]" id="os_<?= $id ?>" class="form-control">
                    <option value="" hidden>Select OS</option>
                    <?php create_opt('os', $Editable['os'][$name][$count]) ?>
                </select>
            </div>
            <div class="form-group col-md-3 px-2">
                <h6><small>Database :</small></h6>
                <select name="database[<?= $name ?>][]" id="db_<?= $id ?>" class="form-control">
                    <option value="" hidden>Select DB</option>
                    <option value="NA">NA</option>
                    <?php create_opt('db', $Editable['database'][$name][$count]) ?>
                    <option value="Other" contenteditable="true">Other</option>
                </select>
            </div>
            <div class="form-group col-md-3 px-2">
                <h6><small>Quantity :</small></h6>
                <input type="number" class="form-control small" id="vmqty_<?= $id ?>" min=0 placeholder="Quantity" value="<?= ($Editable['vmqty'][$name][$count] != 0) ? $Editable['vmqty'][$name][$count] : 0; ?>" name="vmqty[<?= $name ?>][]">
            </div>
            <div class="form-group col-md-3 px-2">
                <h6><small>Anti-Virus : </small></h6>
                <select name="virus_type[<?= $name ?>][]" id="virus_type_<?= $id ?>" class="form-control">
                    <option value="">Select Antivirus</option>

                    <?php
                    create_opt('av', $Editable['virus_type'][$name][$count]);
                    ?>
                </select>
            </div>
        </div>
    </div>

    <script src="../javascript/main.js"></script>
    <script src="../javascript/jquery-3.6.4.js"></script>

    <script>
        changeOnInput('#vmHead_<?= $id ?> .OnInput', '#vmname_<?= $id ?>')
        <?php
        if (!empty($cloneId)) {
        ?>

            $('#vm_collapse_<?= $id ?>').find("select,input").each(function() {
                if ($(this).prop('type') === "button") {

                } else if ($(this).prop('type') === "checkbox") {
                    let newId = $(this).prop('id')
                    let oldId = newId.replace(/<?= $id ?>/g, <?= $cloneId ?>);
                    if ($("#" + oldId).prop('checked')) {
                        $("#" + newId).attr("checked", $("#" + oldId).prop('checked'));
                    }
                } else if ($(this).prop("type") == "hidden") {

                } else {
                    let newId = $(this).prop('id');
                    let oldId = newId.replace(/<?= $id ?>/g, <?= $cloneId ?>);
                    if ($("#" + newId).prop("type") == "hidden") {
                        // console.log("yes");
                    } else
                    if ($("#" + oldId).val() != "") {
                        $("#" + newId).val($("#" + oldId).val());
                    }
                }
            })
            // mySeries(<?= $name . ',' . $id . " , " . $cloneId . " , " . $count ?>);
        <?php
        } else {
        ?>

            $(document).ready(function() {
                // mySeries(<?= $name . ',' . $id . " , '' , " . $count ?>);
            })

        <?php
        }
        if ($_POST['lastVM'] == "true") {
            echo "console.log('Last')";
        }
        ?>
    </script>



<?php }
?>