<?php
$Sku_Data = array();

for ($j = 1; $j <= count($estmtname); $j++) {
    $no = 0;
    $a = "A." . $no + 1;
    $Infrastructure = array();
    $antiVirus = false;
?>

    <tr>
        <th class='colspan except noExl' colspan="7" style="font-size: 30px;"><?= $estmtname[$j] ?></th>
    </tr>
    <?php
    if (!empty($series[$j][0])) {
    ?>
        <tr>
            <th class="except" id="sr"><?= "A." . $no;
                                        $a = "A." . $no . " +"; ?></th>
            <th class="except" id="comp">eNlight Cloud Hosting</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>

        </tr>
        <?php
        $vm_total = array();
        $vcore_data = array();
        for ($i = 0; $i < count($vmname[$j]); $i++) {
            $cost_rows = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_pack` WHERE `sr_no` = '{$instance[$j][$i]}' AND `region` =  '{$region[$j][$i]}' "));
            $compute[$j][$i] = "vCores {$cpu[$j][$i]} | RAM  {$ram[$j][$i]} GB | Disk - 1000 IOPS -  {$disk[$j][$i]} GB";
            $price = ($instance[$j][$i] == "Flexi") ?
                (($product_prices['cpu'] * intval($cpu[$j][$i])) +
                    ($product_prices['ram'] * intval($ram[$j][$i])) +
                    ($product_prices['iops_1'] * intval($disk[$j][$i])))
                : $cost_rows['price'];
            $vCore[$j][$i] = $cpu[$j][$i];
            $vRam[$j][$i] = $ram[$j][$i];
            $vDisk[$j][$i] = $disk[$j][$i];
            array_push($vcore_data, $vCore[$j][$i]);
            if (!empty($av_type[$j][$i])) {
                $av = true;
            } else {

            }
        ?>
            <tr>
                <td><?php echo !empty($vmname[$j][$i]) ? ($vmname[$j][$i]) : ("Virtual Machine") . " - " . $region[$j][$i] . " - " . $sector[$j][$i] . " " . $state[$j][$i]; ?></td>
                <td class="final" class="final"><?php echo $instance[$j][$i] . " : " . $compute[$j][$i] . " | OS : " . $os[$j][$i] . " | DB : " . $db[$j][$i];  ?></td>
                <td class="qty"><?php echo intval($vmqty[$j][$i]) . " NO"; ?></td>
                <td class="cost unshareable" class="unshareable"><?php INR($price); ?></td>
                <td class="discount unshareable" id></td>
                <td class="mrc unshareable" id="vm-mrc"><?php INR(intval($vmqty[$j][$i]) * $price);
                                                        $Infrastructure[$vmname[$j][$i]][$vmname[$j][$i]] = intval($vmqty[$j][$i]) * $price;
                                                        ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php
        }
    }
    require_once '../controller/calculations.php';
    if (!empty($series[$j][0]) || !empty($agenttype[$j])) {
        ?>

        <tr>

            <th class="except" id="sr"> <?php $b = "A." . $no = $no + 1;
                                        $b .= " +";
                                        echo "A." . $no; ?></th>
            <th class="except" id="comp">Software Licenses</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>
        </tr>
        <?php
        $os_data = (!empty($os[$j])) ? array_values(array_unique($os[$j])) : null;
        $db_data = (!empty($db[$j])) ? array_values(array_unique($db[$j])) : null;
        for ($i = 0; $i < count($vmname[$j]); $i++) {   ?>
            <?php
            if ($os_data[$i] == "Windows Standard Edition") {
            ?>
                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i], 2)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['win_se']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 2, $product_prices['win_se']));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 2, $product_prices['win_se']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
        }
        for ($i = 0; $i < count($vmname[$j]); $i++) {
            if ($os_data[$i] == "Windows Datacenter Edition") {
            ?>
                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i], 2)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['win_dc']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 2, $product_prices['win_dc']));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 2, $product_prices['win_dc']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($os_data[$i]   == "Linux : RHEL") {
            ?>

                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['rhel']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 1, $product_prices['rhel']));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 1, $product_prices['rhel']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($os_data[$i] == "Linux : UBUNTU") {
            ?>

                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR(0); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 1, 0));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 1, 0);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($os_data[$i] == "Linux : CENTOS") {
            ?>

                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR(0); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 1, 0));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 1, 0);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($os_data[$i] == "Linux : SUSE") {
            ?>

                <tr>
                    <td><?php echo "Operating System"; ?></td>
                    <td class="final"><?php echo $os_data[$i];  ?></td>
                    <td class="qty"><?php show(get_OS($os_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['suse']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_OS($os_data[$i], 1, $product_prices['suse']));
                                                $Infrastructure[$vmname[$j][$i]][$os_data[$i]] = get_OS($os_data[$i], 1, $product_prices['suse']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
        }

        for ($i = 0; $i < count($vmname[$j]); $i++) {
            if ($db_data[$i] == "MS SQL Standard") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show((get_DB($db_data[$i], 2)==0) ? "Passive" : get_DB($db_data[$i], 2)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['ms_std']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 2, $product_prices['ms_std']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 2, $product_prices['ms_std']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
            if ($db_data[$i] == "MS SQL Enterprise") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show((get_DB($db_data[$i], 2)==0) ? "Passive" : get_DB($db_data[$i], 2)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['ms_ent']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 2, $product_prices['ms_ent']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 2, $product_prices['ms_ent']);

                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>

                </tr>
            <?php }
            if ($db_data[$i] == "MS SQL WEB") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show((get_DB($db_data[$i], 2) ==0) ? "Passive" : get_DB($db_data[$i], 2)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['ms_web']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 2, $product_prices['ms_web']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 2, $product_prices['ms_web']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
                </tr>
            <?php }

            if ($db_data[$i] == "MY SQL Community") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['my_com']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], '', $product_prices['my_com']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], '', $product_prices['my_com']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($db_data[$i] == "MY SQL Standard") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i], 4)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['my_std']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 4, $product_prices['my_std']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 4, $product_prices['my_std']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
            if ($db_data[$i] == "MY SQL Enterprise") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i], 4)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['my_ent']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 4, $product_prices['my_ent']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 4, $product_prices['my_ent']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($db_data[$i] == "Postgre SQL Enterprise") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i], 1)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['post_ent']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 1, $product_prices['post_ent']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 1, $product_prices['post_ent']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($db_data[$i] == "Postgre SQL Community") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['post_com']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], $product_prices['post_com']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], $product_prices['post_com']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($db_data[$i] == "Oracle SQL Standard") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i], 8)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['orc_std']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 8, $product_prices['orc_std']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], 8, $product_prices['orc_std']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
            if ($db_data[$i] == "Oracle SQL Enterprise") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i], 1)); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['orc_ent']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], 1, $product_prices['orc_ent']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i],  1, $product_prices['orc_ent']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }

            if ($db_data[$i] == "Mongo DB Community") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['mong_com']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], $product_prices['mong_com']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i],  $product_prices['mong_com']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
            if ($db_data[$i] == "Maria DB Community") {
            ?>
                <tr>
                    <td><?php echo "Database"; ?></td>
                    <td class="final"><?php echo $db_data[$i];  ?></td>
                    <td class="qty"><?php show(get_DB($db_data[$i])); ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['mar_com']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(get_DB($db_data[$i], $product_prices['mar_com']));
                                                $Infrastructure[$vmname[$j][$i]][$db_data[$i]] = get_DB($db_data[$i], $product_prices['mar_com']);
                                                ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php }
        }

        $Sku_Data[$estmtname[$j]] = SkuList();

        if (!empty($agenttype[$j])) {
            if ($agenttype[$j] == "All VM") {
                $agentqty[$j] = $vmqty[$j];
            } elseif ($agenttype[$j] == "DB VM") {
                for ($i = 0; $i < count($vmqty[$j]); $i++) {
                    if ($db[$i] != "NA") {
                        $agentqty[$j][$i] = $vmqty[$j][$i];
                    }
                }
            } elseif ($agenttype[$j] == "Customized") {
                $agentqty[$j][$i] = $_POST['ageqty'][$j];
            }
            ?>
            <tr>
                <td><?php echo "Software"; ?></td>
                <td class="final"><?php echo "Backup Agent"; ?></td>
                <td class="qty"><?php echo array_sum($agentqty[$j]) . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['backup_age']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(array_sum($agentqty[$j]) * $product_prices['backup_age']);
                                            $Infrastructure['Software']['agent'] = array_sum($agentqty[$j]) * $product_prices['backup_age'];
                                            $Sku_Data[$estmtname[$j]]['Software'][$product_sku['backup_age']] = array_sum($agentqty[$j]);
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }
    if (isset($drm_tool[$j])) {
        $drm_tool_qty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        ?>
        <tr>
            <td><?php echo "DRM Tool"; ?></td>
            <td class="final"><?php echo "DRM Tool"; ?></td>
            <td class="qty"><?php echo $drm_tool_qty . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['drm_tool']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($drm_tool_qty * $product_prices['drm_tool']);
                                        $Infrastructure['Software']['drmtool'] =  $drm_tool_qty * $product_prices['drm_tool'];
                                        $Sku_Data[$estmtname[$j]]['Software'][$product_sku['drm_tool']] = $drm_tool_qty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }

    if (isset($iops1[$j]) || isset($iops3[$j]) || isset($iops5[$j]) || isset($iops8[$j])  || isset($iops10[$j]) ||  !empty($backupstrg[$j]) || isset($tape_lib[$j]) || isset($tape_cart[$j]) || isset($fire_cab[$j])) {
    ?>
        <tr>
            <th class="except" id="sr"><?php $c = "A." . $no = $no + 1;
                                        $c .= " +";
                                        echo "A." . $no; ?></th>
            <th class="except" id="comp">Storage and Backup Services</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>
        </tr>

        <?php
        if (isset($iops03[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit03[$j], 300) ?></td>
                <td class="qty"><?php echo $iops03qty[$j] .  " " . $strgunit03[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit03[$j], $product_prices['iops_03'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR(get_strg($strgunit03[$j], $product_prices['iops_03'], $iops03qty[$j]));
                    $Infrastructure['Storage Solution']['03iops'] =  get_strg($strgunit03[$j], $product_prices['iops_03'], $iops03qty[$j]);
                    $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_03']] = ($strgunit03[$j] == "TB") ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($iops1[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit1[$j], 1000) ?></td>
                <td class="qty"><?php echo $iops1qty[$j] .  " " . $strgunit1[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit1[$j], $product_prices['iops_1'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR(get_strg($strgunit1[$j], $product_prices['iops_1'], $iops1qty[$j]));
                    $Infrastructure['Storage Solution']['1iops'] =  get_strg($strgunit1[$j], $product_prices['iops_1'], $iops1qty[$j]);
                    $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_1']] =  ($strgunit1[$j] == "TB") ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($iops3[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit3[$j], 3000) ?></td>
                <td class="qty"><?php echo $iops3qty[$j] . " " . $strgunit3[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit3[$j], $product_prices['iops_3'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($strgunit3[$j], $product_prices['iops_3'], $iops3qty[$j]));
                                            $Infrastructure['Storage Solution']['3iops'] =  get_strg($strgunit3[$j], $product_prices['iops_3'], $iops3qty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_3']] = ($strgunit3[$j] == "TB") ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php
        }

        if (isset($iops5[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit5[$j], 5000) ?></td>
                <td class="qty"><?php echo $iops5qty[$j] . " " . $strgunit5[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit5[$j], $product_prices['iops_5'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($strgunit5[$j], $product_prices['iops_5'], $iops5qty[$j]));
                                            $Infrastructure['Storage Solution']['5iops'] =  get_strg($strgunit5[$j], $product_prices['iops_5'], $iops5qty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_5']] = ($strgunit5[$j] == "TB") ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php
        } ?>
        <?php
        if (isset($iops8[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit8[$j], 8000) ?></td>
                <td class="qty"><?php echo $iops8qty[$j] . " " . $strgunit8[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit8[$j], $product_prices['iops_8'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($strgunit8[$j], $product_prices['iops_8'], $iops8qty[$j]));
                                            $Infrastructure['Storage Solution']['8iops'] =  get_strg($strgunit8[$j], $product_prices['iops_8'], $iops8qty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_8']] = ($strgunit8[$j] == "TB") ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php
        } ?>
        <?php
        if (isset($iops10[$j])) {
        ?>
            <tr>
                <td><?php echo "Additional Storage"; ?></td>
                <td class="final"><?php strg_iops($strgunit10[$j], 10000) ?></td>
                <td class="qty"><?php echo $iops10qty[$j] . " " . $strgunit10[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($strgunit10[$j], $product_prices['iops_10'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($strgunit10[$j], $product_prices['iops_10'], $iops10qty[$j]));
                                            $Infrastructure['Storage Solution']['10iops'] =  get_strg($strgunit10[$j], $product_prices['iops_10'], $iops10qty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_10']] = ($strgunit10[$j] == "TB") ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
            </tr>
        <?php
        }

        if (!empty($backupstrg[$j])) {
        ?>
            <tr>
                <td><?php echo "Backup Storage"; ?></td>
                <td class="final"><?php echo "Backup Space"; ?></td>
                <td class="qty"><?php echo $backupstrg[$j] . " " . $backupunit[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($backupunit[$j], $product_prices['backup_gb'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($backupunit[$j], $product_prices['backup_gb'], $backupstrg[$j]));
                                            $Infrastructure['Storage Solution']['backup'] =  get_strg($backupunit[$j], $product_prices['backup_gb'], $backupstrg[$j]);
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['backup_gb']] = ($backupunit[$j] == "TB") ? intval($backupstrg[$j]) * 1024 : intval($backupstrg[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (!empty($arc_strg[$j])) {
        ?>
            <tr>
                <td><?php echo "Archival Storage"; ?></td>
                <td class="final"><?php echo "Archival Space"; ?></td>
                <td class="qty"><?php echo $arc_strg[$j] . " " . $archival_unit[$j]; ?></td>
                <td class="cost unshareable"><?php INR(get_strg($archival_unit[$j], $product_prices['arc_strg_gb'])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_strg($archival_unit[$j], $product_prices['arc_strg_gb'], intval($arc_strg[$j])));
                                            $Infrastructure['Storage Solution']['archival'] =  get_strg($archival_unit, $product_prices['arc_strg_gb'], intval($arc_strg[$j]));
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['arc_strg_gb']] = ($archival_unit[$j] == "TB") ? intval($arc_strg[$j]) * 1024 : intval($arc_strg[$j]); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($tape_lib[$j])) {
        ?>
            <tr>
                <td><?php echo "Offline Backup"; ?></td>
                <td class="final"><?php echo "Offline Backup Solution Tape Library"; ?></td>
                <td class="qty"><?php echo $tlqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['tl']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($tlqty[$j]) * $product_prices['tl']);
                                            $Infrastructure['Storage Solution']['tape'] = intval($tlqty[$j]) * $product_prices['tl'];
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tl']] = $tlqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($tape_cart[$j])) {
        ?>
            <tr>
                <td><?php echo "Offline Backup"; ?></td>
                <td class="final"><?php echo "Offline Backup Solution Tape Cartridge"; ?></td>
                <td class="qty"><?php echo $tcqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['tc']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($tcqty[$j]) * $product_prices['tc']);
                                            $Infrastructure['Storage Solution']['cart'] = intval($tcqty[$j]) * $product_prices['tc'];
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tc']] = $tcqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($fire_cab[$j])) {
        ?>
            <tr>
                <td><?php echo "Offline Backup"; ?></td>
                <td class="final"><?php echo "Offline Backup Solution Fireproof cabinate"; ?></td>
                <td class="qty"><?php echo $fcqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['fc']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($fcqty[$j]) * $product_prices['fc']);
                                            $Infrastructure['Storage Solution']['cabinate'] = intval($fcqty[$j]) * $product_prices['fc'];
                                            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['fc']] = $fcqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }
    if (isset($rack[$j]) || isset($rated[$j]) || isset($metered[$j]) || isset($cage[$j]) || isset($bio[$j]) || isset($pdu[$j]) || isset($cctv[$j])) {
        ?>
        <tr>
            <th class="except" id="sr"><?php $c = "A." . $no = $no + 1;
                                        $c .= " +";
                                        echo "A." . $no; ?></th>
            <th class="except" id="comp">Colocation Service</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>
        </tr>

        <?php
        if (isset($rack[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'Rack Space' ?></td>
                <td class="qty"><?php echo $rackqty[$j] .  " U"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['rack_space']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($rackqty[$j] * $product_prices['rack_space']);
                    $Infrastructure['Colocation']['rack_space'] = ($rackqty[$j] * $product_prices['rack_space']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rack_space']] = ($rackqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($metered[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'Metered Power' ?></td>
                <td class="qty"><?php echo $meteredqty[$j] .  " Power Unit"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['metered_power']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($meteredqty[$j] * $product_prices['metered_power']);
                    $Infrastructure['Colocation']['metered_power'] = ($meteredqty[$j] * $product_prices['metered_power']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['metered_power']] = ($meteredqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($rated[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'Rated Power' ?></td>
                <td class="qty"><?php echo $ratedqty[$j] .  " kVA"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['rated_power']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($ratedqty[$j] * $product_prices['rated_power']);
                    $Infrastructure['Colocation']['rated_power'] = ($ratedqty[$j] * $product_prices['rated_power']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rated_power']] = ($ratedqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($cage[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'Cage For RACK ' ?></td>
                <td class="qty"><?php echo $cageqty[$j] .  " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['cage']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($cageqty[$j] * $product_prices['cage']);
                    $Infrastructure['Colocation']['cage'] = ($cageqty[$j] * $product_prices['cage']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cage']] = ($cageqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($bio[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'Bio-matrix for Cage' ?></td>
                <td class="qty"><?php echo $bioqty[$j] .  " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['bio']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($bioqty[$j] * $product_prices['bio']);
                    $Infrastructure['Colocation']['bio'] = ($bioqty[$j] * $product_prices['bio']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['bio']] = ($bioqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($pdu[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'PDU Meter' ?></td>
                <td class="qty"><?php echo $pduqty[$j] .  " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['pdu']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($pduqty[$j] * $product_prices['pdu']);
                    $Infrastructure['Colocation']['pdu'] = ($pduqty[$j] * $product_prices['pdu']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['pdu']] = ($pduqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }


        if (isset($cctv[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo 'CCTV Camera fo Rack' ?></td>
                <td class="qty"><?php echo $cctvqty[$j] .  " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['cctv']) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable">
                    <?php INR($cctvqty[$j] * $product_prices['cctv']);
                    $Infrastructure['Colocation']['cctv'] = ($cctvqty[$j] * $product_prices['cctv']);
                    $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cctv']] = ($cctvqty[$j]);
                    ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }
    if ($ip_private[$j] != NULL) {
        $private_data[$j] = array_unique($ip_private[$j]);
    }
    if ($ip_public[$j] != NULL) {
        $public_data[$j] = array_unique($ip_public[$j]);
    }

    if (isset($ip_public[$j]) || isset($ip_private[$j]) || !empty($bandwidth[$j]) || !empty($ccptqty[$j])  || !empty($vpn[$j]) || !empty($lb[$j]) || !empty($rep_link_type[$j])) { ?>
        <tr>
            <th class="except" id="sr"><?php $d = "A." . $no = $no + 1;
                                        $d .= " +";
                                        echo "A." . $no; ?></th>
            <th class="except" id="comp">Network and Connectivity Services</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>
        </tr>


        <?php for ($i = 0; $i < count($vmname); $i++) {  ?>
            <?php
            if (isset($public_data[$j][$i])) {
            ?>
                <tr>
                    <td><?php echo "Services"; ?></td>
                    <td class="final"><?php echo "Public IP Address : " . $publicip_vers[$j][$i]; ?></td>
                    <td class="qty"><?php echo array_sum($publicip_qty[$j]) . " NO"; ?></td>
                    <td class="cost unshareable"><?php INR($product_prices['ip']); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(array_sum($publicip_qty[$j]) * $product_prices['ip']);
                                                $Infrastructure['Network Solution']['ip'] = array_sum($publicip_qty[$j]) * $product_prices['ip'];
                                                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ip']] = array_sum($publicip_qty[$j]); ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php } ?>

            <?php
            if (isset($private_data[$j][$i])) {
            ?>
                <tr>
                    <td><?php echo "Services"; ?></td>
                    <td class="final"><?php echo "Private IP Address : " . $privateip_vers[$j][$i]; ?></td>
                    <td class="qty"><?php echo array_sum($privateip_qty[$j]) . " NO"; ?></td>
                    <td class="cost unshareable"><?php INR(0); ?></td>
                    <td class="discount unshareable" id="disc"></td>
                    <td class="mrc unshareable"><?php INR(0);
                                                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['private_ip']] = array_sum($privateip_qty[$j]); ?></td>
                    <td class="unshareable" id="otc"><? ?></td>
                </tr>
            <?php } ?>
        <?php }   ?>
        <?php
        // print_r($bandwidth[$j]);
        if (!empty($bandwidth[$j])) {
            $bandInt = ($bandwidthType[$j] == "Speed Based Internet Bandwidth") ? 'speed_band' : 'volume_band';
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $bandwidthType[$j]; ?></td>
                <td class="qty"><?php echo $bandwidth[$j];
                                echo ($bandwidthType[$j] == "Speed Based Internet Bandwidth") ? " Mb/s" : " GB"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices[$bandInt]); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($product_prices[$bandInt]) * intval($bandwidth[$j]));
                                            $Infrastructure['Network Solution']['bandwidth'] = $product_prices[$bandInt] * intval($bandwidth[$j]);
                                            $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku[$bandInt]] = $bandwidth[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }  ?>
        <?php
        if (!empty($ccptqty[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Cross Connect and Port Termination"; ?></td>
                <td class="qty"><?php echo $ccptqty[$j] . "  NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['ccpt']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($product_prices['ccpt']) * intval($ccptqty[$j]));
                                            $Infrastructure['Network Solution']['ccpt'] = intval($product_prices['ccpt']) * intval($ccptqty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ccpt']] =  $ccptqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (isset($rep_link[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $rep_link_type[$j] . " Replication Link"; ?></td>
                <td class="qty"><?php echo $rep_link_qty[$j] . "  Mb/s"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($rep_link_type[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($rep_link_qty[$j]) * get_Price($rep_link_type[$j]));
                                            $Infrastructure['Network Solution']['rep_link'] = intval($rep_link_qty[$j]) * get_Price($rep_link_type[$j]);
                                            // $Sku_Data[$estmtname[$j]]['Network Solution'][get_Price($rep_link_type[$j], "sku_code")] =  $rep_link_qty[$j]; 
                                            $Sku_Data[$estmtname[$j]]['Network Solution']['CNPP000000000000'] =  $rep_link_qty[$j]; ?>

                </td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (!empty($ipsec[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Virtual Private Network (VPN) : IPSEC"; ?></td>
                <td class="qty"><?php echo $ipsecqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['ipsec']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR($product_prices['ipsec'] * intval($ipsecqty[$j]));
                                            $Infrastructure['Network Solution']['ipsec'] = intval($ipsecqty[$j]) * $product_prices['ipsec'];
                                            $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ipsec']] =  $ipsecqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (!empty($sslvpn[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Virtual Private Network (VPN) : SSL"; ?></td>
                <td class="qty"><?php echo $sslvpnqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['ssl_vpn']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR($product_prices['ssl_vpn'] * intval($sslvpnqty[$j]));
                                            $Infrastructure['Network Solution']['sslvpn'] = intval($sslvpnqty[$j]) * $product_prices['ssl_vpn'];
                                            $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ssl_vpn']] =  $sslvpnqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }

        if (!empty($lb[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Load Balancer"; ?></td>
                <td class="qty"><?php echo $lbqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($lb[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_Price($lb[$j]) * intval($lbqty[$j]));
                                            $Infrastructure['Network Solution']['lb'] = get_Price($lb[$j]) * intval($lbqty[$j]);
                                            // $Sku_Data[$estmtname[$j]]['Network Solution'][get_Price($lb[$j]  , "sku_code")] = $lbqty[$j]; 
                                            $Sku_Data[$estmtname[$j]]['Network Solution']["INLBPLCI00000000"] = $lbqty[$j];

                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }



    if (
        !empty($av) ||
        isset($ext_firewall[$j]) ||
        isset($int_fv[$j]) ||
        isset($ddos[$j]) ||
        isset($waf[$j]) ||
        isset($tfa[$j]) ||
        isset($sslcert[$j]) ||
        isset($siem[$j]) ||
        isset($pim[$j]) ||
        isset($vtm[$j]) ||
        isset($vapt[$j]) ||
        isset($hsm[$j]) ||
        isset($iam[$j]) ||
        isset($dlp[$j]) ||
        isset($edr[$j]) ||
        isset($dam[$j]) ||
        isset($sor[$j])
    ) {
        if (!empty($vmname[$j])) {
            $av_count = array();
            foreach ($vmname[$j] as $i => $val) {
                if (!empty($av_type[$j][$i])) {
                    // $av_type[$j][$key] = $val;
                    $newAV = $av_type[$j][$i];
                    // echo $vmqty[$j][$i];
                    array_push($av_count, $vmqty[$j][$i]);
                } else {
                    unset($av_type[$j][$i]);
                }
            }
        }
        // print_r($av_count);
        ?>

        <tr>
            <th class="except" id="sr"><?php $e = "A." . $no = $no + 1;
                                        echo "A." . $no; ?></th>
            <th class="except" id="comp">Security Solution</th>
            <th class="except" id="unit">Unit</th>
            <th class="unshareable except" id="cost">Cost/Unit</th>
            <th class="unshareable except" id='disc-head'>Discount %</th>
            <th class="unshareable except" id="mrc">Monthly Cost</th>
            <th class="unshareable except" id='otc'>OTC</th>
        </tr>
        <?php


        // $count = count($av_count)   
        // print_r($av_count);
        if (!empty($newAV)) {
            // echo preg_match("/HIPS/", $newAV);
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $newAV; ?></td>
                <td class="qty"><?php echo array_sum($av_count) . " NO"; ?></td>
                <td class="cost unshareable"><?php (preg_match("/HIPS/", $newAV)) ? INR(1200) : INR(300) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php (preg_match("/HIPS/", $newAV)) ? INR(array_sum($av_count) * 1200) : INR(array_sum($av_count) * 300);
                                            $Infrastructure['Security Solution']['av'] = (preg_match("/HIPS/", $newAV)) ? (array_sum($av_count) * 1200) : (array_sum($av_count) * 300);
                                            $Sku_Data[$estmtname[$j]]['Security Solution']['ESAVAHMA00000000'] = array_sum($av_count);
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php
        }
        if (isset($ext_firewall[$j])) {
            $throughput = preg_split("/:/", $efv_throughput[$j]);
            // print_r($throughput);
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo (isset($utm[$j])) ? "vUTM " : "";
                                    echo "External Firewall - $throughput[1] Throughput"; ?></td>
                <td class="qty"><?php echo $extfvqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($efv_throughput[$j])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($extfvqty[$j]) *  get_Price($efv_throughput[$j]));
                                            $Infrastructure['Security Solution']['efw'] = intval($extfvqty[$j]) *  get_Price($efv_throughput[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($efv_throughput[$j], "sku_code")] = $extfvqty[$j];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($int_fv[$j])) {
            $throughput = preg_split("/:/", $ifv_throughput[$j]);
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Internal Firewall - $throughput[1] Throughput"; ?></td>
                <td class="qty"><?php echo $intfvqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($ifv_throughput[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($intfvqty[$j]) * get_Price($ifv_throughput[$j]));
                                            $Infrastructure['Security Solution']['ifw'] = intval($intfvqty[$j]) * get_Price($ifv_throughput[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ifv_throughput[$j], "sku_code")] = $intfvqty[$j];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($ddos[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "DDoS Mitigation up to 1 Gbps Mitigation"; ?></td>
                <td class="qty"><?php echo 1 . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($ddos_throughput[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval(1) * get_Price($ddos_throughput[$j]));
                                            $Infrastructure['Security Solution']['ddos'] = intval(1) * get_Price($ddos_throughput[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ddos_throughput[$j], "sku_code")] = 1;
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($waf[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $waf_name[$j] ?></td>
                <td class="qty"><?php echo $wafqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($waf_name[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($wafqty[$j]) * get_Price($waf_name[$j]));
                                            $Infrastructure['Security Solution']['waf'] = intval($wafqty[$j]) * get_Price($waf_name[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($waf_name[$j], "sku_code")] = $wafqty[$j];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($tfa[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "Two Factor Authentication"; ?></td>
                <td class="qty"><?php echo $tfaqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['tfa']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($tfaqty[$j]) * $product_prices['tfa']);
                                            $Infrastructure['Security Solution']['tfa'] = intval($tfaqty[$j]) * $product_prices['tfa'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['tfa']] = $tfaqty[$j][1];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($sslcert[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "SSL Certificate : " . $ssl[$j]; ?></td>
                <td class="qty"><?php echo $sslqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($ssl[$j])) ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_Price($ssl[$j]) * intval($sslqty[$j]));
                                            $Infrastructure['Security Solution']['ssl'] = get_Price($ssl[$j]) * intval($sslqty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ssl[$j], "sku_code")] = $sslqty[$j];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($siem[$j])) {
            $siemqty = 
            array((!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0, 
            intval($intfvqty[$j]) + intval($extfvqty[$j]), 
            intval($wafqty[$j]), 
            intval($lbqty[$j]),  
            ($hsm[$j] && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : (0)
        );

        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "SIEM"; ?>
                    <i class='fa fa-info-circle  float-right' title="
VM Quantity - <?= $siemqty[0] ?> 
Internal & External Firewall - <?= $siemqty[1] ?> 
Web App Firewall - <?= $siemqty[2] ?> 
Load Balancer - <?= $siemqty[3] ?> 
HSM - <?= $siemqty[4] ?> "></i>
                </td>
                <td class="qty"><?php echo array_sum($siemqty) . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($siem_name[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(array_sum($siemqty) * get_Price($siem_name[$j]));
                                            $Infrastructure['Security Solution']['siem'] = array_sum($siemqty) * get_Price($siem_name[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($siem_name[$j], "sku_code")] = array_sum($siemqty);
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($pim[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "PIM"; ?></td>
                <td class="qty"><?php echo $pimqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['pim']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($pimqty[$j]) * $product_prices['pim']);
                                            $Infrastructure['Security Solution']['pim'] = intval($pimqty[$j]) * $product_prices['pim'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['pim']] = $pimqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($vtm[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "VTM Scan ( {$vtmqty[$j]} )"; ?></td>
                <td class="qty"><?php echo 1 . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($vtmqty[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(get_Price($vtmqty[$j]));
                                            $Infrastructure['Security Solution']['vtm'] = get_Price($vtmqty[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vtmqty[$j], "sku_code")] = 1; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($vapt[$j])) {
            $Devices = 
            array((!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0, 
            intval($intfvqty[$j]) + intval($extfvqty[$j]), 
            intval($wafqty[$j]), 
            intval($lbqty[$j]), 
            (isset($hsm[$j]) && $hsmtype[$j] == 'Dedicated HSM')? intval($hsmqty[$j]) : 0
        );

        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $vapt_type[$j] . " " . $vapt_frequency[$j] . " " . $vaptqty[$j]; ?>
                    <i class='fa fa-info-circle  float-right' title="
VM Quantity - <?= $Devices[0] ?> 
Internal & External Firewall - <?= $Devices[1] ?> 
Web App Firewall - <?= $Devices[2] ?> 
Load Balancer - <?= $Devices[3] ?> 
HSM - <?= $Devices[4] ?> "></i>
                </td>
                <td class="qty"><?php echo array_sum($Devices) . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($vapt_type[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(array_sum($Devices) * get_Price($vapt_type[$j]));
                                            $Infrastructure['Security Solution']['vapt'] = array_sum($Devices) * get_Price($vapt_type[$j]);
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vapt_type[$j], "sku_code")] = array_sum($Devices); ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($hsm[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $hsmtype[$j]; ?></td>
                <td class="qty"><?php echo $hsmqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR(get_Price($hsmtype[$j])); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($hsmqty[$j]) * get_Price($hsmtype[$j]));
                                            $Infrastructure['Security Solution']['hsm'] = intval($hsmqty[$j]) * $product_prices['hsm'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($hsmtype[$j], "sku_code")] = $hsmqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($iam[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "IAM"; ?></td>
                <td class="qty"><?php echo $iamqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['iam']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($iamqty[$j]) * $product_prices['iam']);
                                            $Infrastructure['Security Solution']['iam'] = intval($iamqty[$j]) * $product_prices['iam'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["iam"]] = $iamqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($dlp[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "DLP"; ?></td>
                <td class="qty"><?php echo $dlpqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['dlp']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($dlpqty[$j]) * $product_prices['dlp']);
                                            $Infrastructure['Security Solution']['dlp'] = intval($dlpqty[$j]) * $product_prices['dlp'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["dlp"]] = $dlpqty[$j];
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($edr[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "EDR"; ?></td>
                <td class="qty"><?php echo $edrqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['edr']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($edrqty[$j]) * $product_prices['edr']);
                                            $Infrastructure['Security Solution']['edr'] = intval($edrqty[$j]) * $product_prices['edr'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["edr"]] = $edrqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($dam[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "DAM"; ?></td>
                <td class="qty"><?php echo $damqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['dam']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($damqty[$j]) * $product_prices['dam']);
                                            $Infrastructure['Security Solution']['dam'] = intval($damqty[$j]) * $product_prices['dam'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["dam"]] = $damqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
        if (isset($sor[$j])) {
        ?>
            <tr>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo "SOR"; ?></td>
                <td class="qty"><?php echo $sorqty[$j] . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices['sor']); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(intval($sorqty[$j]) * $product_prices['sor']);
                                            $Infrastructure['Security Solution']['sor'] = intval($sorqty[$j]) * $product_prices['sor'];
                                            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["sor"]] = $sorqty[$j]; ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
    <?php }
    }
    ?>

    <tr>
        <th class="except" id="sr"><?php $f = "A." . $no = $no + 1;
                                    echo "A." . $no; ?></th>
        <th class="except" id="comp">Managed Services</th>
        <th class="except" id="unit">Unit</th>
        <th class="unshareable except" id="cost">Cost/Unit</th>
        <th class="unshareable except" id='disc-head'>Discount %</th>
        <th class="unshareable except" id="mrc">Monthly Cost</th>
        <th class="unshareable except" id='otc'>OTC</th>
    </tr>
    <?php

    // print_r($os_data);


    if (isset($rep_link_mgmt[$j])) {
        $replication_mgmt = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
    } else {
        $replication_mgmt = 0;
    }
    if (isset($osmgmt[$j]) && !empty($os[$j])) {
        for ($i = 0; $i < count($os[$j]); $i++) {
            if (preg_match("/Windows/", $os[$j][$i])) {
                $os_mgmt_name[] = "Windows";
                $os_mgmt_qty["Windows"][] = $vmqty[$j][$i];
                $mgmtINT["Windows"] = 'win_os_mg';
                // echo $vmqty[$j][$i];
            }
            if (preg_match("/RHEL/", $os[$j][$i])) {
                $os_mgmt_name[] = "RHEL";
                $os_mgmt_qty["RHEL"][] = $vmqty[$j][$i];
                $mgmtINT["RHEL"] = 'rhel_os_mg';
            }
            if (preg_match("/SUSE/", $os[$j][$i])) {
                $os_mgmt_name[] = "SUSE";
                $os_mgmt_qty["SUSE"][] = $vmqty[$j][$i];
                $mgmtINT["SUSE"] = 'suse_os_mg';
            }
            if (preg_match("/UBUNTU/", $os[$j][$i])) {
                $os_mgmt_name[] = "UBUNTU";
                $os_mgmt_qty["UBUNTU"][] = $vmqty[$j][$i];
                $mgmtINT["UBUNTU"] = 'ubuntu_os_mg';
            }
            if (preg_match("/CENTOS/", $os[$j][$i])) {
                $os_mgmt_name[] = "CENTOS";
                $os_mgmt_qty["CENTOS"][] = $vmqty[$j][$i];
                $mgmtINT["CENTOS"] = 'centos_os_mg';
            }
        }
        $os_mgmt_data = (!empty($os_mgmt_name)) ? array_values(array_unique($os_mgmt_name)) : null;
    }

    if (isset($dbmgmt[$j]) && !empty($db[$j])) {
        for ($i = 0; $i < count($db[$j]); $i++) {
            if (preg_match("/MS SQL/", $db[$j][$i])) {
                $db_mgmt_name[] = "MS SQL";
                $db_mgmt_qty["MS SQL"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["MS SQL"] = 'ms_db_mg';
            }
            if (preg_match("/MY SQL/", $db[$j][$i])) {
                $db_mgmt_name[] = "MY SQL";
                $db_mgmt_qty["MY SQL"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["MY SQL"] = 'my_db_mg';
            }
            if (preg_match("/Postgre/", $db[$j][$i])) {
                $db_mgmt_name[] = "Postgre";
                $db_mgmt_qty["Postgre"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["Postgre"] = 'pg_db_mg';
            }
            if (preg_match("/Oracle/", $db[$j][$i])) {
                $db_mgmt_name["Oracle"] = "Oracle";
                $db_mgmt_qty["Oracle"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["Oracle"] = 'orc_db_mg';
            }
            if (preg_match("/Mongo/", $db[$j][$i])) {
                $db_mgmt_name["Mongo"] = "Mongo";
                $db_mgmt_qty["Mongo"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["Mongo"] = 'mong_db_mg';
            }
            if (preg_match("/Maria/", $db[$j][$i])) {
                $db_mgmt_name["Maria"] = "Maria";
                $db_mgmt_qty["Maria"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                $mgmtINT["Maria"] = 'mar_db_mg';
            }
        }
        $db_mgmt_data = (!empty($db_mgmt_name)) ? array_values(array_unique($db_mgmt_name)) : null;
    }
    // print_r($db_mgmt_data);


    if (isset($strgmgmt[$j])) {
        $strgmgmtqty = array(
            ($strgunit03[$j] == "TB") ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]),
            ($strgunit1[$j] == "TB") ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]),
            ($strgunit3[$j] == "TB") ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]),
            ($strgunit5[$j] == "TB") ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]),
            ($strgunit8[$j] == "TB") ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]),
            ($strgunit10[$j] == "TB") ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j])
        );
    } else $strgmgmtqty = 0;


    // if (isset($dbmgmt[$j]) && !empty($db)) {
    //     foreach (array_keys($db[$j], 'NA') as $key) {
    //         unset($db[$j][$key]);
    //     }
    //     $dbmgmtqty = count($db[$j]);
    // } else $dbmgmtqty = 0;




    if (isset($backup_mgmt[$j]) && !empty($backupstrg[$j])) {
        $backmgmtqty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
    } else $backmgmtqty = 0;

    if (isset($lbmgmt[$j]) && !empty($lbqty[$j])) {
        $lbmgmtqty = $lbqty[$j];
    } else $lbmgmtqty = 0;

    if (isset($fvmgmt[$j])) {
        if (!empty($intfvqty[$j])) {
            $fvmgmtqty = intval($intfvqty[$j]) + intval($extfvqty[$j]);
        } else {
            $fvmgmtqty = intval($extfvqty[$j]);
        }
    } else $fvmgmtqty = 0;

    if (isset($wafmgmt[$j]) && !empty($wafqty[$j])) {
        $wafmgmtqty = $wafqty[$j];
    } else $wafmgmtqty = 0;

    if (!empty($bandwidth[$j])) {
        $bandwidth_monitoring = 1;
    } else $bandwidth_monitoring = 0;

    if (isset($_POST['emagic'][$j])) {
        $emagicqty = array(intval($lbmgmtqty), intval($fvmgmtqty), intval($wafmgmtqty), (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0, intval($ccptqty[$j]), $bandwidth_monitoring);
    }
    // print_r($emagicqty);

    $managed_services = array(
        "st_mg" => intval($strgmgmtqty) * intval($product_prices['st_mg']),
        "back_mg" => intval($backmgmtqty) * intval($product_prices['back_mg']),
        "rep_mgmt" => $replication_mgmt * $product_prices['rep_mgmt'],
        "dr_drill" => intval($drill_qty[$j]) * $product_prices['dr_drill'],
        "lb_mgmt" => intval($lbmgmtqty) * intval($product_prices['lb_mg']),
        "fw_mgmt" => (isset($utm[$j])) ? $product_prices['utm_fv_mg'] * intval($fvmgmtqty) : $product_prices['fv_mg'] * intval($fvmgmtqty),
        "waf_mgmt" => intval($wafmgmtqty) * intval($product_prices['waf_mg']),
        "emagic" => (isset($_POST['emagic'][$j])) ? array_sum($emagicqty) * intval($product_prices['emagic']) : 0
    );
    if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
        for ($i = 0; $i < count($os_mgmt_data); $i++) {
            $managed_services[$mgmtINT[$os_mgmt_data[$i]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$os_mgmt_data[$i]]]);
        }
    }
    if (isset($dbmgmt[$j]) && !empty($db_mgmt_name)) {
        for ($i = 0; $i < count($db_mgmt_data); $i++) {
            $managed_services[$mgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$db_mgmt_data[$i]]]);
        }
    }

    $newInfra = array();
    foreach ($Infrastructure as $key => $val) {
        if (is_array($val)) {
            foreach ($val as $p) {
                array_push($newInfra, $p);
            }
        } else {
            array_push($newInfra, $val);
        }
    }
    // print_r($newInfra)  ;

    $total[$j] = array(array_sum($newInfra), array_sum($managed_services));

    $period = $_POST['period'];
    if (empty($period[$j])) {
        $period[$j] = 1;
    }


    $push_total[$j]['infra'] = $newInfra;
    $push_total[$j]['service'] = $managed_services;


    ?>
    <tr>
        <td><?php echo "Services"; ?></td>
        <td class="final"><?php echo "One Time Infrastructure Setup"; ?></td>
        <td class="qty"><?php echo "One Time Cost"; ?></td>
        <td class="cost unshareable"><?= "--" ?></td>
        <td class="discount unshareable" id="disc"></td>
        <td class="unshareable"><?php "--"; ?></td>
        <td class="unshareable" id="final_OTC"><?= INR((array_sum($total[$j]) * 12) * 0.05);  ?></td>
    </tr>

    <?php
    if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
        for ($i = 0; $i < count($os_mgmt_data); $i++) {
    ?>
            <tr class='managed_services'>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $os_mgmt_data[$i] . " OS Managed Services"; ?></td>
                <td class="qty mng_qty"><?php echo   array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices[$mgmtINT[$os_mgmt_data[$i]]]); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$os_mgmt_data[$i]]]));
                                            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$mgmtINT[$os_mgmt_data[$i]]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]);
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }
    if (isset($dbmgmt[$j]) && !empty($db_mgmt_data)) {
        for ($i = 0; $i < count($db_mgmt_data); $i++) {
        ?>
            <tr class='managed_services'>
                <td><?php echo "Services"; ?></td>
                <td class="final"><?php echo $db_mgmt_data[$i] . " Database Managed Services (Up to 100 GB)"; ?></td>
                <td class="qty mng_qty"><?php echo   array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) . " NO"; ?></td>
                <td class="cost unshareable"><?php INR($product_prices[$mgmtINT[$db_mgmt_data[$i]]]); ?></td>
                <td class="discount unshareable" id="disc"></td>
                <td class="mrc unshareable"><?php INR(array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$db_mgmt_data[$i]]]));
                                            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$mgmtINT[$db_mgmt_data[$i]]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]);
                                            $managed_services[$mgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$db_mgmt_data[$i]]]);
                                            ?></td>
                <td class="unshareable" id="otc"><? ?></td>
            </tr>
        <?php }
    }
    if (isset($strgmgmt[$j])) {
        ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "Storage Management Per TB"; ?></td>
            <td class="qty mng_qty"><?php echo floor(array_sum($strgmgmtqty) / 1024) . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['st_mg']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR(floor(array_sum($strgmgmtqty) / 1024) * $managed_services['st_mg']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['st_mg']] = $strgmgmtqty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }
    if (isset($backup_mgmt[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "Backup Management - per Instance"; ?></td>
            <td class="qty mng_qty"><?php echo $backmgmtqty . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['back_mg']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['back_mg']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['back_mg']] = $backmgmtqty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }
    if (isset($rep_link_mgmt[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "Replication Service Management"; ?></td>
            <td class="qty mng_qty"><?php echo  $replication_mgmt . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['rep_mgmt']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['rep_mgmt']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['rep_mgmt']] = $replication_mgmt;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }

    if (isset($dr_drill[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "DR Drill Per Year"; ?></td>
            <td class="qty mng_qty"><?php echo  $drill_qty[$j] . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['dr_drill']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['dr_drill']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['dr_drill']] = $drill_qty[$j];
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }

    if (isset($lbmgmt[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "Load Balancer Management"; ?></td>
            <td class="qty mng_qty"><?php echo $lbmgmtqty . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['lb_mg']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['lb_mgmt']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['lb_mg']] = $lbmgmtqty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }
    if (isset($fvmgmt[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?= (isset($utm[$j])) ? "vUTM " : ""; ?>FireWall Management</td>
            <td class="qty mng_qty"><?php echo $fvmgmtqty . " NO"; ?></td>
            <td class="cost unshareable"><?php (isset($utm[$j])) ? INR($product_prices['utm_fv_mg']) : INR($product_prices['fv_mg']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['fw_mgmt']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['fv_mg']] = $fvmgmtqty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }
    if (isset($wafmgmt[$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "Web Application Firewall Management"; ?></td>
            <td class="qty mng_qty"><?php echo $wafmgmtqty . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['waf_mg']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR($managed_services['waf_mgmt']);
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['waf_mg']] = $wafmgmtqty;
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php }

    if (isset($_POST['emagic'][$j])) {
    ?>
        <tr class='managed_services'>
            <td><?php echo "Services"; ?></td>
            <td class="final"><?php echo "eMagic Monitoring " . $emagic_type[$j]; ?>
                <i class='fa fa-info-circle  float-right' title="
Load Balancer - <?= $emagicqty[0] ?> 
Internal & External Firewall - <?= $emagicqty[1] ?> 
Web App Firewall - <?= $emagicqty[2] ?> 
VM Quantity - <?= $emagicqty[3] ?> 
Cross Connect & Port Termination - <?= $emagicqty[4] ?>  
Bandwidth Monitoring - <?= $emagicqty[5] ?>"></i>
            </td>
            <td class="qty mng_qty"><?php echo array_sum($emagicqty) . " NO"; ?></td>
            <td class="cost unshareable"><?php INR($product_prices['emagic']); ?></td>
            <td class="discount unshareable" id="disc"></td>
            <td class="mrc unshareable"><?php INR(array_sum($emagicqty) * intval($product_prices['emagic']));
                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['emagic']] = array_sum($emagicqty);
                                        ?></td>
            <td class="unshareable" id="otc"><? ?></td>
        </tr>
    <?php

        // $managed_services["emagic"] = ; 

    } ?>
    <tr>
        <th style="background: rgba(212,212,212,1); " class="except unshareable"> Sr No . </th>
        <th class="final colspan except unshareable" colspan="4" style="background: rgba(212,212,212,1); "> Description </th>
        <th style="background: rgba(212,212,212,1);" class='colspan except unshareable' colspan="2">MRC</th>
    </tr>
    <?php
    $m = 0;
    if (!empty($Infrastructure)) { ?>
        <tr>
            <td class="unshareable"><?= $m + 1 ?></td>
            <td class='colspan  final unshareable' colspan="4"> Infrastructure [ <?= $a . " " ?><?= $b . " " ?><?= $c . " " ?><?= $d . " " ?><?= $e . " " ?>]</td>
            <td class='colspan unshareable ' colspan="2"><?php INR(array_sum($newInfra));
                                                            ?></td>
        </tr>
    <?php } ?>
    <tr>
        <td class="unshareable"><?= $m = $m + 1 ?></td>
        <td class='colspan final unshareable' colspan="4"> Managed Services [ <?= $f ?>] </td>
        <td class='colspan unshareable' colspan="2"><?php INR(array_sum($managed_services));
                                                    ?></td>
    </tr>

    <tr>
        <td class="unshareable"><?= $m = $m + 1 ?></td>
        <td class='colspan final unshareable' colspan="4"> One Time Cost </td>
        <td class='colspan unshareable' colspan="2"><?= INR((array_sum($total[$j]) * 12) * 0.05);  ?></td>
    </tr>
    <!-- <tr>
                        <td> 4 </td>
                        <td class='colspan final' colspan="4"> Contingency Buffer - Annual cost of Project </td>
                        <td class='colspan' colspan="2"><?= "5 %"  ?></td>
                    </tr> -->

    <tr>
        <th class="final unshareable" style="background-color: rgb(255, 207, 203);"> </th>
        <th class="final colspan except unshareable" colspan="4" style="background-color: rgb(255, 207, 203);"> Total [ Monthly ]</th>

        <th class='colspan except unshareable' colspan="2" style="background-color: rgb(255, 207, 203);" id="total_monthly"><?php INR(array_sum($total[$j]));
                                                                                                                            array_push($MothlyTotal, array_sum($total[$j]));
                                                                                                                            ?></th>
    </tr>

    <tr>
        <th class="final unshareable" style="background-color: rgb(255, 226, 182);"> </th>
        <th class="final colspan except unshareable" colspan="4" style="background-color: rgb(255, 226, 182);"> Total [ For <?= $period[$j] ?> Months ]</th>

        <th class='colspan except unshareable' colspan="2" style="background-color: rgb(255, 226, 182);"><?php INR(array_sum($total[$j]) * intval($period[$j]));
                                                                                                            array_push($ProjectTotal, array_sum($total[$j]) * intval($period[$j]));
                                                                                                            ?></th>
    </tr>



<?php
    $I_M[$j] =  $Infrastructure;
    $I_M[$j]['Managed Services'] = $managed_services;
}
// print_r ($ProjectTotal);
?>