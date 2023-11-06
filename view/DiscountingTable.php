<?php
// require '../model/   .php';

$Sku_Data = array();
require_once "../controller/calculations.php";
// echo "<pre>";
// print_r($product_prices);
// echo "</pre>";

foreach ($estmtname as $j => $_Key) {
    $no = 0;
    $Infrastructure = array();
    $antiVirus = false;
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
                        <input type="number" min=0 max=100 name="" class="form-control col-md-10" id="DiscountPercetage_<?= $j ?>" aria-describedby="perce_<?= $j ?>" oninput="if($(this).val() >100){$(this).addClass('border-danger')}else{$(this).removeClass('border-danger');}">
                        <span class="input-group-text form-control bg-light col-2 p-0 d-flex justify-content-center " id="perce_<?= $j ?>" style="cursor : pointer"> % </span>
                    </div>
                </div>
            </th>
        </tr>
        <?php

        $Class = "Infrastructure_$j";
        if (!empty($vmqty[$j][0])) {
            $no + 1;
            $a = 'A.' . $no . ' +';

            tblHead('eNlight Cloud Hosting');

            $vm_total = array();
            $vcore_data = array();
            foreach ($vmqty[$j] as $i => $val) {
                // $cost_rows = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_pack` WHERE `sr_no` = '{$instance[$j][$i]}' AND `region` =  '{$region[$j][$i]}' "));
                $compute[$j][$i] = "vCores {$cpu[$j][$i]} | RAM  {$ram[$j][$i]} GB | Disk - 1000 IOPS -  {$disk[$j][$i]} GB";
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
                $arr = tblRow($Service, $ProdName, $vmqty[$j][$i], $_Prices[$j]["VM{$i}"][$vmname[$j][$i]]);
                // echo $product_prices['cpu'];
                $Products[$j][$DiscountingId][] = array(
                    "product" => 'CPU',
                    "SKU" => $product_sku['vcpu_static'],
                    "Quantity" => $cpu[$j][$i],
                    "MRC" => ($product_prices['vcpu_static'] * intval($cpu[$j][$i]))
                );
                $Products[$j][$DiscountingId][] = array(
                    "product" => 'RAM',
                    "SKU" => $product_sku['vram_static'],
                    "Quantity" => $ram[$j][$i],
                    "MRC" => ($product_prices['vram_static'] * intval($ram[$j][$i]))
                );
                $Products[$j][$DiscountingId][] = array(
                    "product" => 'Disk',
                    "SKU" => $product_sku[$diskType[$j][$i]],
                    "Quantity" => $disk[$j][$i],
                    "MRC" => ($product_prices[$diskType[$j][$i]] * intval($disk[$j][$i]))
                );
                $Products[$j][$DiscountingId]["QTY"] = $vmqty[$j][$i];
            }
        }

        if (!empty($os[$j][0]) || !empty($agenttype[$j]) || isset($drm_tool[$j])) {
            $b = 'A.' . $no = $no + 1;
            $b .= ' +';
            tblHead("Software Licenses");

            $os_data = (!empty($os[$j])) ? array_values(array_unique($os[$j])) : null;
            $db_data = (!empty($db[$j])) ? array_values(array_unique($db[$j])) : null;
            foreach ($vmqty[$j] as $i => $val) {
                foreach ($osArr as $k => $int) {
                    if ($os_data[$i] == $int) {
                        $DiscountingId = "{$int}_{$j}";
                        $SKU = $product_sku[$int];

                        $cal = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_os_calculation` WHERE `product_int` = '{$os_data[$i]}'"));
                        list($variableName, $value) = explode(' = ', $cal['calculation']);
                        $$variableName = $value;
                        $Products[$j][$DiscountingId][] = tblRow("Database", getProdName($os_data[$i]), get_os($os_data[$i], $core_devide),  PriceOs($os_data[$i], "os"), " Lic.");
                    }
                }

                // if ($os_data[$i] == 'Windows Standard Edition') {
                //     $SKU = $product_sku['win_se'];
                //     $DiscountingId = "win_se_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i], 2), PriceOs($os_data[$i], "os"), "Lic.");
                // }

                // if ($os_data[$i] == 'Windows Datacenter Edition') {
                //     $SKU = $product_sku['win_dc'];
                //     $DiscountingId = "win_dc_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i], 2), PriceOs($os_data[$i], "os"), "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : RHEL') {
                //     $SKU = $product_sku['rhel'];
                //     $DiscountingId = "rhel_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), PriceOs($os_data[$i], "os"), "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : UBUNTU') {
                //     $SKU = $product_sku['ubuntu'];
                //     $DiscountingId = "ubuntu_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : CENTOS') {
                //     $SKU = $product_sku['centos'];
                //     $DiscountingId = "centos_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                // }

                // if ($os_data[$i] == 'Linux : SUSE') {
                //     $SKU = $product_sku['suse'];
                //     $DiscountingId = "suse_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), PriceOs($os_data[$i], "os"), "Lic.");
                // }
            }

            foreach ($vmqty[$j] as $i => $val) {

                foreach ($dbArr as $k => $int) {

                    if ($db_data[$i] == $int) {
                        $DiscountingId = "{$int}_{$j}";
                        $SKU = $product_sku[$int];

                        $cal = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_os_calculation` WHERE `product_int` = '{$db_data[$i]}'"));
                        list($variableName, $value) = explode(' = ', $cal['calculation']);
                        $$variableName = $value;
                        $Products[$j][$DiscountingId][] = tblRow("Database", getProdName($db_data[$i]), get_DB($db_data[$i], $core_devide), PriceOs($db_data[$i], "db"), " Lic.");
                    }
                }

                // if ($db_data[$i] == 'MS SQL Standard') {
                //     $SKU = $product_sku['ms_std'];
                //     $DiscountingId = "ms_std_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'MS SQL Enterprise') {
                //     $SKU = $product_sku['ms_ent'];
                //     $DiscountingId = "ms_ent_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'MS SQL WEB') {
                //     $SKU = $product_sku['ms_web'];
                //     $DiscountingId = "ms_web_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Community') {
                //     $SKU = $product_sku['my_com'];
                //     $DiscountingId = "my_com_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Standard') {
                //     $SKU = $product_sku['my_std'];
                //     $DiscountingId = "my_std_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'MY SQL Enterprise') {
                //     $SKU = $product_sku['my_ent'];
                //     $DiscountingId = "my_ent_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Postgre SQL Enterprise') {
                //     $SKU = $product_sku['post_ent'];
                //     $DiscountingId = "post_ent_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Postgre SQL Community') {
                //     $SKU = $product_sku['post_com'];
                //     $DiscountingId = "post_com_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Oracle SQL Standard') {
                //     $SKU = $product_sku['orc_std'];
                //     $DiscountingId = "orc_std_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 8), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Oracle SQL Enterprise') {
                //     $SKU = $product_sku['orc_ent'];
                //     $DiscountingId = "orc_ent_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Mongo DB Community') {
                //     $SKU = $product_sku['mong_com'];
                //     $DiscountingId = "mong_com_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Maria DB Community') {
                //     $SKU = $product_sku['mar_com'];
                //     $DiscountingId = "mar_com_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                // }
                // if ($db_data[$i] == 'Other') {
                //     $SKU = $product_sku['mar_com'];
                //     $DiscountingId = "mar_com_{$j}";
                //     $Products[$j][$DiscountingId] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
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
                $SKU = $product_sku['veeam'];
                $DiscountingId = "backup_age_{$j}";
                $Products[$j][$DiscountingId] = tblRow("Software", 'Backup Agent', array_sum($agentqty[$j]), $_Prices[$j]['Software']['veeam']);

                $Sku_Data[$estmtname[$j]]['Software'][$product_sku['veeam']] = array_sum($agentqty[$j]);
            }
            if (isset($drm_tool[$j])) {
                $SKU = $product_sku['drm_tool'];
                $DiscountingId = "drm_tool_{$j}";
                $drm_tool_qty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
                $Products[$j][$DiscountingId] = tblRow("Software", 'DRM Tool', $drm_tool_qty, $_Prices[$j]['Software']['DRM Tool']);
                $Sku_Data[$estmtname[$j]]['Software'][$product_sku['drm_tool']] = $drm_tool_qty;
            }
        }
        // if (isset($iops1[$j]) || isset($iops3[$j]) || isset($iops5[$j]) || isset($iops8[$j]) || isset($iops10[$j]) || !empty($backupstrg[$j]) || isset($tape_lib[$j]) || isset($tape_cart[$j]) || isset($fire_cab[$j])) {
        $c = 'A.' . $no = $no + 1;
        $c .= ' +';
        tblHead("Storage and Backup Services");

        foreach ($strgArr as $int => $strgName) {
            if (isset($EstmDATA[$int])) {
                $SKU = $product_sku[$int];
                $DiscountingId = $int . "_" . $j;


                $Products[$j][$DiscountingId] = tblRow(
                    "Additional Storage",

                    $strgName,

                    intval($EstmDATA[$int . "_qty"][$j]),

                    $_Prices[$j]["Storage Solution"][$int],

                    $EstmDATA[$int . "_unit"][$j],
                );

                $Infrastructure['Storage Solution'][$int] = get_strg($EstmDATA[$int . "_unit"][$j], $product_prices[$int]) * intval($EstmDATA[$int . "_qty"][$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku[$int]] = ($EstmDATA[$int . "_unit"][$j] == 'TB') ? intval(intval($EstmDATA[$int . "_qty"][$j])) * 1024 : intval(intval($EstmDATA[$int . "_qty"][$j]));
            }
        }

        // if (isset($iops03[$j])) {
        //     $SKU = $product_sku['iops_03'];
        //     $DiscountingId = "iops_03_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit03[$j], 300), get_strg($iops03qty[$j], 1, $iops03qty[$j]), $_Prices[$j]['Storage Solution'][strg_iops($strgunit03[$j], 300)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_03']] = ($strgunit03[$j] == 'TB') ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]);
        // }
        // if (isset($iops1[$j])) {
        //     $SKU = $product_sku['iops_1'];
        //     $DiscountingId = "iops_1_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit1[$j], 1000), get_strg($iops1qty[$j], 1, $iops1qty[$j]), $Infrastructure['Storage Solution'][strg_iops($strgunit1[$j], 1000)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_1']] = ($strgunit1[$j] == 'TB') ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]);
        // }

        // if (isset($iops3[$j])) {
        //     $SKU = $product_sku['iops_3'];
        //     $DiscountingId = "iops_3_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit3[$j], 3000), get_strg($iops3qty[$j], 1, $iops3qty[$j]), $_Prices[$j]['Storage Solution'][strg_iops($strgunit3[$j], 3000)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_3']] = ($strgunit3[$j] == 'TB') ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]);
        // }

        // if (isset($iops5[$j])) {
        //     $SKU = $product_sku['iops_5'];
        //     $DiscountingId = "iops_5_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit5[$j], 5000), get_strg($iops5qty[$j], 1, $iops5qty[$j]), $_Prices[$j]['Storage Solution'][strg_iops($strgunit5[$j], 5000)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_5']] = ($strgunit5[$j] == 'TB') ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]);
        // }

        // if (isset($iops8[$j])) {
        //     $SKU = $product_sku['iops_8'];
        //     $DiscountingId = "iops_8_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit8[$j], 8000), get_strg($iops8qty[$j], 1, $iops8qty[$j]), $_Prices[$j]['Storage Solution'][strg_iops($strgunit8[$j], 8000)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_8']] = ($strgunit8[$j] == 'TB') ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]);
        // }
        // if (isset($iops10[$j])) {
        //     $SKU = $product_sku['iops_10'];
        //     $DiscountingId = "iops_10_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Additional Storage", strg_iops($strgunit10[$j], 10000), get_strg($iops10qty[$j], 1, $iops10qty[$j]), $_Prices[$j]['Storage Solution'][strg_iops($strgunit10[$j], 10000)], "GB");
        //     $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_10']] = ($strgunit10[$j] == 'TB') ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j]);
        // }
        
        if (!empty($backupstrg[$j])) {
            $SKU = $product_sku[$backupunit[$j]];
            $DiscountingId = "backup_gb_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Backup Storage", getProdName($backupunit[$j]),  get_strg($backupunit[$j], 1, $backupstrg[$j]), $_Prices[$j]['Storage Solution']['Backup Space'], 'GB');
            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['backup_gb']] = ($backupunit[$j] == 'TB') ? intval($backupstrg[$j]) * 1024 : intval($backupstrg[$j]);
        }
        if (!empty($arc_strg[$j])) {
            $SKU = $product_sku['arc_strg_gb'];
            $DiscountingId = "arc_strg_gb_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Archival Storage", 'Archival Space',  get_strg($archival_unit[$j], 1, $arc_strg[$j]), $_Prices[$j]['Storage Solution']['Archival Space'], 'GB');
            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['arc_strg_gb']] = ($archival_unit[$j] == 'TB') ? intval($arc_strg[$j]) * 1024 : intval($arc_strg[$j]);
        }
        if (isset($tape_lib[$j])) {
            $SKU = $product_sku['tl'];
            $DiscountingId = "tl_{$j}";
            $Products[$j][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Tape Library', $tlqty[$j], $_Prices[$j]['Storage Solution']['Offline Backup Solution Tape Library']);
            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tl']] = $tlqty[$j];
        }

        if (isset($tape_cart[$j])) {
            $SKU = $product_sku['tc'];
            $DiscountingId = "tc_{$j}";
            $Products[$j][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Tape Cartridge', $tcqty[$j], $_Prices[$j]['Storage Solution']['Offline Backup Solution Tape Cartridge']);
            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tc']] = $tcqty[$j];
            // echo $tcqty[$j];
        }

        if (isset($fire_cab[$j])) {
            $SKU = $product_sku['fc'];
            $DiscountingId = "fc_{$j}";
            $Products[$j][$DiscountingId] = tblRow('Offline Backup', 'Offline Backup Solution Fireproof cabinate', $fcqty[$j], $_Prices[$j]['Storage Solution']['Offline Backup Solution Fireproof cabinate']);
            $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['fc']] = $fcqty[$j];
        }

        if (isset($rack[$j]) || isset($rated[$j]) || isset($metered[$j]) || isset($cage[$j]) || isset($bio[$j]) || isset($pdu[$j]) || isset($cctv[$j])) {
            $c = 'A.' . $no = $no + 1;
            $c .= ' +';
            tblHead("Colocation Services");
            if (isset($rack[$j])) {
                $SKU = $product_sku['rack_space'];
                $DiscountingId = "rack_space_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Rack Space', $rackqty[$j], $_Prices[$j]['Colocation']['Rack Space'], "U");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rack_space']] = ($rackqty[$j]);
            }
            if (isset($metered[$j])) {
                $SKU = $product_sku['metered_power'];
                $DiscountingId = "metered_power_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Metered Power', $meteredqty[$j], $_Prices[$j]['Colocation']['metered_power'], "Power Unit");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['metered_power']] = ($meteredqty[$j]);
            }
            if (isset($rated[$j])) {
                $SKU = $product_sku['rated_power'];
                $DiscountingId = "rated_power_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Rated Power', $ratedqty[$j], $_Prices[$j]['Colocation']['rated_power'], "Power Unit");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rated_power']] = ($ratedqty[$j]);
            }

            if (isset($cage[$j])) {
                $SKU = $product_sku['cage'];
                $DiscountingId = "cage_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Cage For RACK', $cageqty[$j], $_Prices[$j]['Colocation']['cage']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cage']] = ($cageqty[$j]);
            }
            if (isset($bio[$j])) {
                $SKU = $product_sku['bio'];
                $DiscountingId = "bio_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Bio-matrix for Cage', $bioqty[$j], $_Prices[$j]['Colocation']['bio']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['bio']] = ($bioqty[$j]);
            }
            if (isset($pdu[$j])) {
                $SKU = $product_sku['pdu'];
                $DiscountingId = "pdu_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'PDU Meter', $pduqty[$j], $_Prices[$j]['Colocation']['pdu']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['pdu']] = ($pduqty[$j]);
            }

            if (isset($cctv[$j])) {
                $SKU = $product_sku['cctv'];
                $DiscountingId = "cctv_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'CCTV Camera fo Rack', $cctvqty[$j], $_Prices[$j]['Colocation']['cctv']);
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
                    $SKU = $product_sku['ip'];
                    $DiscountingId = "ip_{$j}";
                    $Products[$j][$DiscountingId] = tblRow('Services', 'Public IP Address : ' . $publicip_vers[$j][$i], array_sum($publicip_qty[$j]), $_Prices[$j]['Network Solution']['ip']);
                    $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ip']] = array_sum($publicip_qty[$j]);
                }

                if (isset($private_data[$j][$i])) {
                    $Products[$j][$DiscountingId] = tblRow('Services', 'Private IP Address : ' . $privateip_vers[$j][$i], array_sum($privateip_qty[$j]), 0);
                    $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['private_ip']] = array_sum($privateip_qty[$j]);
                }
            }
            if (!empty($bandwidth[$j])) {
                $bandInt = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? 'speed_band' : 'volume_band';
                $bandUnit = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? ' Mbps' : ' GB';
                $SKU = $product_sku[$bandInt];
                $DiscountingId = "{$bandInt}_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', $bandwidthType[$j], $bandwidth[$j], $_Prices[$j]['Network Solution']['bandwidth'], $bandUnit);
                $Infrastructure['Network Solution']['bandwidth'] = intval($product_prices[$bandInt]) * intval($bandwidth[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku[$bandInt]] = $bandwidth[$j];
            }
            if (!empty($ccptqty[$j])) {
                $SKU = $product_sku['ccpt'];
                $DiscountingId = "ccpt_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', "Cross Connect and Port Termination", $ccptqty[$j], $_Prices[$j]['Network Solution']['ccpt']);
                $Infrastructure['Network Solution']['ccpt'] = intval($product_prices['ccpt']) * intval($ccptqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ccpt']] = $ccptqty[$j];
            }

            if (isset($rep_link[$j])) {
                $SKU = $product_sku[$rep_link_type[$j]];
                $DiscountingId = "{$rep_link_type[$j]}_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', getProdName($rep_link_type[$j]) . ' Replication Link', $rep_link_qty[$j], $_Prices[$j]['Network Solution']['rep_link'], "Mbps");
                $Infrastructure['Network Solution']['rep_link'] = intval($rep_link_qty[$j]) * get_Price($rep_link_type[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution']['CNPP000000000000'] = $rep_link_qty[$j];
            }

            if (!empty($ipsec[$j])) {
                $SKU = $product_sku['ipsec_vpn'];
                $DiscountingId = "ipsec_vpn_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Virtual Private Network (VPN) : IPSEC', $ipsecqty[$j], $_Prices[$j]['Network Solution']['ipsec_vpn']);
                $Infrastructure['Network Solution']['ipsec_vpn'] = intval($ipsecqty[$j]) * $product_prices['ipsec_vpn'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ipsec_vpn']] = $ipsecqty[$j];
            }

            if (!empty($sslvpn[$j])) {
                $SKU = $product_sku['ssl_vpn'];
                $DiscountingId = "ssl_vpn_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Virtual Private Network (VPN) : SSL', $sslvpnqty[$j], $_Prices[$j]['Network Solution']['sslvpn']);
                $Infrastructure['Network Solution']['sslvpn'] = intval($sslvpnqty[$j]) * $product_prices['ssl_vpn'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ssl_vpn']] = $sslvpnqty[$j];
            }

            if (!empty($lb[$j])) {
                $SKU = $lb[$j];
                $DiscountingId = "{$lb[$j]}_{$j}";
                $Products[$j][$DiscountingId] = tblRow('Services', 'Load Balancer', $lbqty[$j], $_Prices[$j]['Network Solution']['lb']);
                $Infrastructure['Network Solution']['lb'] = get_Price($lb[$j]) * intval($lbqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$lb[$j]] = $lbqty[$j];
            }
        }
        // if (
        //     emp ty ($av) ||
        //     isset($ext_firewall[$j]) ||
        //     isset($int_fv[$j]) ||
        //     isset($ddos[$j]) ||
        //     isset($waf[$j]) ||
        //     isset($tfa[$j]) ||
        //     isset($sslcert[$j]) ||
        //     isset($siem[$j]) ||
        //     isset($pim[$j]) ||
        //     isset($vtm[$j]) ||
        //     isset($vapt[$j]) ||
        //     isset($hsm[$j]) ||
        //     isset($iam[$j]) ||
        //     isset($dlp[$j]) ||
        //     isset($edr[$j]) ||
        //     isset($dam[$j]) ||
        //     isset($sor[$j])
        // ) {
        if (!empty($vmqty[$j])) {
            $av_count = array();
            foreach ($vmqty[$j] as $i => $val) {
                if (!empty($av_type[$j][$i])) {
                    $newAV = $av_type[$j][$i];
                    array_push($av_count, $vmqty[$j][$i]);
                } else {
                    unset($av_type[$j][$i]);
                }
            }
        }
        $e = 'A.' . $no = $no + 1;
        tblHead('Security Solution');

        $totalFirewalls = array();
        foreach ($secArr as $cat => $prod) {

            if (isset($EstmDATA[$cat . "_check"][$j])) {

                $SKU = get_Price(($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j], 'sku_code');
                $DiscountingId = $cat . "_" . $j;

                $Products[$j][$DiscountingId] = tblRow(
                    "Services",

                    $secArr[$cat][($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]],

                    intval($EstmDATA[$cat . "_qty"][$j]),

                    $_Prices[$j]["Security Solution"][$cat]
                );
                // echo "<pre>";
                // print_r($_Prices[$j]["Security Solution"]);

                if (preg_match("/fw/", $cat)) {
                    if (isset($EstmDATA[$cat . "_check"])) {
                        $totalFirewalls[$cat] =   $EstmDATA[$cat . "_qty"][$j];
                    }
                }

                $Infrastructure['Storage Solution'][$cat] = $product_prices[($EstmDATA[$cat . "_select"][$j] == '') ? $cat : $EstmDATA[$cat . "_select"][$j]];
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$cat] = $EstmDATA[$cat . "_qty"][$j];
            }
        }

        // if (!empty($newAV)) {
        //     $SKU = "ESAVAHMA00000000";
        //     $DiscountingId = "ESAVAHMA00000000_{$j}";
        //     $avPrice = (preg_match('/HIPS/', $newAV)) ? 1200 : 300;
        //     $Products[$j][$DiscountingId] = tblRow('Services', $newAV, array_sum($av_count), $_Prices[$j]['Security Solution']['av']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution']['ESAVAHMA00000000'] = array_sum($av_count);
        // }
        // if (isset($ext_firewall[$j])) {
        //     $SKU = get_Price($efv_throughput[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $throughput = preg_split('/:/', $efv_throughput[$j]);
        //     $efvName = ((isset($utm[$j])) ? ('vUTM ') : ('')) . "External Firewall - {$throughput[1]} Throughput";
        //     $Products[$j][$DiscountingId] = tblRow('Services', $efvName, $extfvqty[$j], $_Prices[$j]['Security Solution']['efw']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($efv_throughput[$j], 'sku_code')] = $extfvqty[$j];
        // }
        // if (isset($int_fv[$j])) {
        //     $SKU = get_Price($ifv_throughput[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $throughput = preg_split('/:/', $ifv_throughput[$j]);
        //     $ifvName = "Internal Firewall - {$throughput[1]} Throughput";
        //     $Products[$j][$DiscountingId] = tblRow('Services', $ifvName, $intfvqty[$j], $_Prices[$j]['Security Solution']['ifw']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ifv_throughput[$j], 'sku_code')] = $intfvqty[$j];
        // }
        // if (isset($ddos[$j])) {
        //     $SKU = get_Price($ddos_throughput[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $ddosName = "DDoS Mitigation up to 1 Gbps Mitigation";
        //     $Products[$j][$DiscountingId] = tblRow('Services', $ddosName, 1, $_Prices[$j]['Security Solution']['ddos']);

        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ddos_throughput[$j], 'sku_code')] = 1;
        // }
        // if (isset($waf[$j])) {
        //     $SKU = get_Price($waf_name[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow('Services', $waf_name[$j], $wafqty[$j], $_Prices[$j]['Security Solution']['waf']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($waf_name[$j], 'sku_code')] = $wafqty[$j];
        // }
        // if (isset($tfa[$j])) {
        //     $SKU = $product_sku['tfa'];
        //     $DiscountingId = "tfa_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow('Services', "Two Factor Authentication", $tfaqty[$j], $_Prices[$j]['Security Solution']['tfa']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['tfa']] = $tfaqty[$j][1];
        // }
        // if (isset($sslcert[$j])) {
        //     $SKU = get_Price($ssl[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow('Services', 'SSL Certificate : ' . $ssl[$j], $sslqty[$j], $_Prices[$j]['Security Solution']['ssl']);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ssl[$j], 'sku_code')] = $sslqty[$j];
        // }
        // if (isset($siem[$j])) {
        //     $SKU = get_Price($siem_name[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $siemqty =
        //         array(
        //             (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
        //             intval($intfvqty[$j]) + intval($extfvqty[$j]),
        //             intval($wafqty[$j]),
        //             intval($lbqty[$j]),
        //             ($hsm[$j] && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : (0)
        //         );

        //     $Products[$j][$DiscountingId] = tblRow("Services", "SIEM ", array_sum($siemqty), $_Prices[$j]['Security Solution']['siem']);
        //     $Infrastructure['Security Solution']['siem'] = array_sum($siemqty) * get_Price($siem_name[$j]);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($siem_name[$j], 'sku_code')] = array_sum($siemqty);
        //     $info = '';
        // }
        // if (isset($pim[$j])) {
        //     $SKU = $product_sku['pim'];
        //     $DiscountingId = "pim_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "PIM ", $pimqty[$j], $_Prices[$j]['Security Solution']['pim']);
        //     $Infrastructure['Security Solution']['pim'] = intval($pimqty[$j]) * $product_prices['pim'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['pim']] = $pimqty[$j];
        // }
        // if (isset($vtm[$j])) {
        //     $SKU = get_Price($vtmqty[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "VTM Scan ( {$vtmqty[$j]} )", 1, $_Prices[$j]['Security Solution']['vtm']);
        //     $Infrastructure['Security Solution']['vtm'] = get_Price($vtmqty[$j]);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vtmqty[$j], 'sku_code')] = 1;
        // }
        // if (isset($vapt[$j])) {
        //     $SKU = get_Price($vapt_type[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $Devices =
        //         array(
        //             (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
        //             intval($intfvqty[$j]) + intval($extfvqty[$j]),
        //             intval($wafqty[$j]),
        //             intval($lbqty[$j]),
        //             (isset($hsm[$j]) && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : 0
        //         );
        //     $vaptName = $vapt_type[$j] . ' ' . $vapt_frequency[$j] . ' ' . $vaptqty[$j];
        //     $Products[$j][$DiscountingId] = tblRow("Services", $vaptName, array_sum($Devices), $_Prices[$j]['Security Solution']['vapt']);
        //     $Infrastructure['Security Solution']['vapt'] = array_sum($Devices) * get_Price($vapt_type[$j]);
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vapt_type[$j], 'sku_code')] = array_sum($Devices);
        //     $info = '';
        // }
        // if (isset($hsm[$j])) {
        //     $SKU = get_Price($hsmtype[$j], 'sku_code');
        //     $DiscountingId = "sku_code_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", $hsmtype, $hsmqty[$j], $_Prices[$j]['Security Solution']['hsm']);
        //     $Infrastructure['Security Solution']['hsm'] = intval($hsmqty[$j]) * $product_prices['hsm'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($hsmtype[$j], 'sku_code')] = $hsmqty[$j];
        // }
        // if (isset($iam[$j])) {
        //     $SKU = $product_sku['iam'];
        //     $DiscountingId = "iam_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "IAM", $iamqty[$j], $_Prices[$j]['Security Solution']['iam']);
        //     $Infrastructure['Security Solution']['iam'] = intval($iamqty[$j]) * $product_prices['iam'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['iam']] = $iamqty[$j];
        // }
        // if (isset($dlp[$j])) {
        //     $SKU = $product_sku['dlp'];
        //     $DiscountingId = "dlp_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "DLP", $dlpqty[$j], $_Prices[$j]['Security Solution']['dlp']);
        //     $Infrastructure['Security Solution']['dlp'] = intval($dlpqty[$j]) * $product_prices['dlp'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dlp']] = $dlpqty[$j];
        // }
        // if (isset($edr[$j])) {
        //     $SKU = $product_sku['edr'];
        //     $DiscountingId = "edr_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "EDR", $edrqty[$j], $_Prices[$j]['Security Solution']['edr']);
        //     $Infrastructure['Security Solution']['edr'] = intval($edrqty[$j]) * $product_prices['edr'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['edr']] = $edrqty[$j];
        // }
        // if (isset($dam[$j])) {
        //     $SKU = $product_sku['dam'];
        //     $DiscountingId = "dam_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "DAM", $damqty[$j], $_Prices[$j]['Security Solution']['dam']);
        //     $Infrastructure['Security Solution']['dam'] = intval($damqty[$j]) * $product_prices['dam'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dam']] = $damqty[$j];
        // }
        // if (isset($sor[$j])) {
        //     $SKU = $product_sku['sor'];
        //     $DiscountingId = "sor_{$j}";
        //     $Products[$j][$DiscountingId] = tblRow("Services", "SOR", $sorqty[$j], $_Prices[$j]['Security Solution']['sor']);
        //     $Infrastructure['Security Solution']['sor'] = intval($sorqty[$j]) * $product_prices['sor'];
        //     $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['sor']] = $sorqty[$j];
        // }



        $Class = "Managed_$j";
        // }
        $f = 'A.' . $no = $no + 1;
        tblHead("Managed Services");

        if (isset($rep_link_mgmt[$j])) {
            $replication_mgmt = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        } else {
            $replication_mgmt = 0;
        }
        if (isset($osmgmt[$j]) && !empty($os[$j])) {
            // foreach ($os as $i => $val) {
            //     if (preg_match('/Windows/', $os[$j][$i])) {
            //         $os_mgmt_name[] = 'Windows';
            //         $os_mgmt_qty['Windows'][] = $vmqty[$j][$i];
            //         $mgmtINT['Windows'] = 'win_os_mg';
            //         // echo $vmqty[ $j ][ $i ];
            //     }
            //     if (preg_match('/RHEL/', $os[$j][$i])) {
            //         $os_mgmt_name[] = 'RHEL';
            //         $os_mgmt_qty['RHEL'][] = $vmqty[$j][$i];
            //         $mgmtINT['RHEL'] = 'rhel_os_mg';
            //     }
            //     if (preg_match('/SUSE/', $os[$j][$i])) {
            //         $os_mgmt_name[] = 'SUSE';
            //         $os_mgmt_qty['SUSE'][] = $vmqty[$j][$i];
            //         $mgmtINT['SUSE'] = 'suse_os_mg';
            //     }
            //     if (preg_match('/UBUNTU/', $os[$j][$i])) {
            //         $os_mgmt_name[] = 'UBUNTU';
            //         $os_mgmt_qty['UBUNTU'][] = $vmqty[$j][$i];
            //         $mgmtINT['UBUNTU'] = 'ubuntu_os_mg';
            //     }
            //     if (preg_match('/CENTOS/', $os[$j][$i])) {
            //         $os_mgmt_name[] = 'CENTOS';
            //         $os_mgmt_qty['CENTOS'][] = $vmqty[$j][$i];
            //         $mgmtINT['CENTOS'] = 'centos_os_mg';
            //     }
            // }
            foreach ($os[$j] as $i => $val) {
                foreach ($osArr as $k => $int) {
                    if ($os[$j][$i] == $int) {
                        $str = explode("_", $os[$j][$i]);
                        $osInt[] = $str[0];
                        $os_mgmt_name[] = getProdName($int);
                        $os_mgmt_qty[$str[0]][] = $vmqty[$j][$i];
                        $osmgmtINT[$str[0]] = $str[0] . '_mgmt';
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
            }
            // foreach ($db[$j] as $i => $val) {
            //     if (preg_match('/MS SQL/', $db[$j][$i])) {
            //         $db_mgmt_name[] = 'MS SQL';
            //         $db_mgmt_qty['MS SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['MS SQL'] = 'ms_db_mg';
            //     }
            //     if (preg_match('/MY SQL/', $db[$j][$i])) {
            //         $db_mgmt_name[] = 'MY SQL';
            //         $db_mgmt_qty['MY SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['MY SQL'] = 'my_db_mg';
            //     }
            //     if (preg_match('/Postgre/', $db[$j][$i])) {
            //         $db_mgmt_name[] = 'Postgre';
            //         $db_mgmt_qty['Postgre'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['Postgre'] = 'pg_db_mg';
            //     }
            //     if (preg_match('/Oracle/', $db[$j][$i])) {
            //         $db_mgmt_name['Oracle'] = 'Oracle';
            //         $db_mgmt_qty['Oracle'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['Oracle'] = 'orc_db_mg';
            //     }
            //     if (preg_match('/Mongo/', $db[$j][$i])) {
            //         $db_mgmt_name['Mongo'] = 'Mongo';
            //         $db_mgmt_qty['Mongo'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['Mongo'] = 'mong_db_mg';
            //     }
            //     if (preg_match('/Maria/', $db[$j][$i])) {
            //         $db_mgmt_name['Maria'] = 'Maria';
            //         $db_mgmt_qty['Maria'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
            //         $mgmtINT['Maria'] = 'mar_db_mg';
            //     }
            // }
            $db_mgmt_data = (!empty($dbInt)) ? array_values(array_unique($dbInt)) : null;
            // $db_mgmt_data = (!empty($db_mgmt_name)) ? array_values(array_unique($db_mgmt_name)) : null;
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


        $period = $EstmDATA['period'];
        if (empty($period[$j])) {
            $period[$j] = 1;
        }
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


        // print_r($osmgmtINT);
        if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
            for ($i = 0; $i < count($os_mgmt_data); $i++) {
                $SKU = $product_sku[$osmgmtINT[$os_mgmt_data[$i]]];
                $DiscountingId = $osmgmtINT[$os_mgmt_data[$i]] . "_$j";
                $Products[$j][$DiscountingId] = tblRow("Services", getProdName($osmgmtINT[$os_mgmt_data[$i]]), array_sum($os_mgmt_qty[$os_mgmt_data[$i]]), $_Prices[$j]['Managed Services'][$osmgmtINT[$os_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$osmgmtINT[$os_mgmt_data[$i]]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]);
            }
        }
        if (isset($dbmgmt[$j]) && !empty($db_mgmt_data)) {
            for ($i = 0; $i < count($db_mgmt_data); $i++) {
                $SKU = $product_sku[$dbmgmtINT[$db_mgmt_data[$i]]];
                $DiscountingId = $dbmgmtINT[$db_mgmt_data[$i]] . "_$j";
                $Products[$j][$DiscountingId] = tblRow("Service", getProdName($dbmgmtINT[$db_mgmt_data[$i]]), array_sum($db_mgmt_qty[$db_mgmt_data[$i]]), $_Prices[$j]['Managed Services'][$dbmgmtINT[$db_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$dbmgmtINT[$db_mgmt_data[$i]]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]);
                $managed_services[$dbmgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$dbmgmtINT[$db_mgmt_data[$i]]]);
            }
        }
        if (isset($strgmgmt[$j])) {
            $SKU = $product_sku['strg_mgmt'];
            $DiscountingId = "strg_mgmt_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", "Storage Management Per TB", floor(array_sum($strgmgmtqty) / 1024), $_Prices[$j]['Managed Services']["strg_mgmt"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['strg_mgmt']] = floor(array_sum($strgmgmtqty) / 1024);
        }
        if (isset($backup_mgmt[$j])) {
            $SKU = $product_sku['backup_mgmt'];
            $DiscountingId = "backup_mgmt_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", 'Backup Management - per Instance', $backmgmtqty, $_Prices[$j]['Managed Services']["back_mg"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['backup_mgmt']] = $backmgmtqty;
        }
        if (isset($rep_link_mgmt[$j])) {
            $SKU = $product_sku['rep_mgmt'];
            $DiscountingId = "rep_mgmt_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", 'Replication Service Management', $replication_mgmt, $_Prices[$j]['Managed Services']['rep_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['rep_mgmt']] = $replication_mgmt;
        }

        if (isset($dr_drill[$j])) {
            $SKU = $product_sku['dr_drill'];
            $DiscountingId = "dr_drill_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", 'DR Drill Per Year', $drill_qty[$j], $_Prices[$j]['Managed Services']["dr_drill"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['dr_drill']] = $drill_qty[$j];
        }

        if (isset($lbmgmt[$j])) {
            $SKU = $product_sku['virt_lb_mgmt'];
            $DiscountingId = "lb_mg_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", 'Load Balancer Management', $lbmgmtqty, $_Prices[$j]['Managed Services']['lb_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['virt_lb_mgmt']] = $lbmgmtqty;
        }
        if (isset($fvmgmt[$j])) {
            $name = ((isset($utm[$j])) ? 'vUTM ' : '') . "FireWall Management";
            $INT = (isset($utm[$j])) ? 'utm_mgmt' : 'vfirewall_mgmt';
            $SKU = $product_sku[$INT];
            $DiscountingId = "{$INT}_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", $name, $fvmgmtqty, $_Prices[$j]['Managed Services']["fw_mgmt"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$INT]] = $fvmgmtqty;
        }
        if (isset($wafmgmt[$j])) {
            $SKU = $product_sku['esds_waf_mgmt'];
            $DiscountingId = "waf_mg_{$j}";
            $Products[$j][$DiscountingId] = tblRow("Service", "Web Application Firewall Management", $wafmgmtqty, $_Prices[$j]['Managed Services']['waf_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['esds_waf_mgmt']] = $wafmgmtqty;
        }

        if (isset($EstmDATA['emagic'][$j])) {
            $SKU = $product_sku['emagic'];
            $DiscountingId = "emagic_{$j}";
            $name = 'eMagic Monitoring ' . $emagic_type[$j];
            $Products[$j][$DiscountingId] = tblRow("Services", $name, array_sum($emagicqty), $_Prices[$j]['Managed Services']['emagic']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['emagic']] = array_sum($emagicqty);
            $info = '';
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
                <td class='colspan unshareable ' id="infraTotal_<?= $j ?>" colspan='2'></td>
                <td class='colspan unshareable ' colspan='2' id="DiscInfra_<?= $j ?>"></td>
            </tr>
        <?php }
        ?>
        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> Managed Services [ <?= $f ?> ] </td>
            <td class='colspan unshareable' colspan='2' id="MngTotal_<?= $j ?>"></td>
            <td class='colspan unshareable' colspan='2' id="DiscMng_<?= $j ?>"></td>
        </tr>

        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> One Time Cost </td>
            <td class='colspan unshareable' colspan='2' id="final_otc_<?= $j ?>"> </td>
            <td class='colspan unshareable' colspan='2'></td>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 207, 203);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 207, 203);'> Total [ Monthly ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='total_monthly_<?= $j ?>'></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='DiscTotal_<?= $j ?>'></th>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 226, 182);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 226, 182);'> Total [ For <?= $period[$j] ?> Months ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);' id="MonthlyTotal_<?= $j ?>" data-period="<?= $period[$j] ?>"></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);' id="MonthlyDiscounted_<?= $j ?>" data-period="<?= $period[$j] ?>"></th>
        </tr>
    </table>
    <input type="hidden" name="" id="Months_<?= $j ?>" value="<?= $period[$j] ?>">
    <script>
        $("#perce_<?= $j ?>").on("click", function() {
            $obj = {
                action: "Discount",
                discountVal: $("#DiscountPercetage_<?= $j ?>").val() / 100,
                Total: "<?= $_Prices[$j]['MonthlyTotal'] ?>",
                data: "<?= base64_encode(json_encode($Products[$j])) ?>"
            };
            DiscountingAjax($obj, <?= $j ?>);
        })

        $(document).ready(function() {
            totalInfra(<?= $j ?>)
        })
    </script>
<?php
    $I_M[$j] = $Infrastructure;
    $I_M[$j]['Managed Services'] = $managed_services;
}



function tblRow($Service, $Product, $Quantity, $MRC, $Unit = "NO", $OTC = '')
{
    global $j, $DiscountingId, $SKU, $Class;
    // echo gettype($OTC);
?>
    <tr>
        <td><?php echo $Service; ?></td>
        <td class='final'><?php echo $Product ?></td>
        <td class='qty'><?php echo $Quantity . " " . $Unit; ?></td>
        <td class='cost unshareable'><?php
                                        try {
                                            $P = floatval($MRC) / floatval($Quantity);
                                            INR($P);
                                        } catch (DivisionByZeroError  $e) {
                                            INR(0);
                                        }
                                        ?></td>
        <td class="MRC mrc_<?= $j ?> unshareable <?= $Class ?>">
            <?php
            try {
                INR($MRC);
            } catch (TypeError $e) {
                INR(0);
            }
            ?></td>
        <td class='discount unshareable' id='disc'></td>
        <td class='DiscountedMrc unshareable <?= $Class ?>' id="<?= $DiscountingId ?>"></td>
        <td class='unshareable' <?= (!empty($OTC)) ? "id='otc{$j}'" : '' ?>><?php (!empty($OTC)) ? INR($OTC) : '' ?></td>
    </tr>
<?php
    $arr = array(
        "Product" => $Product,  
        "SKU" => $SKU,
        "Quantity" => $Quantity,
        "MRC" => $MRC
    );

    return $arr;
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
        <th class='Head unshareable except' id='discCost'>Discounted Price</th>
        <th class='Head unshareable except' id='otc'>OTC</th>
    </tr>
<?php
}
function PriceOs($SW, $Feild)
{
    global  $$Feild, $j, $_Prices, $vmqty;
    foreach ($vmqty[$j] as $i => $val) {
        if ($$Feild[$j][$i] == $SW) {
            $Price[] = $_Prices[$j]["VM{$i}"][$Feild];
            // echo $_Prices[$j]["VM{$i}"][$Feild];
        }
    }
    return array_sum($Price);
}

?>


<script>
    function DiscountingAjax(DATA, j) {
        $.ajax({
            type: "post", //http method
            url: "../controller/discounting.php",
            dataType: "TEXT",
            data: DATA,
            success: function(res) {
                let Obj = JSON.parse(res)
                console.log(res);
                Object.keys(Obj).forEach(function(key){
                    $("#"+key).html(Obj[key]);
                })
            }
        })
    }
    function totalInfra(j) {
        var Infrastructure = [];
        var Managed = [];
        $(".Managed_" + j + " , .Infrastructure_" + j + "").each(function() {
            // console.log($(this).html());

            var valHTML = $(this).html();
            var val = valHTML.replace(/₹|,|\n| /g, '');

            if ($(this).hasClass("Infrastructure_" + j) && val !== '') {
                Infrastructure.push(parseFloat(val));
            }

            if ($(this).hasClass("Managed_" + j) && val !== '') {
                Managed.push(parseFloat(val));
            }

        })
        infraTotal = Infrastructure.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        mngTotal = Managed.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        $("#infraTotal_" + j).html(INR(infraTotal));
        $("#MngTotal_" + j).html(INR(mngTotal));

        $("#total_monthly_" + j).html(INR(
            parseFloat(infraTotal) +
            parseFloat(mngTotal)
        ))

        var otc_perc = "<?= getProdName("otc") ?>".replace(/otc|-/g, '');
        $("#final_otc_" + j + ",#otc_" + j).html(INR(
            ((parseFloat(infraTotal) +
                parseFloat(mngTotal)) * 12) * parseFloat(otc_perc)
        ))
        var period = parseFloat($("#MonthlyTotal_" + j).data("period"))
        $("#MonthlyTotal_" + j).html(INR(
            (parseFloat(infraTotal) +
                parseFloat(mngTotal)) * period
        ))

    }
</script>