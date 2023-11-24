<?php

$Sku_Data = array();
require_once "../controller/calculations.php";
// print_r($_DiscountedData);
foreach ($estmtname as $j => $_Key) {
    $no = 0;
    $Infrastructure = array();
    $antiVirus = false;
    $product_prices = priceTbl($region[$j])["product_prices"];
    $product_sku = priceTbl($region[$j])["product_sku"];
    // echo "<pre>";print_r($product_prices);echo "</pre>";
?>
    <table class='final-tbl table except' id="final-tbl<?= $j ?>">
        <tr hidden></tr>
        <tr hidden></tr>
        <tr hidden></tr>
        <tr hidden></tr>
        <tr hidden></tr>
        <tr hidden></tr>
        <tr>
            <th class='Head colspan except noExl' colspan='8' style='font-size: 30px;'>
                <div class="row except d-flex justify-content-between">
                    <div class="except"></div>
                    <div class="except">
                        <?= $estmtname[$j] ?>
                    </div>
                    <div class="col-2 except input-group">
                        <input type="number" min=0 max=100 name="" class="form-control col-md-10 " id="DiscountPercetage_<?= $j ?>" disabled aria-describedby="perce_<?= $j ?>" value="<?= floatval($_DiscountedData[$j]["percentage"]) * 100 ?>">
                        <button class="input-group-text form-control bg-light col-2 p-0 d-flex justify-content-center " id="perce_<?= $j ?>" style="cursor : pointer"> % </button>
                    </div>
                </div>
            </th>

        </tr>
        <?php
        $Class = "Infrastructure_{$j}";
        if (!empty($vmqty[$j][0])) {
            $no + 1;
            $a = 'A.' . $no . ' +';

            tblHead('eNlight Cloud Hosting');

            $vm_total = array();
            $vcore_data = array();
            foreach ($vmqty[$j] as $i => $val) {
                // $cost_rows = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_pack` WHERE `sr_no` = '{$instance[$j][$i]}' AND `region` =  '{$region[$j][$i]}' "));
                $compute[$j][$i] = "vCores {$cpu[$j][$i]} | RAM  {$ram[$j][$i]} GB | Disk - ".preg_replace("/Object Storage|IOPS per GB| /","",getProdName($diskType[$j][$i])) ." IOPS/GB -  {$disk[$j][$i]} GB";
                // $price = ($instance[$j][$i] == 'Flexi') ?
                //     (($product_prices['cpu'] * intval($cpu[$j][$i])) +
                //         ($product_prices['ram'] * intval($ram[$j][$i])) +
                //         ($product_prices['iops_1'] * intval($disk[$j][$i])))
                //     : $cost_rows['price'];

                $price = (($product_prices['vcpu_static'] * intval($cpu[$j][$i])) +
                    ($product_prices['vram_static'] * intval($ram[$j][$i])) +
                    ($product_prices[$diskType[$j][$i]] * intval($disk[$j][$i])));

                $vCore[$j][$i] = $cpu[$j][$i];
                $vRam[$j][$i] = $ram[$j][$i];
                $vDisk[$j][$i] = $disk[$j][$i];

                array_push($vcore_data, $vCore[$j][$i]);
                if (!empty($av_type[$j][$i])) {
                    $av = true;
                } else {
                }
                $Service = !empty($vmname[$j][$i]) ? ($vmname[$j][$i]) : ('Virtual Machine') . ' - ' . $region[$j][$i] . ' - ' . $sector[$j][$i] . ' ' . $state[$j][$i];

                $ProdName = $compute[$j][$i] . ' | OS : ' . getProdName($os[$j][$i]) . ' | DB : ' . getProdName($db[$j][$i]);

                $DiscountingId = "VM{$i}_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow($Service, $ProdName, $vmqty[$j][$i], $price);

                $Infrastructure['VM' . $i] = GroupPrice()['VM' . $i];
                $Infrastructure['VM' . $i][$vmname[$j][$i]] = intval($vmqty[$j][$i]) * $price;
            }
        }
        if (!empty($vmqty[$j][0]) || !empty($agenttype[$j]) || isset($drm_tool[$j])) {
            $b = 'A.' . $no = $no + 1;
            $b .= ' +';
            tblHead("Software Licenses");

            $os_data = (!empty($os[$j])) ? array_values(array_unique($os[$j])) : null;
            $db_data = (!empty($db[$j])) ? array_values(array_unique($db[$j])) : null;
            foreach ($vmqty[$j] as $i => $val) {

                foreach ($osArr as $k => $int) {
                    if ($os_data[$i] == $int) {
                        $DiscountingId = "{$int}_{$j}";
                        $cal = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_os_calculation` WHERE `product_int` = '{$os_data[$i]}'"));
                        list($variableName, $value) = explode(' = ', $cal['calculation']);
                        $$variableName = $value;
                        $totalDisc[$Class][$DiscountingId] = tblRow("Database", getProdName($os_data[$i]), get_os($os_data[$i], $core_devide), $product_prices[$int], " Lic.");
                    }
                }

                // if ($os_data[$i] == 'Windows Standard Edition') {
                //     // echo array_search($os,$EstmDATA);
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($sw_name = $os_data[$i], 2), $product_prices['win_se'], "Lic.");
                // }

                // if ($os_data[$i] == 'Windows Datacenter Edition') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i], 2), $product_prices['win_dc'], "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : RHEL') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), $product_prices['rhel'], "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : UBUNTU') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : CENTOS') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : SUSE') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), $product_prices['suse'], "Lic.");
                // }
            }

            foreach ($vmqty[$j] as $i => $val) {
                foreach ($dbArr as $k => $int) {
                    // echo $product_prices[$int] . "\n";

                    if ($db_data[$i] == $int) {
                        $DiscountingId = "{$int}_{$j}";
                        $cal = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_os_calculation` WHERE `product_int` = '{$db_data[$i]}'"));
                        list($variableName, $value) = explode(' = ', $cal['calculation']);
                        $$variableName = $value;
                        $totalDisc[$Class][$DiscountingId] = tblRow("Database", getProdName($db_data[$i]), get_DB($db_data[$i], $core_devide), $product_prices[$int], " Lic.");
                    }
                }
                // if ($db_data[$i] == 'MS SQL Enterprise') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), $product_prices['ms_ent'], " Lic.");
                // }
                // if ($db_data[$i] == 'MS SQL WEB') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), $product_prices['ms_web'], " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Community') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), $product_prices['my_com'], " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Standard') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), $product_prices['my_std'], " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Enterprise') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), $product_prices['my_ent'], " Lic.");
                // }
                // if ($db_data[$i] == 'Postgre SQL Enterprise') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), $product_prices['post_ent'], " Lic.");
                // }
                // if ($db_data[$i] == 'Postgre SQL Community') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), $product_prices['post_com'], " Lic.");
                // }
                // if ($db_data[$i] == 'Oracle Database Standard') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 8), $product_prices['orc_std'], " Lic.");
                // }
                // if ($db_data[$i] == 'Oracle Database Enterprise') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), $product_prices['orc_ent'], " Lic.");
                // }
                // if ($db_data[$i] == 'Mongo DB Community') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), $product_prices['mong_com'], " Lic.");
                // }
                // if ($db_data[$i] == 'Maria DB Community') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), $product_prices['mar_com'], " Lic.");
                // }
                // if ($db_data[$i] == 'Other') {
                //     $totalDisc[$Class][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), $product_prices['mar_com'], " Lic.");
                // }
            }
            $Sku_Data[$estmtname[$j]] = SkuList();

            if (!empty($agenttype[$j])) {
                if ($agenttype[$j] == 'All VM') {
                    $agentqty[$j] = $vmqty[$j];
                } elseif ($agenttype[$j] == 'DB VM') {
                    foreach ($vmqty[$j] as $i => $val) {
                        if ($db[$i] != 'NA') {
                            $agentqty[$j][$i] = $vmqty[$j][$i];
                        }
                    }
                } elseif ($agenttype[$j] == 'Customized') {
                    $agentqty[$j][$i] = $EstmDATA['ageqty'][$j];
                }
                $DiscountingId = "backup_age_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow("Software", 'Backup Agent', array_sum($agentqty[$j]), $product_prices['veeam']);

                $Infrastructure['Software']['veeam'] = array_sum($agentqty[$j]) * $product_prices['veeam'];
                $Sku_Data[$estmtname[$j]]['Software'][$product_sku['veeam']] = [
                    "qty" => array_sum($agentqty[$j]),
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($agentqty[$j]), $product_prices['veeam']):0
                ];
            }
            if (isset($drm_tool[$j])) {
                $drm_tool_qty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
                $DiscountingId = "drm_tool_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow("Software", 'DRM Tool', $drm_tool_qty, $product_prices[$drm_type[$j]]);
                $Infrastructure['Software']['DRM Tool'] = $drm_tool_qty * $product_prices[$drm_type[$j]];
                $Sku_Data[$estmtname[$j]]['Software'][$product_sku[$drm_type[$j]]] = [
                    "qty" => $drm_tool_qty,
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($drm_tool_qty, $product_prices[$drm_type[$j]]):0
                ];
            }
        }
        if (isset($iops1[$j]) || isset($iops3[$j]) || isset($iops5[$j]) || isset($iops8[$j]) || isset($iops10[$j]) || !empty($backupstrg[$j]) || isset($tape_lib[$j]) || isset($tape_cart[$j]) || isset($fire_cab[$j])) {
            $c = 'A.' . $no = $no + 1;
            $c .= ' +';
            tblHead("Storage and Backup Services");

            // if (isset($iops03[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit03[$j], 300), $iops03qty[$j], get_strg($strgunit03[$j], $product_prices['iops_03']), $strgunit03[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit03[$j], 300)] = get_strg($strgunit03[$j], $product_prices['iops_03']) * $iops03qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_03']] = ($strgunit03[$j] == 'TB') ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]);
            // }
            // if (isset($iops1[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit1[$j], 1000), $iops1qty[$j], get_strg($strgunit1[$j], $product_prices['iops_1']), $strgunit1[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit1[$j], 1000)] = get_strg($strgunit1[$j], $product_prices['iops_1']) * $iops1qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_1']] = ($strgunit1[$j] == 'TB') ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]);
            // }

            // if (isset($iops3[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit3[$j], 3000), $iops3qty[$j], get_strg($strgunit3[$j], $product_prices['iops_3']), $strgunit3[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit3[$j], 3000)] = get_strg($strgunit3[$j], $product_prices['iops_3']) * $iops3qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_3']] = ($strgunit3[$j] == 'TB') ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]);
            // }

            // if (isset($iops5[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit5[$j], 5000), $iops5qty[$j], get_strg($strgunit5[$j], $product_prices['iops_5']), $strgunit5[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit5[$j], 5000)] = get_strg($strgunit5[$j], $product_prices['iops_5']) * $iops5qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_5']] = ($strgunit5[$j] == 'TB') ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]);
            // }

            // if (isset($iops8[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit8[$j], 8000), $iops8qty[$j], get_strg($strgunit8[$j], $product_prices['iops_8']), $strgunit8[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit8[$j], 8000)] = get_strg($strgunit8[$j], $product_prices['iops_8']) * $iops8qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_8']] = ($strgunit8[$j] == 'TB') ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]);
            // }
            // if (isset($iops10[$j])) {
            //     $totalDisc[$Class][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit10[$j], 10000), $iops10qty[$j], get_strg($strgunit10[$j], $product_prices['iops_10']), $strgunit10[$j]);
            //     $Infrastructure['Storage Solution'][strg_iops($strgunit10[$j], 10000)] = get_strg($strgunit10[$j], $product_prices['iops_10']) * $iops10qty[$j];
            //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_10']] = ($strgunit10[$j] == 'TB') ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j]);
            // }

            foreach ($strgArr as $int => $strgName) {
                if (isset($EstmDATA[$int])) {
                    $DiscountingId = $int . "_" . $j;
                    $totalDisc[$Class][$DiscountingId] = tblRow(
                        "Additional Storage",

                        $strgName,

                        intval($EstmDATA[$int . "_qty"][$j]),

                        get_strg(
                            $EstmDATA[$int . "_unit"][$j],
                            $product_prices[$int]
                        ),

                        $EstmDATA[$int . "_unit"][$j]
                    );

                    $Infrastructure['Storage Solution'][$int] = get_strg($EstmDATA[$int . "_unit"][$j], $product_prices[$int]) * intval($EstmDATA[$int . "_qty"][$j]);
                    $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku[$int]] = [
                        "qty" => ($EstmDATA[$int . "_unit"][$j] == 'TB') ? intval(intval($EstmDATA[$int . "_qty"][$j])) * 1024 : intval(intval($EstmDATA[$int . "_qty"][$j])),
                        "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(intval($EstmDATA[$int . "_qty"][$j]), get_strg($EstmDATA[$int . "_unit"][$j], $product_prices[$int])):0
                    ];
                }
            }

            if (!empty($backupstrg[$j])) {
                // echo $backupunit[$j];
                $DiscountingId = "backup_gb_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow("Backup Storage", getProdName($backupunit[$j]), $backupstrg[$j], get_strg('GB', $product_prices[$backupunit[$j]]), "GB");
                $Infrastructure['Storage Solution']['Backup Space'] = get_strg('GB', $product_prices[$backupunit[$j]]) * $backupstrg[$j];
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['backup_gb']] = [
                    "qty" => ($backupunit[$j] == 'TB') ? intval($backupstrg[$j]) * 1024 : intval($backupstrg[$j]),
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($backupstrg[$j], get_strg('GB', $product_prices[$backupunit[$j]])):0
                ];
            }
            if (!empty($arc_strg[$j])) {
                $DiscountingId = "arc_strg_gb_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow("Archival Storage", 'Archival Space', $arc_strg[$j], get_strg($archival_unit[$j], $product_prices['arc_strg']), $archival_unit[$j]);
                $Infrastructure['Storage Solution']['Archival Space'] = get_strg($archival_unit[$j], $product_prices['arc_strg'], $arc_strg[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['arc_strg']] = [
                    "qty" => ($archival_unit[$j] == 'TB') ? intval($arc_strg[$j]) * 1024 : intval($arc_strg[$j]),
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($arc_strg[$j], get_strg($archival_unit[$j], $product_prices['arc_strg'])):0
                ];
            }
            if (isset($tape_lib[$j])) {
                $DiscountingId = "tl_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Tape Library', $tlqty[$j], $product_prices['tl']);
                $Infrastructure['Storage Solution']['Offline Backup Solution Tape Library'] = intval($tlqty[$j]) * $product_prices['tl'];
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tl']] = [
                    "qty" => $tlqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($tlqty[$j], $product_prices['tl']):0
                ];
            }

            if (isset($tape_cart[$j])) {
                $DiscountingId = "tc_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Tape Cartridge', $tcqty[$j], $product_prices['tc']);
                $Infrastructure['Storage Solution']['Offline Backup Solution Tape Cartridge'] = intval($tcqty[$j]) * $product_prices['tc'];
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tc']] = [
                    "qty" => $tcqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($tcqty[$j], $product_prices['tc']):0
                ];
            }

            if (isset($fire_cab[$j])) {
                $DiscountingId = "fc_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Fireproof cabinate', $fcqty[$j], $product_prices['fc']);
                $Infrastructure['Storage Solution']['Offline Backup Solution Fireproof cabinate'] = intval($fcqty[$j]) * $product_prices['fc'];
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['fc']] = [
                    "qty" => $fcqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($fcqty[$j], $product_prices['fc']):0
                ];
            }
        }
        if (isset($rack[$j]) || isset($rated[$j]) || isset($metered[$j]) || isset($cage[$j]) || isset($bio[$j]) || isset($pdu[$j]) || isset($cctv[$j])) {
            $c = 'A.' . $no = $no + 1;
            $c .= ' +';
            tblHead("Colocation Services");
            if (isset($rack[$j])) {
                $DiscountingId = "rack_space_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Rack Space', $rackqty[$j], $product_prices['rack_space'], "U");
                $Infrastructure['Colocation']['Rack Space'] = ($rackqty[$j] * $product_prices['rack_space']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rack_space']] = ($rackqty[$j]);
            }
            if (isset($metered[$j])) {
                $DiscountingId = "metered_power_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Metered Power', $meteredqty[$j], $product_prices['metered_power'], "Power Unit");
                $Infrastructure['Colocation']['metered_power'] = ($meteredqty[$j] * $product_prices['metered_power']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['metered_power']] = ($meteredqty[$j]);
            }
            if (isset($rated[$j])) {
                $DiscountingId = "rated_power_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Rated Power', $ratedqty[$j], $product_prices['rated_power'], "Power Unit");
                $Infrastructure['Colocation']['rated_power'] = ($ratedqty[$j] * $product_prices['rated_power']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rated_power']] = ($ratedqty[$j]);
            }

            if (isset($cage[$j])) {
                $DiscountingId = "cage_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Cage For RACK', $cageqty[$j], $product_prices['cage']);
                $Infrastructure['Colocation']['cage'] = ($cageqty[$j] * $product_prices['cage']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cage']] = ($cageqty[$j]);
            }
            if (isset($bio[$j])) {
                $DiscountingId = "bio_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Bio-matrix for Cage', $bioqty[$j], $product_prices['bio']);
                $Infrastructure['Colocation']['bio'] = ($bioqty[$j] * $product_prices['bio']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['bio']] = ($bioqty[$j]);
            }
            if (isset($pdu[$j])) {
                $DiscountingId = "pdu_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'PDU Meter', $pduqty[$j], $product_prices['pdu']);
                $Infrastructure['Colocation']['pdu'] = ($pduqty[$j] * $product_prices['pdu']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['pdu']] = ($pduqty[$j]);
            }

            if (isset($cctv[$j])) {
                $DiscountingId = "cctv_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'CCTV Camera fo Rack', $cctvqty[$j], $product_prices['cctv']);
                $Infrastructure['Colocation']['cctv'] = ($cctvqty[$j] * $product_prices['cctv']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cctv']] = ($cctvqty[$j]);
            }
        }
        if ($ip_private[$j] != NULL) {
            $private_data[$j] = array_unique($ip_private[$j]);
        }
        if ($ip_public[$j] != NULL) {
            $public_data[$j] = array_unique($ip_public[$j]);
        }

        if (isset($ip_public[$j]) || isset($ip_private[$j]) || !empty($bandwidth[$j]) || !empty($ccptqty[$j]) || !empty($vpn[$j]) || !empty($lb[$j]) || !empty($rep_link_type[$j])) {
            $d = 'A.' . $no = $no + 1;
            $d .= ' +';
            tblHead("Network and Connectivity Services");
            foreach ($vmqty[$j] as $i => $val) {
                if (isset($public_data[$j][$i])) {
                    $DiscountingId = "ip_{$j}";
                    $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Public IP Address : ' . $publicip_vers[$j][$i], array_sum($publicip_qty[$j]), $product_prices['ip']);
                    $Infrastructure['Network Solution']['ip'] = array_sum($publicip_qty[$j]) * $product_prices['ip'];
                    $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ip']] = [
                        "qty" => array_sum($publicip_qty[$j]),
                        "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($publicip_qty[$j]), $product_prices['ip']):0
                    ];
                }

                // if (isset($private_data[$j][$i])) {

                //     $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Private IP Address : ' . $privateip_vers[$j][$i], array_sum($privateip_qty[$j]), 0);
                //     $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['private_ip']] = array_sum($privateip_qty[$j]);
                // }
            }
            if (!empty($bandwidth[$j])) {
                $bandInt = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? 'speed_band' : 'volume_band';
                $bandUnit = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? ' Mbps' : ' GB';
                $DiscountingId = "{$bandInt}_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', $bandwidthType[$j], $bandwidth[$j], $product_prices[$bandInt], $bandUnit);
                $Infrastructure['Network Solution']['bandwidth'] = intval($product_prices[$bandInt]) * intval($bandwidth[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku[$bandInt]] = [
                    "qty" => $bandwidth[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($bandwidth[$j], $product_prices[$bandInt]):0
                ];
            }
            if (!empty($ccptqty[$j])) {
                $DiscountingId = "ccpt_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', "Cross Connect and Port Termination", $ccptqty[$j], $product_prices['cross_connect']);
                $Infrastructure['Network Solution']['ccpt'] = intval($product_prices['cross_connect']) * intval($ccptqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['cross_connect']] = [
                    "qty" => $ccptqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($ccptqty[$j], $product_prices["cross_connect"]):0
                ];
            }

            if (isset($rep_link[$j])) {
                $DiscountingId = "{$rep_link_type[$j]}_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', getProdName($rep_link_type[$j]) . ' Replication Link', $rep_link_qty[$j], get_Price($rep_link_type[$j]), "Mbps");
                $Infrastructure['Network Solution']['rep_link'] = intval($rep_link_qty[$j]) * get_Price($rep_link_type[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution']['CNPP000000000000'] = [
                    "qty" => $rep_link_qty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($rep_link_qty[$j], get_Price($rep_link_type[$j])):0
                ];
            }

            if (!empty($ipsec[$j])) {
                $DiscountingId = "ipsec_vpn_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Virtual Private Network (VPN) : IPSEC', $ipsecqty[$j], $product_prices['ipsec_vpn']);
                $Infrastructure['Network Solution']['ipsec_vpn'] = intval($ipsecqty[$j]) * $product_prices['ipsec_vpn'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ipsec_vpn']] = [
                    "qty" => $ipsecqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($ipsecqty[$j], $product_prices['ipsec_vpn']):0
                ];
            }

            if (!empty($sslvpn[$j])) {
                $DiscountingId = "ssl_vpn_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Virtual Private Network (VPN) : SSL', $sslvpnqty[$j], $product_prices['ssl_vpn']);
                $Infrastructure['Network Solution']['sslvpn'] = intval($sslvpnqty[$j]) * $product_prices['ssl_vpn'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ssl_vpn']] = [
                    "qty" => $sslvpnqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($sslvpnqty[$j], $product_prices['ssl_vpn']):0
                ];
            }

            if (!empty($lb[$j])) {
                $DiscountingId = "{$lb[$j]}_{$j}";
                $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'Load Balancer', $lbqty[$j], get_Price($lb[$j]));
                $Infrastructure['Network Solution']['lb'] = get_Price($lb[$j]) * intval($lbqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku[$lb[$j]]] = [
                    "qty" => $lbqty[$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($lbqty[$j], get_Price($lb[$j])):0
                ];
            }
        }

        if (!empty($vmqty[$j])) {
            $av_count = array();
            foreach ($vmqty[$j] as $i => $val) {
                if (!empty($av_type[$j][$i])) {
                    // $av_type[ $j ][ $key ] = $val;
                    $newAV = $av_type[$j][$i];
                    // echo $vmqty[ $j ][ $i ];
                    array_push($av_count, $vmqty[$j][$i]);
                } else {
                    unset($av_type[$j][$i]);
                }
            }
        }
        $e = 'A.' . $no = $no + 1;
        tblHead('Security Solution');

        if (!empty($newAV)) {
            // $avPrice = (preg_match('/HIPS/', $newAV)) ? 1200 : 300;
            $DiscountingId = "av_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow('Services', getProdName($newAV), array_sum($av_count), $product_prices[$newAV]);
            $Infrastructure['Security Solution']['av'] = $product_prices[$newAV] * array_sum($av_count);
            $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku[$newAV]] = [
                "qty" => array_sum($av_count),
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($av_count), $product_prices[$newAV]):0
            ];
        }
        //             if (isset($ext_firewall[$j])) {
        //                 $throughput = preg_split('/:/', $efv_throughput[$j]);
        //                 $efvName = ((isset($utm[$j])) ? ('vUTM ') : ('')) . "External Firewall - {$throughput[1]} Throughput";

        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', $efvName, $extfvqty[$j], get_Price($efv_throughput[$j]));

        //                 $Infrastructure['Security Solution']['efw'] = intval($extfvqty[$j]) * get_Price($efv_throughput[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($efv_throughput[$j], 'sku_code')] = $extfvqty[$j];
        //             }
        //             if (isset($int_fv[$j])) {
        //                 $throughput = preg_split('/:/', $ifv_throughput[$j]);
        //                 $ifvName = "Internal Firewall - {$throughput[1]} Throughput";

        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', $ifvName, $intfvqty[$j], get_Price($ifv_throughput[$j]));
        //                 $Infrastructure['Security Solution']['ifw'] = intval($intfvqty[$j]) * get_Price($ifv_throughput[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ifv_throughput[$j], 'sku_code')] = $intfvqty[$j];
        //             }
        //             if (isset($ddos[$j])) {
        //                 // $ddosName = "DDoS Mitigation up to 1 Gbps Mitigation";
        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', getProdName($ddos_throughput[$j]), 1, get_Price($ddos_throughput[$j]));
        //                 $Infrastructure['Security Solution']['ddos'] = intval(1) * get_Price($ddos_throughput[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ddos_throughput[$j], 'sku_code')] = 1;
        //             }
        //             if (isset($waf[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', getProdName($waf_name[$j]), $wafqty[$j], get_Price($waf_name[$j]));
        //                 $Infrastructure['Security Solution']['waf'] = intval($wafqty[$j]) * get_Price($waf_name[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($waf_name[$j], 'sku_code')] = $wafqty[$j];
        //             }
        //             if (isset($tfa[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', "Two Factor Authentication", $tfaqty[$j], $product_prices['tfa']);
        //                 $Infrastructure['Security Solution']['tfa'] = intval($tfaqty[$j]) * $product_prices['tfa'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['tfa']] = $tfaqty[$j][1];
        //             }
        //             if (isset($sslcert[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow('Services', 'SSL Certificate : ' . $ssl[$j], $sslqty[$j], get_Price($ssl[$j]));
        //                 $Infrastructure['Security Solution']['ssl'] = get_Price($ssl[$j]) * intval($sslqty[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ssl[$j], 'sku_code')] = $sslqty[$j];
        //             }
        //             if (isset($siem[$j])) {
        //                 $siemqty =
        //                     array(
        //                         (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
        //                         intval($intfvqty[$j]) + intval($extfvqty[$j]),
        //                         intval($wafqty[$j]),
        //                         intval($lbqty[$j]),
        //                         ($hsm[$j] && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : (0)
        //                     );
        //                 $info = "<i class='fa fa-info-circle  float-right' title='
        // VM Quantity -  $siemqty[0]  
        // Internal & External Firewall -  $siemqty[1]  
        // Web App Firewall -  $siemqty[2]  
        // Load Balancer -  $siemqty[3]  
        // HSM -  $siemqty[4]'  ></i>";
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", "SIEM " . $info, array_sum($siemqty), get_Price($siem_name[$j]));
        //                 $Infrastructure['Security Solution']['siem'] = array_sum($siemqty) * get_Price($siem_name[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($siem_name[$j], 'sku_code')] = array_sum($siemqty);
        //             }
        //             if (isset($pim[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", "PIM ", $pimqty[$j], $product_prices['pim']);
        //                 $Infrastructure['Security Solution']['pim'] = intval($pimqty[$j]) * $product_prices['pim'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['pim']] = $pimqty[$j];
        //             }
        //             if (isset($vtm[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", "VTM Scan ( {$vtmqty[$j]} )", 1, get_Price($vtmqty[$j]));
        //                 $Infrastructure['Security Solution']['vtm'] = get_Price($vtmqty[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vtmqty[$j], 'sku_code')] = 1;
        //             }
        //             if (isset($vapt[$j])) {
        //                 $Devices =
        //                     array(
        //                         (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
        //                         intval($intfvqty[$j]) + intval($extfvqty[$j]),
        //                         intval($wafqty[$j]),
        //                         intval($lbqty[$j]),
        //                         (isset($hsm[$j]) && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : 0
        //                     );

        //                 $info = "<i class='fa fa-info-circle  float-right' title='
        // VM Quantity -  $Devices[0]  
        // Internal & External Firewall -  $Devices[1]  
        // Web App Firewall -  $Devices[2]  
        // Load Balancer -  $Devices[3]  
        // HSM -  $Devices[4]'  ></i>";

        //                 $vaptName = getProdName($vapt_type[$j]) . ' : ' . $vapt_frequency[$j] . ' ' . $vaptqty[$j];
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", $vaptName . $info, array_sum($Devices), get_Price($vapt_type[$j]));
        //                 $Infrastructure['Security Solution']['vapt'] = array_sum($Devices) * get_Price($vapt_type[$j]);
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vapt_type[$j], 'sku_code')] = array_sum($Devices);
        //             }
        //             if (isset($hsm[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName($hsmtype[$j]), $hsmqty[$j], get_Price($hsmtype[$j]));

        //                 $Infrastructure['Security Solution']['hsm'] = intval($hsmqty[$j]) * $product_prices['hsm'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($hsmtype[$j], 'sku_code')] = $hsmqty[$j];
        //             }
        //             if (isset($iam[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName("iam"), $iamqty[$j], $product_prices['iam']);
        //                 $Infrastructure['Security Solution']['iam'] = intval($iamqty[$j]) * $product_prices['iam'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['iam']] = $iamqty[$j];
        //             }
        //             if (isset($dlp[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName("dlp"), $dlpqty[$j], $product_prices['dlp']);
        //                 $Infrastructure['Security Solution']['dlp'] = intval($dlpqty[$j]) * $product_prices['dlp'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dlp']] = $dlpqty[$j];
        //             }
        //             if (isset($edr[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName("edr"), $edrqty[$j], $product_prices['edr']);
        //                 $Infrastructure['Security Solution']['edr'] = intval($edrqty[$j]) * $product_prices['edr'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['edr']] = $edrqty[$j];
        //             }
        //             if (isset($dam[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName("dam"), $damqty[$j], $product_prices['dam']);
        //                 $Infrastructure['Security Solution']['dam'] = intval($damqty[$j]) * $product_prices['dam'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dam']] = $damqty[$j];
        //             }
        //             if (isset($sor[$j])) {
        //                 $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName("soar"), $sorqty[$j], $product_prices['sor']);
        //                 $Infrastructure['Security Solution']['sor'] = intval($sorqty[$j]) * $product_prices['sor'];
        //                 $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['sor']] = $sorqty[$j];
        //             }

        // $SecQuery = mysqli_query($con, "SELECT DISTINCT `sec_category` FROM `product_list` WHERE `primary_category` = 'sec';");
        // while ($Categ = mysqli_fetch_assoc($SecQuery)){
        //     $prodQuery = mysqli_query($con, "SELECT DISTINCT `prod_int`,`product` FROM `product_list` WHERE `sec_category` = '{$Categ['sec_category']}'");
        //     while($prod = mysqli_fetch_assoc($prodQuery)){
        //         print_r($prod);
        //         if(isset($EstmDATA[$Categ['sec_category']."_check"][$j])){
        //             $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName($EstmDATA[$prod['sec_category'].'_select'][$j]), $EstmDATA[$prod['sec_category'].'_select'][$j] , $product_prices[$prod['prod_int']]);
        //         }

        //     }

        // }
        $totalFirewalls = array();
        foreach ($secArr as $cat => $prod) {
            if (isset($EstmDATA[$cat . "_check"])) {
                $calQuery = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_calculation` WHERE `sec_cat_name` = '{$cat}'"));
                if (!empty($calQuery)) {
                    $itemsArr = explode(",", $calQuery["calculation"]);
                    // print_r($itemsArr);
                    $calculation = array();
                    foreach ($itemsArr as $item) {
                        if (preg_match("/vm/", $item)) {
                            $calculation[$item] = (!empty($$item[$j])) ? array_sum($$item[$j]) : 0;
                        } else {
                            $calculation[$item] = (!empty($EstmDATA[$item][$j])) ? $EstmDATA[$item][$j] : 0;
                        }
                    }
                    // print_r($calculation);
                    $EstmDATA[$cat . "_qty"][$j] = array_sum($calculation);
                }
                $DiscountingId = $cat . "_" . $j;
                $totalDisc[$Class][$DiscountingId] = tblRow(
                    "Services",

                    $secArr[$cat][($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]],

                    intval($EstmDATA[$cat . "_qty"][$j]),

                    $product_prices[($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]]
                );

                // echo $cat ." => " . $prod[($EstmDATA[$cat."_select"][$j] == '')?$cat:$EstmDATA[$cat."_select"][$j]]."<br>";

                $Infrastructure['Security Solution'][$cat] = $product_prices[($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]] * intval($EstmDATA[$cat . "_qty"][$j]);
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku[($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]]] = [
                    "qty" => $EstmDATA[$cat . "_qty"][$j],
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(intval($EstmDATA[$cat . "_qty"][$j]), $product_prices[($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]]):0
                ];


                if (preg_match("/fw/", $cat)) {
                    if (isset($EstmDATA[$cat . "_check"])) {
                        $totalFirewalls[$cat] =   $EstmDATA[$cat . "_qty"][$j];
                    }
                }
            }
        }
        // print_r($EstmDATA);        

        $f = 'A.' . $no = $no + 1;
        tblHead("Managed Services");
        $DiscountingId = "OTC";
        // tblRow('Services', 'One Time Infrastructure Setup', '', '', "", 1);
        ?>
        <tr>
            <td><?php echo "Service"; ?></td>
            <td class='final'><?php echo 'One Time Infrastructure Setup' ?></td>
            <td class='qty'></td>
            <td class='cost unshareable'></td>
            <td class="MRC mrc_<?= $j ?> unshareable"></td>
            <td class='discount unshareable' id='disc'></td>
            <td class='DiscountedMrc unshareable'></td>
            <td class='unshareable' id="otc_<?= $j ?>"></td>
        </tr>
        <?php
        $Class = "Managed_{$j}";

        if (isset($rep_link_mgmt[$j])) {
            $replication_mgmt = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        } else {
            $replication_mgmt = 0;
        }
        if (isset($osmgmt[$j]) && !empty($os[$j])) {
            foreach ($os[$j] as $i => $val) {
                foreach ($osArr as $k => $int) {
                    if ($os[$j][$i] == $int) {
                        $str = explode("_", $os[$j][$i]);
                        $osInt[] = $str[0];
                        $os_mgmt_name[] = getProdName($int);
                        $os_mgmt_qty[$str[0]][] = $vmqty[$j][$i];
                        $osmgmtINT[$str[0]] = $str[0] . '_mgmt';
                        // if (preg_match('/Windows/', $os[$j][$i])) {
                        //     $os_mgmt_name[] = 'Windows';
                        //     $os_mgmt_qty['Windows'][] = $vmqty[$j][$i];
                        //     $mgmtINT['Windows'] = 'win_os_mg';
                        // }
                        // if (preg_match('/RHEL/', $os[$j][$i])) {
                        //     $os_mgmt_name[] = 'RHEL';
                        //     $os_mgmt_qty['RHEL'][] = $vmqty[$j][$i];
                        //     $mgmtINT['RHEL'] = 'rhel_os_mg';
                        // }
                        // if (preg_match('/SUSE/', $os[$j][$i])) {
                        //     $os_mgmt_name[] = 'SUSE';
                        //     $os_mgmt_qty['SUSE'][] = $vmqty[$j][$i];
                        //     $mgmtINT['SUSE'] = 'suse_os_mg';
                        // }
                        // if (preg_match('/UBUNTU/', $os[$j][$i])) {
                        //     $os_mgmt_name[] = 'UBUNTU';
                        //     $os_mgmt_qty['UBUNTU'][] = $vmqty[$j][$i];
                        //     $mgmtINT['UBUNTU'] = 'ubuntu_os_mg';
                        // }
                        // if (preg_match('/CENTOS/', $os[$j][$i])) {
                        //     $os_mgmt_name[] = 'CENTOS';
                        //     $os_mgmt_qty['CENTOS'][] = $vmqty[$j][$i];
                        //     $mgmtINT['CENTOS'] = 'centos_os_mg';
                        // }
                    }
                }
            }
            $os_mgmt_data = (!empty($osInt)) ? array_values(array_unique($osInt)) : null;
        }

        if (isset($dbmgmt[$j]) && !empty($db[$j])) {
            foreach ($db[$j] as $i => $val) {
                foreach ($dbArr as $k => $int) {
                    if ($db[$j][$i] == $int) {
                        $str = explode("_", $db[$j][$i]);
                        $dbInt[] = $str[0];
                        $db_mgmt_name[] = getProdName($int);
                        $db_mgmt_qty[$str[0]][] = $vmqty[$j][$i];
                        $dbmgmtINT[$str[0]] = $str[0] . '_db_mgmt';
                    }
                }
                // if (preg_match('/MS SQL/', $db[$j][$i])) {
                //     $db_mgmt_name[] = 'MS SQL';
                //     $db_mgmt_qty['MS SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['MS SQL'] = 'ms_db_mg';
                // }
                // if (preg_match('/MY SQL/', $db[$j][$i])) {
                //     $db_mgmt_name[] = 'MY SQL';
                //     $db_mgmt_qty['MY SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['MY SQL'] = 'my_db_mg';
                // }
                // if (preg_match('/Postgre/', $db[$j][$i])) {
                //     $db_mgmt_name[] = 'Postgre';
                //     $db_mgmt_qty['Postgre'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['Postgre'] = 'pg_db_mg';
                // }
                // if (preg_match('/Oracle/', $db[$j][$i])) {
                //     $db_mgmt_name['Oracle'] = 'Oracle';
                //     $db_mgmt_qty['Oracle'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['Oracle'] = 'orc_db_mg';
                // }
                // if (preg_match('/Mongo/', $db[$j][$i])) {
                //     $db_mgmt_name['Mongo'] = 'Mongo';
                //     $db_mgmt_qty['Mongo'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['Mongo'] = 'mong_db_mg';
                // }
                // if (preg_match('/Maria/', $db[$j][$i])) {
                //     $db_mgmt_name['Maria'] = 'Maria';
                //     $db_mgmt_qty['Maria'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                //     $mgmtINT['Maria'] = 'mar_db_mg';
                // }
            }
            $db_mgmt_data = (!empty($dbInt)) ? array_values(array_unique($dbInt)) : null;
        }
        $strgmgmtqty = array();
        if (isset($strgmgmt[$j])) {
            foreach ($strgArr as $int => $strgName) {
                if (isset($EstmDATA[$int])) {
                    ($EstmDATA[$int . "_unit"] == "GB") ? array_push($strgmgmtqty, intval($EstmDATA[$int . "_qty"])) : array_push($strgmgmtqty, intval($EstmDATA[$int . "_qty"]) * 1024);
                }
            }
        } else {
        }

        if (isset($backup_mgmt[$j]) && !empty($backupstrg[$j])) {
            $backmgmtqty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        } else
            $backmgmtqty = 0;

        if (isset($lbmgmt[$j]) && !empty($lbqty[$j])) {
            $lbmgmtqty = $lbqty[$j];
        } else
            $lbmgmtqty = 0;

        // print_r($fvmgmt);
        if (isset($fvmgmt[$j])) {
            if (!empty($totalFirewalls)) {
                $fvmgmtqty = array_sum($totalFirewalls);
            } else {
                $fvmgmtqty = 0;
            }
        } else
            $fvmgmtqty = 0;

        if (isset($wafmgmt[$j]) && !empty($EstmDATA["waf_qty"][$j])) {
            $wafmgmtqty = $EstmDATA["waf_qty"][$j];
        } else {
            $wafmgmtqty = 0;
        }

        if (!empty($bandwidth[$j])) {
            $bandwidth_monitoring = 1;
        } else
            $bandwidth_monitoring = 0;

        if (isset($EstmDATA['emagic'][$j])) {
            $emagicqty = array(intval($lbmgmtqty), intval($fvmgmtqty), intval($wafmgmtqty), (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0, intval($ccptqty[$j]), $bandwidth_monitoring);
        }
        $managed_services = array(
            'st_mg' => floor(array_sum($strgmgmtqty) / 1024) * $product_prices['strg_mgmt'],
            'back_mg' => intval($backmgmtqty) * intval($product_prices['backup_mgmt']),
            'rep_mgmt' => $replication_mgmt * $product_prices['rep_mgmt'],
            'dr_drill' => intval($drill_qty[$j]) * $product_prices['dr_drill'],
            'lb_mgmt' => intval($lbmgmtqty) * intval($product_prices['virt_lb_mgmt']),
            'fw_mgmt' => (isset($EstmDATA["utm_check"][$j])) ?
                $product_prices['utm_mgmt'] * intval($fvmgmtqty) :
                $product_prices['vfirewall_mgmt'] * intval($fvmgmtqty),

            'waf_mgmt' => intval($wafmgmtqty) * intval($product_prices['esds_waf_mgmt']),
            'emagic' => (isset($EstmDATA['emagic'][$j])) ? array_sum($emagicqty) * intval($product_prices['emagic']) : 0
        );
        if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
            for (
                $i = 0;
                $i < count($os_mgmt_data);
                $i++
            ) {
                $managed_services[$osmgmtINT[$os_mgmt_data[$i]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) * intval($product_prices[$osmgmtINT[$os_mgmt_data[$i]]]);
            }
        }
        if (isset($dbmgmt[$j]) && !empty($db_mgmt_name)) {
            for (
                $i = 0;
                $i < count($db_mgmt_data);
                $i++
            ) {
                $managed_services[$dbmgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$dbmgmtINT[$db_mgmt_data[$i]]]);
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

        $total[$j] = array(array_sum($newInfra), array_sum($managed_services));

        $period = $EstmDATA['period'];
        if (empty($period[$j])) {
            $period[$j] = 1;
        }

        $push_total[$j]['infra'] = $newInfra;
        $push_total[$j]['service'] = $managed_services;

       

        if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
            for ($i = 0; $i < count($os_mgmt_data); $i++) {
                // echo $mgmtINT[$os_mgmt_data[$i]];

                $DiscountingId = $osmgmtINT[$os_mgmt_data[$i]] . "_$j";
                $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName($osmgmtINT[$os_mgmt_data[$i]]), array_sum($os_mgmt_qty[$os_mgmt_data[$i]]), $product_prices[$osmgmtINT[$os_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$osmgmtINT[$os_mgmt_data[$i]]]] = [
                    "qty" => array_sum($os_mgmt_qty[$os_mgmt_data[$i]]),
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($os_mgmt_qty[$os_mgmt_data[$i]]), $product_prices[$osmgmtINT[$os_mgmt_data[$i]]]):0
                ];
            }
        }
        if (isset($dbmgmt[$j]) && !empty($db_mgmt_data)) {
            for ($i = 0; $i < count($db_mgmt_data); $i++) {
                // print_r($dbmgmtINT);
                $DiscountingId = $dbmgmtINT[$db_mgmt_data[$i]] . "_$j";
                $totalDisc[$Class][$DiscountingId] = tblRow("Services", getProdName($dbmgmtINT[$db_mgmt_data[$i]]), array_sum($db_mgmt_qty[$db_mgmt_data[$i]]), $product_prices[$dbmgmtINT[$db_mgmt_data[$i]]]);
                $managed_services[$dbmgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$dbmgmtINT[$db_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$dbmgmtINT[$db_mgmt_data[$i]]]] = [
                    "qty" => array_sum($db_mgmt_qty[$db_mgmt_data[$i]]),
                    "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($db_mgmt_qty[$db_mgmt_data[$i]]), $product_prices[$dbmgmtINT[$db_mgmt_data[$i]]]):0
                ];
            }
        }
        if (isset($strgmgmt[$j])) {
            $DiscountingId = "strg_mgmt_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", "Storage Management Per TB", floor(array_sum($strgmgmtqty) / 1024), $product_prices['strg_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['strg_mgmt']] = [
                "qty" =>  floor(array_sum($strgmgmtqty) / 1024),
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(floor(array_sum($strgmgmtqty) / 1024), $product_prices['strg_mgmt']) : 0
            ];
        }
        if (isset($backup_mgmt[$j])) {
            $DiscountingId = "backup_mgmt_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", 'Backup Management - per Instance', $backmgmtqty, $product_prices['backup_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['backup_mgmt']] = [
                "qty" => $backmgmtqty,
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($backmgmtqty, $product_prices['backup_mgmt']):0
            ];
        }
        if (isset($rep_link_mgmt[$j])) {
            $DiscountingId = "rep_mgmt_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", 'Replication Service Management', $replication_mgmt, $product_prices['rep_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['rep_mgmt']] = [
                "qty" => $replication_mgmt,
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($replication_mgmt, $product_prices['rep_mgmt']):0
            ];
        }

        if (isset($dr_drill[$j])) {
            $DiscountingId = "dr_drill_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", 'DR Drill Per Year', $drill_qty[$j], $product_prices['dr_drill']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['dr_drill']] = [
                "qty" => $drill_qty[$j],
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($drill_qty[$j], $product_prices['dr_drill']):0
            ];
        }

        if (isset($lbmgmt[$j])) {
            $DiscountingId = "lb_mg_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", 'Load Balancer Management', $lbmgmtqty, $product_prices['virt_lb_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['virt_lb_mgmt']] = [
                "qty" => $lbmgmtqty,
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($lbmgmtqty, $product_prices['virt_lb_mgmt']):0
            ];
        }
        if (isset($fvmgmt[$j])) {
            $INT = (isset($utm[$j])) ? 'utm_mgmt' : 'vfirewall_mgmt';
            $DiscountingId = "{$INT}_{$j}";
            $name = (isset($EstmDATA["utm_check"][$j]) ? 'vUTM ' : '') . "Firewall Management";
            $price = (isset($EstmDATA["utm_check"][$j])) ? ($product_prices[$INT]) : ($product_prices[$INT]);
            // echo $product_prices['fv_mg'];
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", $name, $fvmgmtqty, $price);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['vfirewall_mgmt']] = [
                "qty" => $fvmgmtqty,
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($fvmgmtqty, $price):0
            ];
        }
        if (isset($wafmgmt[$j])) {
            $DiscountingId = "waf_mg_{$j}";
            //  print_r($product_prices);
            $totalDisc[$Class][$DiscountingId] = tblRow("Service", "Web Application Firewall Management", $wafmgmtqty, $product_prices['esds_waf_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['esds_waf_mgmt']] = [
                "qty" => $wafmgmtqty,
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage($wafmgmtqty, $product_prices['esds_waf_mgmt']):0
            ];
        }

        if (isset($EstmDATA['emagic'][$j])) {
            $info = "<i class='fa fa-info-circle  float-right' title='
Load Balancer - $emagicqty[0]
Internal & External Firewall - $emagicqty[1]
Web App Firewall - $emagicqty[2]
VM Quantity - $emagicqty[3]
Cross Connect & Port Termination - $emagicqty[4] 
Bandwidth Monitoring - $emagicqty[5] '></i>";
            $name = 'eMagic Monitoring ' . $emagic_type[$j];
            $DiscountingId = "emagic_{$j}";
            $totalDisc[$Class][$DiscountingId] = tblRow("Services", $name, array_sum($emagicqty), $product_prices['emagic']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['emagic']] = [
                "qty" => array_sum($emagicqty),
                "discount" =>(!empty($_DiscountedData))? GetDiscountedPercentage(array_sum($emagicqty), $product_prices['emagic']):0
            ];
        }
        ?>
        <tr>
            <th class='except unshareable' style='background: rgba(212,212,212,1); '> Sr No . </th>
            <th class=' final colspan except unshareable' colspan='3' style='background: rgba(212,212,212,1); '> Description </th>
            <th class='colspan except unshareable' style='background: rgba(212,212,212,1);' colspan='2'>MRC</th>
            <th class='colspan except unshareable' style='background: rgba(212,212,212,1);' colspan='2'>Discounted MRC</th>
        </tr>
        <?php
        $m = 0;
        if (!empty($Infrastructure)) {
        ?>
            <tr>
                <td class='unshareable'>
                    <?= $m + 1 ?>
                </td>
                <td class='colspan  final unshareable' colspan='3'> Infrastructure [ <?= $a . ' ' ?>
                    <?= $b . ' ' ?>
                    <?= $c . ' ' ?>
                    <?= $d . ' ' ?>
                    <?= $e . ' ' ?> ]</td>
                <td class='colspan unshareable ' colspan='2'><?php INR(array_sum($newInfra));
                                                                ?></td>
                <td class='colspan unshareable ' colspan='2'><?php if(!empty($_DiscountedData)){ INR(array_sum($totalDisc["Infrastructure_{$j}"])); } 
                                                                ?></td>
            </tr>
        <?php }
        ?>
        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> Managed Services [ <?= $f ?> ] </td>
            <td class='colspan unshareable' colspan='2'><?php INR(array_sum($managed_services));
                                                        ?></td>
            <td class='colspan unshareable' colspan='2'><?php if(!empty($_DiscountedData)){ INR(array_sum($totalDisc["Managed_{$j}"])); } 
                                                        ?></td>
        </tr>

        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> One Time Cost </td>
            <td class='colspan unshareable' colspan='2'>
                <?= INR((array_sum($total[$j]) * 12) * 0.05); ?>
            </td>
            <td class='colspan unshareable' colspan='2'>
                <?= INR((array_sum($total[$j]) * 12) * 0.05); ?>
            </td>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 207, 203);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 207, 203);'> Total [ Monthly ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='total_monthly'><?php INR(array_sum($total[$j]));
                                                                                                                                    $MothlyTotal[$j] = array_sum($total[$j]); ?></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='total_monthly'><?php if(!empty($_DiscountedData)){ INR(array_sum($totalDisc["Infrastructure_{$j}"]) + array_sum($totalDisc["Managed_{$j}"])); }  ?></th>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 226, 182);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 226, 182);'> Total [ For <?= $period[$j] ?> Months ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);'><?php INR(array_sum($total[$j]) * intval($period[$j]));
                                                                                                                array_push($ProjectTotal, array_sum($total[$j]) * intval($period[$j]));
                                                                                                                ?></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);'><?php if(!empty($_DiscountedData)){ INR((array_sum($totalDisc["Infrastructure_{$j}"]) + array_sum($totalDisc["Managed_{$j}"])) * $period[$j]); } ?></th>
        </tr>
    </table>
<?php
    $I_M[$j] = $Infrastructure;
    $I_M[$j]['Managed Services'] = $managed_services;

    $I_M[$j]['MonthlyTotal'] = $MothlyTotal[$j];


    // print_r($_DiscountedData);
}



function tblRow($Service, $Product, $Quantity, $Price, $Unit = "NO", $OTC = '')
{
    global $j, $DiscountingId, $_DiscountedData;
    // echo gettype($OTC);
    $MRC = intval($Price) * floatval($Quantity);
?>
    <tr>
        <td><?php echo $Service; ?></td>
        <td class='final'><?php echo $Product; ?></td>
        <td class='qty'><?php echo $Quantity . " " . $Unit; ?></td>
        <td class='cost unshareable'><?php INR(intval($Price)); ?></td>
        <td class="mrc_<?= $j ?> unshareable"><?php INR($MRC); ?></td>
        <td class='discount unshareable' id='disc'>
            <?php
            if(!empty($_DiscountedData[$j]["Data"][$DiscountingId])){
                $percentage = 0;
                try {
                    if (is_array($_DiscountedData[$j]["Data"][$DiscountingId])) {
                        $percentage = 100 - ((floatval(array_sum($_DiscountedData[$j]["Data"][$DiscountingId])) / $MRC) * 100);
                    } else {
                        $percentage = 100 - ((floatval($_DiscountedData[$j]["Data"][$DiscountingId]) / $MRC) * 100);
                    }
                } catch (DivisionByZeroError $e) {
                    echo "0";
                }
    
                echo round($percentage, 2)." %";
            }else "";
            ?></td>
        <td class='discountPrice unshareable' id='discPrice'><?php
            if(!empty($_DiscountedData[$j]["Data"][$DiscountingId])){

                                                                if (is_array($_DiscountedData[$j]["Data"][$DiscountingId])) {
                                                                    INR(!empty($_DiscountedData[$j]["Data"][$DiscountingId]) ? array_sum($_DiscountedData[$j]["Data"][$DiscountingId]) : 0);
                                                                } else {
                                                                    INR(!empty($_DiscountedData[$j]["Data"][$DiscountingId]) ? ($_DiscountedData[$j]["Data"][$DiscountingId]) : 0);
                                                                }
                                                            }else{ echo ""; }
                                                                ?></td>
        <td class='unshareable' id='otc'><?php (!empty($OTC)) ? INR($OTC) : '' ?></td>
    </tr>
<?php
    // print_r($_DiscountedData[$j]);
    return !empty($_DiscountedData[$j]["Data"][$DiscountingId]) ? (is_array($_DiscountedData[$j]["Data"][$DiscountingId]) ? array_sum($_DiscountedData[$j]["Data"][$DiscountingId]) : $_DiscountedData[$j]["Data"][$DiscountingId]) : 0;
}

function tblHead($Service)
{
    global $no;
?>
    <tr>
        <th class='Head except' id='sr'><?php echo 'A.' . $no; ?></th>
        <th class='Head except' id='comp'><?= $Service ?></th>
        <th class='Head except' id='unit'>Unit</th>
        <th class='Head unshareable except' id='cost'>Cost/Unit</th>
        <th class='Head unshareable except' id='mrc'>Monthly Cost</th>
        <th class='Head unshareable except' id='disc-head'>Discount %</th>
        <th class='Head unshareable except' id='discMrc-head'>Discounted Price</th>
        <th class='Head unshareable except' id='otc'>OTC</th>
    </tr>
<?php
}

// echo "<pre>";
// print_r($I_M);
// echo "</pre>";





// function GetDiscountedPercentage(int $Quantity, int $Price, $ID = "")
// {
//     global $_DiscountedData, $j, $DiscountingId;
//     ($ID != "") ? $DiscountingId = $ID : '';

//     $MRC = $Quantity * $Price;
//     $percentage = 0;
//     try {
//         $percentage = 100 - ((floatval($_DiscountedData[$j]["Data"][$DiscountingId]) / $MRC) * 100);
//     } catch (DivisionByZeroError $e) {
//         $percentage =  0;
//     }
//     return round($percentage, 2);
//     // return $DiscountingId;

// }
?>