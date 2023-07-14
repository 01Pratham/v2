<?php
require "../model/editable.php";
$id2 = 1;

function create_opt($category)
{
    global $con;
    $query = mysqli_query($con, "SELECT * FROM `price_list` WHERE sec_category = '{$category}'");
    while ($product = mysqli_fetch_assoc($query)) {
        // echo $product['product'];
        echo "<option value = '{$product['product']}'>{$product['product']}</option>";
    }
}
?>
<div class='Main'>

    <script src="../javascript/main.js"></script>
    <form method='post' action="final_quotation.php" class="form" id='edit_form' name='form1[]'>

        <?php if (isset($_GET['pot_id'])) { ?>
            <div hidden>

                <input type="hidden" name="quot_type" value="<?= $_GET['type'] ?>">
                <input type="hidden" name="price_list" value="<?= $_GET['list'] ?>">
                <input type="hidden" name="pot_id" value="<?= $_GET['pot_id'] ?>">
                <?php
                $p = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `id` = '{$_SESSION['edit_id']}' "));
                if ($p['pot_id'] != $_POST['pot_id']) {
                    echo "<input type = 'hidden' name = 'old_pot' value = '{$p['pot_id']}' >";
                }
                ?>
            </div>
        <?php } else { ?>
            <div hidden>
                <input type="hidden" name="quot_type" value="<?= $Editable['quot_type'] ?>">
                <input type="hidden" name="price_list" value="<?= $Editable['price_list'] ?>">
                <input type="hidden" name="pot_id" value="<?= $Editable['pot_id'] ?>">
            </div>

        <?php } ?>

        <input type="hidden" name="version" value=" <?php echo $data_query['version'] ?> ">
        <div class='mytabs'>
            <section id="est_div" class="est_div">
                <!-- <input type="button" value=" + " class="add-estmt light" id="add-estmt"> -->
                <button class="add-estmt light" id="add-estmt"><span class= "fa fa-plus"></span> </button>

                <button class="add-estmt light" id="clone-estmt"><span class= "fa fa-random"></span> </button>
                <input type='checkbox' id='tabfree' class="tabfree" checked>
                <label for='tabfree' id='lblestmt' class="lblestmt light">BOM DC</label>
                <?php $vm = 1; ?>
                <div class='tab light' id="tab">
                    <input type='text' name='estmtname[<?= $id2 ?>]' placeholder='Your Estimate' value="<?= $Editable["estmtname"][$count] ?>" class='estmtname light' id='estmtname' required>
                    <input type="number" name="period[<?= $id2 ?>]" id="period" placeholder="Contract Period [ MONTHS ]" min=1 required class="period" value="<?= $Editable['period'][$count] ?>">
                    <div class='wrapper' id='virtual_machine'>
                        <input type="hidden" name="count_of_vm[1]" id="count_of_vm" value="1">
                        <input type="hidden" name="count_of_estmt" id="count_of_estmt" value="1">


                        <div class='collapsible' id="div1">

                            <input type='checkbox' id='collapsible-head' class="collapsible_head" checked='checked' style='display: none'>
                            <label for='collapsible-head' id='vm_head' class='lblhead'> <span class="fa fa-desktop px-3 py-1"> </span> Virtual Machine :
                                <lable id="change_lbl_<?= $id2 ?>" style="width: 1140px; padding-left: 5px;"> </lable>
                                <span class="d-flex justify-content-end">
                                    <input type="button" value=" Add VM  " id="addbtn" class="submit-btn light" onclick="add_vm()">
                                </span>
                            </label>

                            <div class='collapsible-div'>
                                <div>
                                    <div>
                                        <br>
                                        <input type='text' name='vmname[<?= $id2 ?>][]' placeholder='Virtual Machine' class='vmname' id='vmname_<?= $id2 ?>' required value="<?= $Editable['vmname'][$count][0] ?>">
                                        <script>
                                            chng_oninp("#vmname_<?= $id2 ?>", "#change_lbl_<?= $id2 ?>");
                                        </script>

                                    </div><br>
                                    <div>
                                        <div>
                                            <lable id='lblreg'> Region :</lable>
                                            <lable id='lblsec'> Sector :</lable>
                                            <lable id='lblos'> Operating System : </lable>
                                            <lable id='lbldb'> Database :</lable>
                                        </div>
                                    </div>
                                    <span class='select'>
                                        <select name='region[<?= $id2 ?>][]' id='region_<?= $id2 ?>'>
                                            <option class="editable" value="<?= $Editable['region'][$count][0] ?>" hidden><?= $Editable['region'][$count][0] ?></option>
                                            <?php
                                            $region_query = 'Select Distinct region from tbl_pack';
                                            $reg = mysqli_query($con, $region_query);
                                            while ($reg_row = mysqli_fetch_array($reg)) { ?>
                                                <option value="<?= $reg_row["region"] ?>"><?= $reg_row["region"] ?> </option>
                                            <?php } ?>

                                        </select>
                                    </span>
                                    <span id='sect' style='padding-left: 85px;' class='select'>
                                        <select name='sector[<?= $id2 ?>][]' placeholder='Select Sector' class='sector' id="sector_<?= $id2 ?>">
                                            <option class="editable" value="<?= $Editable['sector'][$count][0] ?>" hidden><?= $Editable['sector'][$count][0] ?></option>
                                            <?php
                                            $sector_query = "Select sector from tbl_sector";
                                            $sect = mysqli_query($con, $sector_query);
                                            while ($sect_row = mysqli_fetch_array($sect)) { ?>
                                                <option value="<?= $sect_row["sector"] ?>"> <?= $sect_row["sector"] ?> </option>
                                            <?php } ?>
                                        </select>
                                    </span>

                                    <span id='os' style='padding-left: 100px;' class='select'>
                                        <select name='os[<?= $id2 ?>][]' value='Select OS' placeholder='Select OS' class='os' id="os_<?= $id2 ?>">
                                            <option class="editable" value="<?= $Editable['os'][$count][0] ?>" hidden><?= $Editable['os'][$count][0] ?></option>
                                            <?php create_opt('os') ?>
                                        </select>
                                    </span>

                                    <span id='db' style='padding-left: 57px;' class='select'>
                                        <select name='database[<?= $id2 ?>][]' class='db' id="db_<?= $id2 ?>">
                                            <option class="editable" value="<?= $Editable['database'][$count][0] ?>" hidden><?= $Editable['database'][$count][0] ?></option>
                                            <option value='NA'> N/A</option>
                                            <?php create_opt('db') ?>
                                        </select>
                                    </span>
                                    <br>
                                    <br>
                                    <div>
                                        <!-- Lables -->
                                        <div>
                                            <!-- Lables -->
                                            <lable id='lblreg'> Instance Series :</lable>
                                            <lable id='lblinst'> Instance :</lable>
                                            <lable id='lblqty'> Quantity :</lable>
                                        </div>
                                    </div>
                                    <div>
                                        <span id='ser' class='select'><!-- Series -->
                                            <select name='series[<?= $id2 ?>][]' id='series_<?= $id2 ?>' onchange="mySeries(1, 1)" value="<?= $Editable['series'][$count][0] ?>">
                                                <option class="editable" value="<?= $Editable['series'][$count][0] ?>" hidden><?= $Editable['series'][$count][0] ?></option>
                                                <option value='select_ser' hidden> Select Series </option>
                                                <option value='all'> All </option>
                                                <?php while (
                                                    $ser_row = mysqli_fetch_array($ser)
                                                ) { ?>
                                                    <option value="<?= $ser_row["pack_series"] ?>"> <?= $ser_row["pack_series"] ?> </option>
                                                <?php  } ?>
                                                <option value='flexi'> Flexible Compute </option>
                                            </select>
                                        </span>




                                        <span id='inst_<?= $id2 ?>' style='padding-left: 85px;'>
                                            <select name='instance[<?= $id2 ?>][]' id='selectinst_<?= $id2 ?>' class="selectinst" required>

                                                <option class="editable" value="<?= $Editable['instance'][$count][0] ?>" hidden><?= $Editable['instance'][$count][0] ?></option>
                                                <option value=''>
                                                    Select Instance
                                                </option>

                                            </select>
                                        </span>

                                        <span id='qty' style='padding-left: 58px;' class='qty'>
                                            <input type='number' name='vmqty[<?= $id2 ?>][]' placeholder='Quantity' id='vmqty_<?= $id2 ?>' min="0" class="vm_qty" value="1" value="<?= $Editable['vmqty'][$count][0] ?>">
                                        </span>
                                        <br>
                                        <br>
                                    </div>
                                    <div>
                                        <lable id='lblreg'> VM State :</lable>
                                        <lable id='lblstate'> IP Address :</lable>
                                    </div>

                                    <div class="ip-grid">
                                        <div class='ipdiv'>
                                            <span class="select">
                                                <select name="state[<?= $id2 ?>][]" id="state_<?= $id2 ?>" value="<?= $Editable['state'][$count][0] ?>">
                                                    <option class="editable" value="<?= $Editable['state'][$count][0] ?>" hidden><?= $Editable['state'][$count][0] ?></option>
                                                    <option value="" class='default'>N/A</option>
                                                    <option value="( Active )">Active</option>
                                                    <option value="( Passive )">Passive</option>
                                                    <option value="( Active Active )">Active-Active</option>
                                                    <option value="( Active Passive )">Active-Passive</option>
                                                </select>
                                            </span>
                                            <span id='ipcheck1' class='ip' style="padding-left: 82px;"><span class='namelbl'>Public IP : </span>
                                                <input type='checkbox' name='ip_public[<?= $id2 ?>][]' id='public_<?= $id2 ?>' style='margin-top: 3px;' class="ip-check" <?= ($Editable['ip_public'][$count][0] == "on") ? "Checked" : "" ?>>
                                                <span class="ip-hid" style="padding-left: 435px;">
                                                    <select name='publicipversion[<?= $id2 ?>][]' id='publicipversion_<?= $id2 ?>' class="ipvers" name="pub_ipv">
                                                        <option class="editable" value="<?= $Editable['publicipversion'][$count][0] ?>" hidden><?= $Editable['publicipversion'][$count][0] ?></option>
                                                        <option value='IPv6'>IPv6 </option>
                                                        <option value='IPv4'> IPv4 </option>
                                                    </select>
                                                    <input type='number' name='public_ipqty[<?= $id2 ?>][]' placeholder='Quantity' id='publicipqty_<?= $id2 ?>' min="0" class="ip_qty" value="<?= $Editable['public_ipqty'][$count][0] ?>">
                                                </span>
                                            </span>
                                        </div>
                                        <div class='ipdiv'>
                                            <span id='ipcheck2' class='ip'><span class='namelbl'>Private IP :</span>
                                                <input type='checkbox' name='ipprivate[<?= $id2 ?>][]' id='private_<?= $id2 ?>' class="ip-check" <?= ($Editable['ipprivate'][$count][0] == "on") ? "Checked" : "" ?>>

                                                <span class="ip-hid">
                                                    <select name='privateipversion[<?= $id2 ?>][]' id='privateipversion_<?= $id2 ?>' class="ipvers" value="<?= $Editable['privateipversion'][$count][0] ?>">
                                                        <option class="editable" value="<?= $Editable['privateipversion'][$count][0] ?>" hidden><?= $Editable['privateipversion'][$count][0] ?></option>
                                                        <option value='IPv6'>IPv6</option>
                                                        <option value='IPv4'>IPv4</option>
                                                    </select>
                                                    <input type='number' name='private_ipqty[<?= $id2 ?>][]' placeholder='Quantity' id='privateipqty_<?= $id2 ?>' min="0" class="ip_qty" value="<?= $Editable['private_ipqty'][$count][0] ?>">
                                                </span>
                                            </span>

                                            </span>

                                        </div>

                                        <style>
                                            .ip-hid {
                                                display: none;
                                            }

                                            .ip-check:checked+.ip-hid {
                                                display: block;
                                            }

                                            .ip-grid {
                                                display: grid;
                                                grid-template-columns: auto auto auto auto;
                                                grid-column-gap: 1px;
                                            }
                                        </style>


                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class='wrapper' style=" height:auto">
                        <div class='collapsible' id='storage'>
                            <input type='checkbox' id='storage-head' class="collapsible_head" checked>
                            <label for='storage-head' class='lblhead'><span class="fa fa-hdd px-3 py-1"> </span> Storage Solution</label>
                            <div class='collapsible-div'>
                                <div class='div2'>
                                    <div>
                                        <br>
                                        <div class='div2'>
                                            <div>
                                                <lable id='lbladdstr'> Additional Storage :</lable>
                                                <lable id='lbliops'> </lable>
                                                <lable id='lblos'></lable>
                                                <lable id='lbldb'></lable>

                                            </div>
                                            <div>
                                                <div class='grid-container3'>
                                                    <div class="grid-item">
                                                        <lable style='cursor:pointer' class='lblback' id="efv"> 1000IOPS /</lable>
                                                        <select name='1strgunit[<?= $id2 ?>]' id='1strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px; border:hidden;' class='strg-select'>
                                                            <option class="editable" value="<?= $Editable['1strgunit'][$count] ?>" hidden><?= $Editable['1strgunit'][$count] ?></option>
                                                            <option value='TB'>TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>

                                                        <span style="padding-left: 10px;">
                                                            <input type='checkbox' <?= ($Editable['1iops'][$count] == "on") ? "Checked" : "" ?> class='iops-check' id="1iops_check_<?= $id2 ?>" name="1iops[<?= $id2 ?>]">
                                                            <input type='Number' name='1iopsqty[<?= $id2 ?>]' id='1iopsqty_<?= $id2 ?>' class="strg" min=0 placeholder="Quantity" value="<?= $Editable['1iopsqty'][$count] ?>">

                                                        </span>
                                                    </div>
                                                    <div class="grid-item">
                                                        <lable style='cursor:pointer' class='lblback' id="efv"> 3000 IOPS /</lable>
                                                        <select name='3strgunit[<?= $id2 ?>]' id='3strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px; border:hidden;' class='strg-select'>
                                                            <option class="editable" value="<?= $Editable['3strgunit'][$count] ?>" hidden><?= $Editable['3strgunit'][$count] ?></option>
                                                            <option value='TB'>TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>

                                                        <span style="padding-left: 10px;">
                                                            <input type='checkbox' <?= ($Editable['3iops'][$count] == "on") ? "Checked" : "" ?> class='iops-check' id="3iops_check_<?= $id2 ?>" name="3iops[<?= $id2 ?>]">
                                                            <input type='Number' name='3iopsqty[<?= $id2 ?>]' id='3iopsqty_<?= $id2 ?>' class="strg" min=0 placeholder="Quantity" value="<?= $Editable['3iopsqty'][$count] ?>">

                                                        </span>
                                                    </div>
                                                    <div class="grid-item">
                                                        <lable style='cursor:pointer' class='lblback' id="efv"> 5000IOPS /</lable>
                                                        <select name='5strgunit[<?= $id2 ?>]' id='5strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px; border:hidden;' class='strg-select'>
                                                            <option class="editable" value="<?= $Editable['5strgunit'][$count] ?>" hidden><?= $Editable['5strgunit'][$count] ?></option>
                                                            <option value='TB'>TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>

                                                        <span style="padding-left: 10px;">
                                                            <input type='checkbox' <?= ($Editable['5iops'][$count] == "on") ? "Checked" : "" ?> class='iops-check' id="5iops_check_<?= $id2 ?>" name="5iops[<?= $id2 ?>]">
                                                            <input type='Number' name='5iopsqty[<?= $id2 ?>]' id='5iopsqty_<?= $id2 ?>' class="strg" min=0 placeholder="Quantity" value="<?= $Editable['5iopsqty'][$count] ?>">

                                                        </span>
                                                    </div>

                                                    <div class="grid-item">
                                                        <lable style='cursor:pointer' class='lblback' id="efv"> 8000IOPS / </lable>
                                                        <select name='8strgunit[<?= $id2 ?>]' id='8strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px; border:hidden;' class='strg-select'>
                                                            <option class="editable" value="<?= $Editable['8strgunit'][$count] ?>" hidden><?= $Editable['8strgunit'][$count] ?></option>
                                                            <option value='TB'>TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>

                                                        <span style="padding-left: 10px;">
                                                            <input type='checkbox' <?= ($Editable['8iops'][$count] == "on") ? "Checked" : "" ?> class='iops-check' id="8iops_check_<?= $id2 ?>" name="8iops[<?= $id2 ?>]">
                                                            <input type='Number' name='8iopsqty[<?= $id2 ?>]' id='8iopsqty_<?= $id2 ?>' class="strg" min=0 placeholder="Quantity" value="<?= $Editable['8iopsqty'][$count] ?>">

                                                        </span>
                                                    </div>
                                                    <div class="grid-item">
                                                        <lable style='cursor:pointer' class='lblback' id="efv"> 10000IOPS /</lable>
                                                        <select name='10strgunit[<?= $id2 ?>]' id='10strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px; border:hidden;' class='strg-select'>
                                                            <option class="editable" value="<?= $Editable['10strgunit'][$count] ?>" hidden><?= $Editable['10strgunit'][$count] ?></option>
                                                            <option value='TB'>TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>
                                                        <span style="padding-left: 10px;">
                                                            <input type='checkbox' <?= ($Editable['10iops'][$count] == "on") ? "Checked" : "" ?> class='iops-check' id="10iops_check_<?= $id2 ?>" name="10iops[<?= $id2 ?>]">
                                                            <input type='Number' name='10iopsqty[<?= $id2 ?>]' id='10iopsqty_<?= $id2 ?>' class="strg" min=0 placeholder="Quantity" value="<?= $Editable['10iopsqty'][$count] ?>">
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='wrapper' style=" height:auto">
                        <div class='collapsible' id='backup'>
                            <input type='checkbox' id='backup-head' class="collapsible_head" checked hidden>
                            <label for='backup-head' class='lblhead'><span class="fa fa-database px-3 py-1"> </span>Backup and Archival Solution</label>
                            <div class='collapsible-div'>
                                <div class='div2'>
                                    <br>
                                    <div>
                                        <lable id='lblbakstr'> Backup Storage :</lable>
                                        <lable id='lblage'>Backup Software :</lable>
                                        <lable id='lbloffbak'>Offline Backup : </lable>
                                        <lable id='lbldb'></lable>
                                    </div>
                                    <div>
                                        <div >
                                            <input type='number' name='backup_strg[<?= $id2 ?>]' value="<?= $Editable['backup_strg'][$count] ?>" placeholder='Enter Quantity' id='backupqty_<?= $id2 ?>' min="0" class="qty" style="width: 262px;height: 34px;font-size: 20px;padding-left: 10px;">
                                            <span>
                                                <select name='backup_unit[<?= $id2 ?>]' id='strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px;'>
                                                    <option class="editable" value="<?= $Editable['backup_unit'][$count] ?>" hidden><?= $Editable['backup_unit'][$count] ?></option>
                                                    <option value='TB'> TB</option>
                                                    <option value='GB'> GB </option>
                                                </select>
                                            </span>
                                            <span style="padding-left: 108px; display: inline-block" class="select">
                                                <select name="backup_soft[<?= $id2 ?>]" id="backup_soft_<?= $id2 ?>">
                                                    <option class="editable" value="<?= $Editable['backup_soft'][$count] ?>" hidden><?= $Editable['backup_soft'][$count] ?></option>
                                                    <option value="" class='default'>Select Backup Software </option>
                                                    <?php create_opt('backup_soft') ?>
                                                </select>
                                            </span>
                                            <span class="off-grid">
                                                <div class='off-div'>
                                                    <span class='ofback'>Tape Library :</span>
                                                    <input type='checkbox' <?= ($Editable['tape_lib'][$count] == "on") ? "Checked" : "" ?> class='check-off' id="checktl_<?= $id2 ?>" name="tape_lib[<?= $id2 ?>]" style="width: 20px; height: 20px;">
                                                    <span class="off-hid">
                                                        <input type='number' value="<?= $Editable['tlqty'][$count] ?>" name='tlqty[<?= $id2 ?>]' placeholder='Quantity' id='tlqty_<?= $id2 ?>' class="offbacqty" min="0">
                                                    </span>
                                                </div>

                                                <div class='off-div'>
                                                    <span class='ofback' style='margin-top: 10px;'>Tape cartridge:</span>
                                                    <input type='checkbox' <?= ($Editable['tape_cart'][$count] == "on") ? "Checked" : "" ?> class='check-off' id="checktc_<?= $id2 ?>" name="tape_cart[<?= $id2 ?>]" style="width: 20px; height: 20px;">
                                                    <span class="off-hid">
                                                        <input type='number' value="<?= $Editable['tcqty'][$count] ?>" name='tcqty[<?= $id2 ?>]' placeholder='Quantity' id='tcqty_<?= $id2 ?>' class="offbacqty" min="0">
                                                    </span>

                                                </div>

                                                <div class='off-div'>
                                                    <span class='ofback' style='margin-top: 10px;'>Fireproof Cabinate:</span>
                                                    <input type='checkbox' <?= ($Editable['fire_cab'][$count] == "on") ? "Checked" : "" ?> class='check-off' id="checkfc_<?= $id2 ?>" name="fire_cab[<?= $id2 ?>]" style="width: 20px; height: 20px;">
                                                    <span class="off-hid">
                                                        <input type='number' value="<?= $Editable['fcqty'][$count] ?>" name='fcqty[<?= $id2 ?>]' placeholder='Quantity' id='fcqty_<?= $id2 ?>' class="offbacqty" min="0">
                                                    </span>
                                                </div>
                                            </span>

                                            <div style="margin-top: 20px">
                                                <lable id='lblbakstr'>Backup Agent :</lable>
                                                <lable id='lblage' style="padding-left: 345px;">Archival Storage :</lable>
                                                <lable id='lbloffbak'> </lable>
                                                <lable id='lbldb'></lable>
                                            </div>


                                            <div>

                                                <span>
                                                    <select name="age_qty_type[<?= $id2 ?>]" id="age-type" class='agent-type qty'>
                                                        <option class="editable" value="<?= $Editable['age_qty_type'][$count] ?>" hidden><?= $Editable['age_qty_type'][$count] ?></option>
                                                        <option value="all">All VM</option>
                                                        <option value="db">DB VM</option>
                                                        <option value="customized">Customized</option>
                                                    </select>
                                                    <input type='number' name='ageqty[<?= $id2 ?>]' value="<?= $Editable['ageqty'][$count] ?>" placeholder='Quantity' id='ageqty_<?= $id2 ?>' min="0" class="agent-qty">
                                                </span>

                                                <span style="padding-left: 110px">
                                                    <input type='number' name='arc_strg[<?= $id2 ?>]' placeholder='Enter Quantity' id='arch_qty_<?= $id2 ?>' min="0" class="qty" value="<?= $Editable['arc_strg'][$count] ?>">
                                                    <span>
                                                        <select name='archival_unit[<?= $id2 ?>]' id='arc_strgunit_<?= $id2 ?>' style='height: 35px; padding-top: 05px;'>
                                                            <option class="editable" value="<?= $Editable['archival_unit'][$count] ?>" hidden><?= $Editable['archival_unit'][$count] ?></option>
                                                            <option value='TB'> TB</option>
                                                            <option value='GB'> GB </option>
                                                        </select>
                                                    </span>
                                                </span>
                                            </div>

                                            <style>
                                                .off-hid {
                                                    display: none;
                                                }

                                                .off-hid input {
                                                    width: 150px;
                                                }

                                                .check-off:checked+.off-hid {
                                                    display: block;
                                                }

                                                .off-grid {
                                                    display: inline-grid;
                                                    grid-template-columns: auto auto auto;
                                                    grid-column-gap: 1px;
                                                }

                                                .off-div {
                                                    padding-left: 70px;
                                                    display: inline-block;
                                                    font-size: 22px;
                                                }

                                                #checkfc {
                                                    width: 50px;
                                                }
                                            </style>


                                            <br>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='wrapper' style=" height:auto">
                        <div class='collapsible' id='network'>
                            <input type='checkbox' id='network-head' class="collapsible_head" checked>
                            <label for='network-head' class='lblhead'><span class="fa fa-network-wired px-3 py-1"> </span>Network Services</label>
                            <div class='collapsible-div' style="width: 1700px">
                                <div class='div2'>
                                    <div>
                                        <br>
                                        <div class='div2'>
                                            <div>
                                                <!-- Lables -->
                                                <lable id='lblband'> Internet Bandwidth :</lable>
                                                <lable id='lblvpn'>VPN : </lable>
                                                <lable id='lbl_lb'>Load balancer :</lable>
                                                <lable id='lblccpt'>Cross connect & Port Termination :</lable>

                                            </div>
                                            <div>
                                                <span>
                                                    <input type='number' name='bandwidth[<?= $id2 ?>]' placeholder='Mb/s' id='bandwidth_<?= $id2 ?>' min="0" class="qty" value="<?= $Editable['bandwidth'][$count] ?>">
                                                </span>
                                                <div style="display: inline-block;">
                                                    <span class='select' style='padding-left:90px; display: inline-block'>
                                                        <label for="" class="vpn-lbl">IPSEC VPN : </label>
                                                        <input type="checkbox" name="ipsec[<?= $id2 ?>]" id="" class="vpn" <?= ($Editable['ipsec'][$count] == "on") ? "Checked" : "" ?>>
                                                        <span class="vpnqtyspan">
                                                            <input type='Number' name='ipsecqty[<?= $id2 ?>]' placeholder='Quantity' id='vpnqty_<?= $id2 ?>' value="<?= $Editable['ipsecqty'][$count] ?>">
                                                        </span>
                                                    </span>

                                                    <span class='select' style='padding-left:20px; display: inline-block'>
                                                        <label for="" class="vpn-lbl">SSL VPN : </label>
                                                        <input type="checkbox" name="sslvpn[<?= $id2 ?>]" id="" class="vpn" <?= ($Editable['sslvpn'][$count] == "on") ? "Checked" : ""  ?>>
                                                        <span class="vpnqtyspan">
                                                            <input type='Number' name='sslvpnqty[<?= $id2 ?>]' placeholder='Quantity' id='vpnqty_<?= $id2 ?>' value="<?= $Editable['sslvpnqty'][$count] ?>">
                                                        </span>
                                                    </span>


                                                    </span>
                                                </div>

                                                <span class='select' style='padding-left:100px'>
                                                    <select name="load_balancer[<?= $id2 ?>]" id="lb_<?= $id2 ?>" style="width: 200px;" class='net-drop'>
                                                        <option class="editable" value="<?= $Editable['load_balancer'][$count] ?>" hidden><?= $Editable['load_balancer'][$count] ?></option>
                                                        <option value="" class='default'>
                                                            N/A
                                                        </option>
                                                        <?php create_opt("lb") ?>
                                                    </select>
                                                </span>
                                                <span id="lbqtyspan">
                                                    <input type='Number' name='lbqty[<?= $id2 ?>]' value="<?= $Editable['lbqty'][$count] ?>" placeholder='Quantity' id='lbqty_<?= $id2 ?>' min="0" style='width: 139px; height: 38px; font-weight: bold; font-size: 20px'>
                                                </span>

                                                <span id="ccptqtyspan" style="padding-left: 85px;">
                                                    <input type='number' name='ccptqty[<?= $id2 ?>]' value="<?= $Editable['ccptqty'][$count] ?>" placeholder='Quantity' id='ccptqty_<?= $id2 ?>' min="0" class="qty">
                                                </span>
                                                <br>
                                            </div><br>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='wrapper'>
                        <div class='collapsible' id='security' checked>
                            <input type='checkbox' id='security-head' class="collapsible_head" checked style="display: none;">
                            <label for='security-head' class='lblhead'><span class="fa fa-shield-alt px-3 py-1"> </span>Security Services</label>
                            <div class='collapsible-div'>
                                <div class='grid-container1'>
                                    <div class="grid-item">
                                        <select name="efv_throughput[<?= $id2 ?>]" id="efw_<?= $id2 ?>" class="dropdown">
                                            <option class="editable" value="<?= $Editable['efv_throughput'][$count] ?>" hidden><?= $Editable['efv_throughput'][$count] ?></option>
                                            <option value="" class='default' hidden>External Firewall</option>
                                            <?php create_opt("fw") ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['extfirewall'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkefw_<?= $id2 ?>" name='extfirewall[<?= $id2 ?>]'>
                                        <input type='Number' name='extfvqty[<?= $id2 ?>]' id='efwqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['extfvqty'][$count] ?>">
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="utm_<?= $id2 ?>" class="dropdown">
                                            <option value="utm" hidden>UTM</option>
                                        </select>
                                        <input type='checkbox' class='sec-check' id="checkutm_<?= $id2 ?>" name="utm[<?= $id2 ?>]" <?= ($Editable['utm'][$count] == "on") ? "Checked" : ""  ?>>
                                        <input type='Number' name='utmqty[<?= $id2 ?>]' id='utmqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['utmqty'][$count] ?>">
                                    </div>

                                    <!--  -->
                                    <div class="grid-item">
                                        <select name="ifv_throughput[<?= $id2 ?>]" id="ifw_<?= $id2 ?>" class="dropdown" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['ifv_throughput'][$count] ?>" hidden><?= $Editable['ifv_throughput'][$count] ?></option>
                                            <option value="" class='default' hidden>Internal Firewall</option>
                                            <?php create_opt("fw") ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['intfirewall'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkifw_<?= $id2 ?>" name='intfirewall[<?= $id2 ?>]'>
                                        <input type='Number' name='intfvqty[<?= $id2 ?>]' id='fwqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['intfvqty'][$count] ?>">
                                    </div>

                                    <div class="grid-item">
                                        <select name="ddos_throughput[<?= $id2 ?>]" id="ddos_<?= $id2 ?>" class="dropdown" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['ddos_throughput'][$count] ?>" hidden><?= $Editable['ddos_throughput'][$count] ?></option>
                                            <option value="" class='default' hidden>DDOS Mitigation</option>
                                            <?php create_opt("ddos") ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['ddos'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkddos_<?= $id2 ?>" name='ddos[<?= $id2 ?>]'>
                                        <input type='Number' name='ddosqty[<?= $id2 ?>]' id='ddosqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['ddosqty'][$count] ?>">
                                    </div>

                                    <div class="grid-item">
                                        <select name="waf_type[<?= $id2 ?>]" id="waf_<?= $id2 ?>" class="dropdown" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['waf_type'][$count] ?>" hidden><?= $Editable['waf_type'][$count] ?></option>
                                            <option value="" class='default' hidden>Web Application Firewall</option>
                                            <?php create_opt("waf") ?>
                                        </select>
                                        <!-- <span style="padding-left: ;">  -->
                                        <input type='checkbox' <?= ($Editable['waf'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkwaf_<?= $id2 ?>" name="waf[<?= $id2 ?>]">
                                        <input type='Number' name='wafqty[<?= $id2 ?>]' id='wafqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['wafqty'][$count] ?>">

                                    </div>

                                    <div class="grid-item">
                                        <select name="virus_type[<?= $id2 ?>]" id="av_<?= $id2 ?>" class="dropdown">
                                            <option class="editable" value="<?= $Editable['virus_type'][$count] ?>"><?= $Editable['virus_type'][$count] ?></option>
                                            <option value="" hidden>Anti-Virus</option>
                                            <?php create_opt("av") ?>
                                        </select>
                                        <input type='checkbox' class='sec-check' id="checkav_<?= $id2 ?>" checked name="av[<?= $id2 ?>]" <?= $Editable['av'][$count] ?>>

                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="hips_<?= $id2 ?>" class="dropdown">
                                            <option value="" hidden>HIPS</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' class='sec-check' id="checkhips_<?= $id2 ?>" name="hips[<?= $id2 ?>]" <?= ($Editable['hips'][$count] == "on") ? "Checked" : ""  ?>>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="ssl[<?= $id2 ?>]" id="ssl_<?= $id2 ?>" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['ssl'][$count] ?>" hidden><?= $Editable['ssl'][$count] ?></option>
                                            <option value="" class="default">SSL Certificate</option>
                                            <?php create_opt("ssl_cert") ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['ssl-check'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkssl_<?= $id2 ?>" name='ssl-check[<?= $id2 ?>]'>
                                        <input type='Number' name='sslqty[<?= $id2 ?>]' id='sslqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['sslqty'][$count] ?>">
                                    </div>

                                    <div class="grid-item">
                                        <select name="siem_name[<?= $id2 ?>]" id="siem_name_<?= $id2 ?>" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['siem_name'][$count] ?>"><?= $Editable['siem_name'][$count] ?></option>
                                            <option value="" class='default'>SIEM</option>
                                            <?php create_opt("siem") ?>
                                        </select>
                                        <input type='checkbox' class='sec-check' id="checksiem_<?= $id2 ?>" name="siem[<?= $id2 ?>]" <?= ($Editable['siem'][$count] == "on") ? "Checked" : "" ?>>
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="pim_<?= $id2 ?>" class="dropdown">
                                            <option value="pim" hidden>PIM / PAM</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' <?= ($Editable['pim'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkpim_<?= $id2 ?>" name="pim[<?= $id2 ?>]">
                                            <input type='Number' name='pimqty[<?= $id2 ?>]' id='pimqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['pimqty'][$count] ?>">
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="vtm_<?= $id2 ?>" class="dropdown">
                                            <option value="" hidden>VTM Scan</option>
                                        </select>
                                        <span class="select">
                                            <input type='checkbox' <?= ($Editable['vtm'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkvtm_<?= $id2 ?>" name="vtm[<?= $id2 ?>]">
                                            <select name="vtmqty[<?= $id2 ?>]" class="secqty" style="width: 290px;" id="vtmqty_<?= $id2 ?>">
                                                <option class="editable" value="<?= $Editable['vtmqty'][$count] ?>"><?= $Editable['vtmqty'][$count] ?></option>
                                                <?php create_opt("vtm_scan") ?>
                                            </select>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="vapt_type[<?= $id2 ?>]" id="vapt_<?= $id2 ?>" style="width: 270px; height: 25px; padding-top: 5px; border: hidden; font-size: 20px; padding-left: -1px;" class="dropdown">
                                            <option class="editable" value="<?= $Editable['vapt_type'][$count] ?>"><?= $Editable['vapt_type'][$count] ?></option>
                                            <option value="" hidden>VAPT Audit</option>
                                            <?php create_opt("vapt") ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['vapt'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkvapt_<?= $id2 ?>" name="vapt[<?= $id2 ?>]">
                                        <span class='secqty'>
                                            <input type='Number' name='vaptqty[<?= $id2 ?>]' id='vaptqty_<?= $id2 ?>' class="inline" min=0 placeholder="Frequency" value="<?= $Editable['vaptqty'][$count] ?>">
                                            <select name="vapt_frequency[<?= $id2 ?>]" id="vapt_freq" class="inline">
                                                <option class="editable" value="<?= $Editable['vapt_frequency'][$count] ?>"><?= $Editable['vapt_frequency'][$count] ?></option>
                                                <option value="Year">/ Year</option>
                                                <option value="Quarter">/ Quarter</option>
                                            </select>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="hsm_type[<?= $id2 ?>]" id="hsm_<?= $id2 ?>" class="dropdown">
                                            <option class="editable" value="<?= $Editable['hsm_type'][$count] ?>"><?= $Editable['hsm_type'][$count] ?></option>
                                            <option value="" hidden>HSM</option>
                                            <?php create_opt('hsm') ?>
                                        </select>
                                        <input type='checkbox' <?= ($Editable['hsm'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkhsm_<?= $id2 ?>" name="hsm[<?= $id2 ?>]">
                                        <input type='Number' name='hsmqty[<?= $id2 ?>]' id='hsmqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['hsmqty'][$count] ?>">
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="tfa_<?= $id2 ?>" class="dropdown">
                                            <option value="tfa" hidden>Two Factor Authentication</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' <?= ($Editable['tfa'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checktfa_<?= $id2 ?>" name="tfa[<?= $id2 ?>]">
                                            <input type='Number' name='tfaqty[<?= $id2 ?>]' id='tfaqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['tfaqty'][$count] ?>">
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="iam_<?= $id2 ?>" class="dropdown">
                                            <option value="iam" hidden>IAM</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' <?= ($Editable['iam'][$count] == "on") ? "Checked" : "" ?> class='sec-check' id="checkiam_<?= $id2 ?>" name="iam[<?= $id2 ?>]">
                                            <input type='Number' name='iamqty[<?= $id2 ?>]' id='iamqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['iamqty'][$count] ?>">
                                        </span>
                                    </div>


                                    <div class="grid-item">
                                        <select name="" id="dlp_<?= $id2 ?>" class="dropdown">
                                            <option value="dlp" hidden>DLP</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' class='sec-check' id="checkdlp_<?= $id2 ?>" name="dlp[<?= $id2 ?>]" <?= ($Editable['dlp'][$count] == "on") ? "Checked" : "" ?>>
                                            <input type='Number' name='dlpqty[<?= $id2 ?>]' id='dlpqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['dlpqty'][$count] ?>">
                                        </span>
                                    </div>
                                    <div class="grid-item">
                                        <select name="" id="edr_<?= $id2 ?>" class="dropdown">
                                            <option value="edr" hidden>EDR</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' class='sec-check' id="checkedr_<?= $id2 ?>" name="edr[<?= $id2 ?>]" <?= ($Editable['edr'][$count] == "on") ? "Checked" : "" ?>>
                                            <input type='Number' name='edrqty[<?= $id2 ?>]' id='edrqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['edrqty'][$count] ?>">
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <select name="" id="dam_<?= $id2 ?>" class="dropdown">
                                            <option value="dam" hidden>DAM</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' class='sec-check' id="checkdam_<?= $id2 ?>" name="dam[<?= $id2 ?>]" <?= ($Editable['dam'][$count] == "on") ? "Checked" : "" ?>>
                                            <input type='Number' name='damqty[<?= $id2 ?>]' id='damqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['damqty'][$count] ?>">
                                        </span>
                                    </div>
                                    <div class="grid-item">
                                        <select name="" id="sor_<?= $id2 ?>" class="dropdown">
                                            <option value="sor" hidden>SOR</option>
                                        </select>
                                        <span>
                                            <input type='checkbox' class='sec-check' id="checksor_<?= $id2 ?>" name="sor[<?= $id2 ?>]" <?= ($Editable['sor'][$count] == "on") ? "Checked" : "" ?>>
                                            <input type='Number' name='sorqty[<?= $id2 ?>]' id='sorqty_<?= $id2 ?>' class="secqty" min=0 placeholder="Quantity" value="<?= $Editable['sorqty'][$count] ?>">
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class='wrapper'>
                        <div class='collapsible' id='managed' checked>
                            <input type='checkbox' id='managed-head' class="collapsible_head" checked style="display: none;">
                            <label for='managed-head' class='lblhead'><span class="fa fa-tasks px-3 py-1"> </span>Managed Services</label>
                            <div class='collapsible-div' style="width: 1700px">
                                <div class='grid-container2'>
                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="osmgmt"> OS Management :
                                        </lable>
                                        <span style="padding-left: 85px">
                                            <input type='checkbox' <?= ($Editable['osmgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checkosmgmt_<?= $id2 ?>" name="osmgmt[<?= $id2 ?>]" checked>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="dbmgmt"> DataBase Management :
                                        </lable>
                                        <span style="padding-left: 95px">
                                            <input type='checkbox' class='mgmt-check' id="checkdbmgmt_<?= $id2 ?>" name="dbmgmt[<?= $id2 ?>]" <?= ($Editable['dbmgmt'][$count] == "on") ? "Checked" : "" ?>>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="strgmgmt"> Storage Management
                                            :</lable>
                                        <span style="padding-left: 50px">
                                            <input type='checkbox' <?= ($Editable['strgmgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checkstrgmgmt_<?= $id2 ?>" name="strgmgmt[<?= $id2 ?>]" checked>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="backmgmt"> Backup Management :</lable>
                                        <span style="padding-left: 43px">
                                            <input type='checkbox' <?= ($Editable['backmgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checkbackmgmt_<?= $id2 ?>" name="backmgmt[<?= $id2 ?>]">
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="lbmgmt"> Load Balancer Management :</lable>
                                        <span style="padding-left: 50px">
                                            <input type='checkbox' <?= ($Editable['lb_mgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checklbmgmt_<?= $id2 ?>" name="lb_mgmt[<?= $id2 ?>]">
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="fvmgmt"> Firewall Management :</lable>
                                        <span style="padding-left: 50px">
                                            <input type='checkbox' <?= ($Editable['fv_mgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checkfvmgmt_<?= $id2 ?>" name="fv_mgmt[<?= $id2 ?>]" checked>
                                        </span>
                                    </div>

                                    <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="wafmgmt"> WAF Management :</lable>
                                        <span style="padding-left: 66px">
                                            <input type='checkbox' <?= ($Editable['wafmgmt'][$count] == "on") ? "Checked" : "" ?> class='mgmt-check' id="checkwafmgmt_<?= $id2 ?>" name="wafmgmt[<?= $id2 ?>]">
                                        </span>
                                    </div>

                                    <!-- <div class="grid-item">
                                        <lable style='cursor:pointer' class='lblback' id="emagicmgmt"> eMagic </lable>
                                        <span style="padding-left: 245px">
                                            <input type='checkbox' class='mgmt-check' id="checkemagicmgmt_<?= $id2 ?>" disabled checked></span>
                                    </div> -->
                                    <div class="grid-item">
                                        <select name="emagic_type[]" id="emagic" class="dropdown" required>
                                            <option value="" hidden>Emagic</option>
                                            <option value="basic">Emagic Basic Monitoring</option>
                                            <option value="advanced">Emagic Advanced Monitoring</option>
                                        </select>
                                        <input type='checkbox' class='mgmt-check' id="checkemagicmgmt_<?= $id2 ?>" disabled checked>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    if (isset($_GET['type'])) {
                        // echo 'yes';
                        if ($_GET['type'] == "DR") {
                    ?>
                            <div class='wrapper' style="height:auto">
                                <div class=' collapsible' id='security' checked>
                                    <input type='checkbox' id='dr-head<?= $id2 ?>' checked style="display: none;">
                                    <label for='dr-head<?= $id2 ?>' class='lblhead'><span class="fa fa-server px-3 py-1"></span> Disaster Recovery Services</label>
                                    <div class='collapsible-div'>

                                        <div class='grid-container1'>


                                            <div class="grid-item">
                                                <lable style='cursor:pointer' class='lblback' id="osmgmt_<?= $id2 ?>"> DRM Tool :</lable>
                                                <span style="padding-left: 85px">
                                                    <input type='checkbox' class='mgmt-check' id="checkdrm_<?= $id2 ?>" name="drm_tool[<?= $id2 ?>]" <?= ($Editable['drm_tool'][$id] == 'on') ? "checked" : ""  ?>>
                                                </span>
                                            </div>


                                            <div class="grid-item">
                                                <lable style='cursor:pointer' class='lblback' id="osmgmt_<?= $id2 ?>"> DR Drill :</lable>
                                                <span style="padding-left: 85px">
                                                    <input type='checkbox' class='sec-check' id="checkdrill_<?= $id2 ?>" name="dr_drill[<?= $id2 ?>]" <?= ($Editable['dr_drill'][$id]  == 'on') ? "checked" : "" ?>>
                                                    <input type="number" name="drill_qty[<?= $id2 ?>]" id="drillqty_<?= $id2 ?>" placeholder="No. of Drills/Year" class="secqty" style="width:190px;" value="<?= $Editable['drill_qty'][$id] ?>">
                                                </span>
                                            </div>

                                            <div class="grid-item">
                                                <span class='select' style='padding-left:100px'>
                                                    <select name="rep_link_type[<?= $id2 ?>]" id="link_<?= $id2 ?>" style="width: 220px;">
                                                        <option class='editable' value="<?= $Editable['rep_link_type'][$id]  ?>"><?= $Editable['rep_link_type'][$id]  ?></option>
                                                        <option value="" class="default" disabled>DR Replication Link</option>
                                                        <?php create_opt("link") ?>
                                                    </select>
                                                </span>
                                                <span id="lbqtyspan">
                                                    <input type='Number' name='rep_link_qty[<?= $id2 ?>]' value="<?= $Editable['rep_link_qty'][$id] ?>" placeholder='Mb/s' id='replqty_<?= $id2 ?>' style='width: 139px; height: 38px; font-weight: bold; font-size: 20px'>
                                                </span>
                                            </div>

                                            <div class="grid-item">
                                                <lable style='cursor:pointer' class='lblback' id="osmgmt_<?= $id2 ?>"> Replication Link Management :</lable>
                                                <span style="padding-left: 85px">
                                                    <input type='checkbox' class='mgmt-check' id="checkreplmgnt_<?= $id2 ?>" <?= ($Editable['rep_link_mgmt'][$id]  == 'on') ? "checked" : "" ?>>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                </div>
        <?php
                        }
                    }
        ?>
        </div>


    </section>
</div>
<input type="submit" id = "submit" hidden>
<div class="light py-3 col-12 d-flex justify-content-center">
    <br><Button class="Next-Btn light" name="proceed" id = "proceed"> Proceed  <span class="px-2 py-2 fa fa-angle-double-right"></span></Button><br><br>
</div>
<p id="imp_span" hidden></p>

</form>
</div>

<!-- </div> -->
<script>

    $(document).ready(function() {

        $('#proceed').click(function(){
            $('#submit').click()
        })


        // $('.mytabs').find('select').each(function() {
        //     if ($(this).val() == '') {
        //         $(this).find('.default').each(function() {
        //             $(this).attr('selected', 'true')
        //         })
        //     }
        // })  
        // function get_default() {
        //     $('select').find('.editable').each(function() {
        //         if ($(this).val() == '') {
        //             // console.log($(this).parent())
        //             $(this).remove();
        //         }
        //     })
        // }
        get_default()
        remove_arrow()
    })
    var count_of_est = parseInt($('#count_of_estmt').val());

    function add_vm(count = "") {
        // console.log($('.add_btn').prop("id"));
        var count_of_vm = parseInt($('#count_of_vm').val()) + 1;
        $('#count_of_vm').val(count_of_vm);
        var region_val = $('#region_<?= $id2 ?>').val();
        var sector_val = $('#sector_<?= $id2 ?>').val();
        // console.log(count);
        $.ajax({
            type: "POST",
            url: 'edit-vm_ajax.php',
            data: {
                "id": <?= $vm ?>,
                "id2": count_of_vm,
                "reg_val": region_val,
                "sect_val": sector_val,
                "count": count
            },
            dataType: "TEXT",
            success: function(response) {
                $('#virtual_machine').append(response);
            }
        });

    }

    <?php
    if ($Editable['count_of_vm'][1] > 1) {
        for ($i = 1; $i < $Editable['count_of_vm'][1]; $i++) {
            $count = 0;
            echo "add_vm({$count});";
            $count += 1;
        }
    }
    ?>

    change_mgmt('.db', '#checkdbmgmt_<?= $id2 ?>', 'change')
    change_mgmt('#backupqty_<?= $id2 ?>', '#checkbackmgmt_<?= $id2 ?>', 'input')



    $(document).ready(function() {
        $('.editable').attr('hidden', 'true')
        let count_of = 1;

        function add_estmt(path = '') {
            count_of_est++;

            $('#count_of_estmt').val(count_of_est);
            // alert (count_of_est+""+count_of_vm);
            var count_id = count_of_est + "" + count_of
            $.ajax({
                type: "POST",
                url: 'edit-ajax_estm.php',
                data: {
                    id: count_of_est,
                    id2: count_id 
                },
                dataType: "TEXT",
                success: function(response) {
                    $('.mytabs').append(response);
                }
            });

            var formData = {};
            $('#est_div').find('input, select').each(function() {
                var name = $(this).attr('name')
                if (name) {
                    var id = $(this).attr('id');
                    if (id) {
                        // console.log(id)
                        id = id.replace("_<?= $id2 ?>", '');

                        if ($(this).val() == "on") {
                            if ($(this).prop("checked")) {
                                formData[id] = "on"
                                // console.log("yes")
                            } else {
                                formData[id] = ""
                            }
                        } else {
                            formData[id] = $(this).val()
                        }
                    }
                }
            });

            $("#imp_span").html(JSON.stringify(formData))
        }
        $("#add-estmt").click(function() {
            add_estmt();
        });

        <?php
        if ($Editable['count_of_estmt'] > 1) {
            for ($i = 1; $i < $Editable['count_of_estmt']; $i++) {
                echo "add_estmt();";
            }
        }
        ?>

    });

    $('.agent-type').on('change', function() {
        if ($(this).val() == 'customized') {
            $(this).addClass('small-select')
            $(this).removeClass('qty')

            $(this).parent().find('input[type = "number"]').each(function() {
                $(this).removeClass('agent-qty')
                $(this).addClass('small-qty')
                $(this).val(0);
            })
        } else {
            $(this).removeClass('small-select')
            $(this).addClass('qty')
            $(this).parent().find('input[type = "number"]').each(function() {
                $(this).removeClass('small-qty')
                $(this).addClass('agent-qty')
                $(this).val(0);
            })
        }
    })

    validate_input('.sec-check');
    validate_input('.check-off');
    validate_input('.ip-check');


    chng_oninp('#estmtname', '#lblestmt', 'Your Estimate');
    
    $('.add-estmt').click(function(event){
        console.log('button')
        event.preventDefault();
    })
</script>

<?php  ?>