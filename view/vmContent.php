    <?php
    function vmContent($name, $id, $count,  $type = '')
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
            if ($type == "ajax") { ?>
                <input type="button" value=" Remove " class="add-estmt btn btn-link float-right except" id="rem-vm_<?= $id ?>" data-toggle="button" aria-pressed="flase" autocomplete="on">
            <?php
            } else { ?>
                <input type="button" value=" Add VM " class="add-estmt btn btn-link float-right except" id="add-vm_<?= $name ?>" data-toggle="button" aria-pressed="flase" autocomplete="on">
            <?php
            }
            ?>
        </div>
        <div class="collapse show py-1" id="vm_collapse_<?= $id ?>">
            <h6><small>VM Name :</small></h6>
            <input type="text" class="form-control" id="vmname_<?= $id ?>" placeholder="Virtual Machine" name="vmname[<?= $name ?>][]" value="<?= $Editable['vmname'][$name][$count] ?>" required>
            <div class="form-row mt-2">
                <div class="form-group col-md-3 px-2">
                    <h6><small>Region :</small></h6>
                    <select name="region[<?= $name ?>][]" id="region_<?= $id ?>" required class="form-control" onchange="mySeries(<?= $name . ',' . $id ?>)">
                        <option class="editable" value="<?= $Editable['region'][$name][$count] ?>" hidden><?= $Editable['region'][$name][$count] ?></option>
                        <option value="" hidden>Select Region</option>
                        <?php
                        $reg = mysqli_query($con, 'Select Distinct region from tbl_pack');
                        while ($reg_row = mysqli_fetch_array($reg)) { ?>
                            <option value="<?= $reg_row["region"] ?>"><?= $reg_row["region"] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group col-md-3 px-2">
                    <h6><small>Sector :</small></h6>
                    <select name="sector[<?= $name ?>][]" id="sector_<?= $id ?>" required class="form-control">
                        <option class="editable" value="<?= $Editable['sector'][$name][$count] ?>" hidden><?= $Editable['sector'][$name][$count] ?></option>
                        <option value="" hidden>Select Sector</option>
                        <?php
                        $sect = mysqli_query($con, "Select sector from tbl_sector");
                        while ($sect_row = mysqli_fetch_array($sect)) { ?>
                            <option value="<?= $sect_row["sector"] ?>"> <?= $sect_row["sector"] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group col-md-3 px-2">
                    <h6><small>Operating System :</small></h6>
                    <select name="os[<?= $name ?>][]" id="os_<?= $id ?>" required class="form-control">
                        <option class="editable" value="<?= $Editable['os'][$name][$count] ?>" hidden><?= $Editable['os'][$name][$count] ?></option>
                        <option value="" hidden>Select OS</option>
                        <?php create_opt('os') ?>
                    </select>
                </div>
                <div class="form-group col-md-3 px-2">
                    <h6><small>Database :</small></h6>
                    <select name="database[<?= $name ?>][]" id="db_<?= $id ?>" required class="form-control">
                        <option class="editable" value="<?= $Editable['database'][$name][$count] ?>" hidden><?= $Editable['database'][$name][$count] ?></option>
                        <option value="" hidden>Select DB</option>
                        <option value="NA">NA</option>
                        <?php create_opt('db') ?>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 px-2">
                    <h6><small>Instance Series :</small></h6>
                    <select name="series[<?= $name ?>][]" id="series_<?= $id ?>" required class="form-control" onchange="mySeries(<?= $name . ',' . $id ?>)">
                        <option class="editable" value="<?= $Editable['series'][$name][$count] ?>" hidden><?= $Editable['series'][$name][$count] ?></option>
                        <option value="" hidden>Select Series</option>
                        <option value="All">All</option>
                        <?php
                        $ser = mysqli_query($con, 'SELECT DISTINCT `pack_series` FROM `tbl_pack`');
                        while ($ser_row = mysqli_fetch_array($ser)) { ?>
                            <option value="<?= $ser_row["pack_series"] ?>"> <?= $ser_row["pack_series"] ?> </option>
                        <?php  } ?>
                        <option value="Flexible Compute">Flexible Compute</option>
                    </select>
                </div>
                <div class="form-group col-md-6 px-2">
                    <h6><small>Instance :</small></h6>
                    <div id="inst_div_<?= $id ?>">
                        <?php
                        if ($Editable['series'][$name][$count] == "Flexible Compute") {
                        ?>
                            <div class="row ml-2">
                                <div class="col-md-4 border p-0 rounded ">
                                    <label for="vcpu_<?= $id ?>" class="small d-inline-block pl-1">vCPU : </label>
                                    <input type="number" name="vcpu[<?= $name ?>][]" value="<?= $Editable['vcpu'][$name][$count] ?>" id="vcpu_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-8 border-0">
                                </div>
                                <div class="col-md-3 border p-0 rounded ml-1">
                                    <label for="ram_<?= $id ?>" class="small d-inline-block pl-1">RAM : </label>
                                    <input type="number" name="ram[<?= $name ?>][]" value="<?= $Editable['ram'][$name][$count] ?>" id="ram_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-7 border-0">
                                </div>
                                <div class="col-md-4 border p-0 rounded ml-1">
                                    <label for="inst_disk_<?= $id ?>" class="small d-inline-block pl-1">Disk [ GB ] : </label>
                                    <input type="number" name="inst_disk[<?= $name ?>][]" value="<?= $Editable['inst_disk'][$name][$count] ?>" id="inst_disk_<?= $id ?>" placeholder='QTY..' class="form-control d-inline-block col-5 border-0">
                                </div>
                            </div>

                        <?php } else {
                        ?>
                            <select name="instance[<?= $name ?>][]" id="instance_<?= $id ?>" required class="form-control">
                                <option class="editable" value="<?= $Editable['instance'][$name][$count] ?>" hidden><?= $Editable['instance'][$name][$count] ?></option>
                                <option value="" hidden>Select Instance</option>
                            </select>
                                         
                        <?php
                        }
                        ?>
                    </div>

                </div>
                <div class="form-group col-md-3 px-2">
                    <h6><small>Quantity :</small></h6>
                    <input type="number" class="form-control small" id="vmqty_<?= $id ?>" required min=1 placeholder="Quantity" value="<?= ($Editable['vmqty'][$name][$count] != 0) ? $Editable['vmqty'][$name][$count] : 0; ?>" name="vmqty[<?= $name ?>][]">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 px-2">
                    <h6><small>VM State :</small></h6>
                    <select name="state[<?= $name ?>][]" id="state_<?= $id ?>" required class="form-control">
                        <option class="editable" value="<?= $Editable['state'][$name][$count] ?>" hidden><?= $Editable['state'][$name][$count] ?></option>
                        <option value="Standalone">Standalone</option>
                        <option value="Active">Active</option>
                        <option value="Passive">Passive</option>
                        <option value="Active-Active">Active-Active</option>
                        <option value="Active-Passive">Active-Passive</option>
                    </select>
                </div>
                <div class="form-group col-md-6 px-2">
                    <h6><small>IP Address : </small></h6>
                    <div class="row">
                        <div class="form-switch form-group form-check">
                            <select name="publicipversion[<?= $name ?>][]" id="publicipversion_<?= $id ?>" class="border-0">
                                <option class="editable" value="<?= $Editable['publicipversion'][$name][$count] ?>" hidden><?= $Editable['publicipversion'][$name][$count] ?></option>
                                <option value="Public IPv6">Public IPv6 </option>
                                <option value="Public IPv4">Public IPv4</option>
                            </select>
                            <input class="form-check-input check ml-2" role="switch" type="checkbox" id="public_ip_<?= $id ?>" name="ip_public[<?= $name ?>][]" <?= ($Editable['ip_public'][$name][$count] == "on") ? "Checked" : "" ?>>
                            <input type="number" name="public_ipqty[<?= $name ?>][]" class="hide form-control" id="ipqty_<?= $id ?>" placeholder="Quantity" value="<?= $Editable['public_ipqty'][$name][$count] ?>" value="<?= $Editable['public_ipqty'][$name][$count] ?>">
                        </div>
                        <!-- <div class="form-switch form-group form-check ml-2 px-8">
                                                    <label class="form-check-label h6" for="private_ip">Private IP : </label>
                                                    <input class="form-check-input check ml-4" role="switch" type="checkbox" id="private_ip">
                                                    <input type="number"  class="hide" id="-select">
                                                </div> -->
                    </div>
                </div>
                <div class="form-group col-md-3 px-2">
                    <h6><small>Anti-Virus : </small></h6>
                    <select name="virus_type[<?= $name ?>][]" id="virus_type_<?= $id ?>" class="form-control">
                        <option class="editable" value="<?= $Editable['virus_type'][$name][$count] ?>" hidden><?= $Editable['virus_type'][$name][$count] ?></option>
                        <option value="">Select Antivirus</option>
                        <option value="Anti-Virus">Anti-Virus</option>
                        <option value="Anti-Virus + HIPS">Anti-Virus + HIPS</option>
                        <?php // create_opt('av') 
                        ?>
                    </select>
                </div>
            </div>
        </div>


        <script>
            changeOnInput('#vmHead_<?= $id ?> .OnInput', '#vmname_<?= $id ?>')

            <?php
            // if(count($Editable['vmname'][$name])>1){
            //     for($i=1; $i<count($Editable['vmname'][$name]); $i++){
            //         echo "$('#add-vm_{$name}').click();";
            //     }
            // }
            ?>

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

    <?php }
    ?>