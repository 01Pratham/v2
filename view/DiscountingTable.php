<?php
require '../controller/constants.php';
require '../model/database.php';

$Sku_Data = array();
require_once "../controller/calculations.php";
// echo "<pre>";
// print_r($_Prices);
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
        if (!empty($series[$j][0])) {
            $no + 1;
            $a = 'A.' . $no . ' +';

            tblHead('eNlight Cloud Hosting');

            $vm_total = array();
            $vcore_data = array();
            foreach ($vmqty[$j] as $i => $val) {
                $cost_rows = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_pack` WHERE `sr_no` = '{$instance[$j][$i]}' AND `region` =  '{$region[$j][$i]}' "));
                $compute[$j][$i] = "vCores {$cpu[$j][$i]} | RAM  {$ram[$j][$i]} GB | Disk - 1000 IOPS -  {$disk[$j][$i]} GB";
                $price = ($instance[$j][$i] == 'Flexi') ?
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

                $Service = !empty($vmname[$j][$i]) ? ($vmname[$j][$i]) : ('Virtual Machine') . ' - ' . $region[$j][$i] . ' - ' . $sector[$j][$i] . ' ' . $state[$j][$i];

                $ProdName = $instance[$j][$i] . ' : ' . $compute[$j][$i] . ' | OS : ' . $os[$j][$i] . ' | DB : ' . $db[$j][$i];

                $arr = tblRow($Service, $ProdName, $vmqty[$j][$i], $_Prices[$j]["VM{$i}"][$vmname[$j][$i]]);
                // echo $product_prices['cpu'];
                $Products[$j]["VM{$i}"][] = array(
                    "product" => 'CPU',
                    "SKU" => $product_sku['cpu'],
                    "Quantity" => $cpu[$j][$i],
                    "MRC" => ($product_prices['cpu'] * intval($cpu[$j][$i]))
                );
                $Products[$j]["VM{$i}"][] = array(
                    "product" => 'RAM',
                    "SKU" => $product_sku['ram'],
                    "Quantity" => $ram[$j][$i],
                    "MRC" => ($product_prices['ram'] * intval($ram[$j][$i]))
                );
                $Products[$j]["VM{$i}"][] = array(
                    "product" => 'Disk',
                    "SKU" => $product_sku['iops_1'],
                    "Quantity" => $disk[$j][$i],
                    "MRC" => ($product_prices['iops_1'] * intval($disk[$j][$i]))
                );
                $Products[$j]["VM{$i}"]["QTY"] = $vmqty[$j][$i];
            }
        }

        if (!empty($series[$j][0]) || !empty($agenttype[$j]) || isset($drm_tool[$j])) {
            $b = 'A.' . $no = $no + 1;
            $b .= ' +';
            tblHead("Software Licenses");

            $os_data = (!empty($os[$j])) ? array_values(array_unique($os[$j])) : null;
            $db_data = (!empty($db[$j])) ? array_values(array_unique($db[$j])) : null;
            foreach ($vmqty[$j] as $i => $val) {

                if ($os_data[$i] == 'Windows Standard Edition') {
                    $SKU = $product_sku['win_se'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i], 2), PriceOs($os_data[$i], "os"), "Lic.");
                }

                if ($os_data[$i] == 'Windows Datacenter Edition') {
                    $SKU = $product_sku['win_dc'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i], 2), PriceOs($os_data[$i], "os"), "Lic.");
                }

                if ($os_data[$i] == 'Linux : RHEL') {
                    $SKU = $product_sku['rhel'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), PriceOs($os_data[$i], "os"), "Lic.");
                }

                if ($os_data[$i] == 'Linux : UBUNTU') {
                    $SKU = $product_sku['ubuntu'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                }

                if ($os_data[$i] == 'Linux : CENTOS') {
                    $SKU = $product_sku['centos'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), 0, "Lic.");
                }

                if ($os_data[$i] == 'Linux : SUSE') {
                    $SKU = $product_sku['suse'];
                    $Products[$j][] = tblRow("Operating System", $os_data[$i], get_OS($os_data[$i]), PriceOs($os_data[$i], "os"), "Lic.");
                }
            }

            foreach ($vmqty[$j] as $i => $val) {
                if ($db_data[$i] == 'MS SQL Standard') {
                    $SKU = $product_sku['ms_std'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'MS SQL Enterprise') {
                    $SKU = $product_sku['ms_ent'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'MS SQL WEB') {
                    $SKU = $product_sku['ms_web'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 2), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'MY SQL Community') {
                    $SKU = $product_sku['my_com'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'MY SQL Standard') {
                    $SKU = $product_sku['my_std'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'MY SQL Enterprise') {
                    $SKU = $product_sku['my_ent'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 4), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Postgre SQL Enterprise') {
                    $SKU = $product_sku['post_ent'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Postgre SQL Community') {
                    $SKU = $product_sku['post_com'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Oracle SQL Standard') {
                    $SKU = $product_sku['orc_std'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 8), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Oracle SQL Enterprise') {
                    $SKU = $product_sku['orc_ent'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i], 1), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Mongo DB Community') {
                    $SKU = $product_sku['mong_com'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Maria DB Community') {
                    $SKU = $product_sku['mar_com'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                }
                if ($db_data[$i] == 'Other') {
                    $SKU = $product_sku['mar_com'];
                    $Products[$j][] = tblRow("Database", $db_data[$i], get_DB($db_data[$i]), PriceOs($db_data[$i], "db"), " Lic.");
                }
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
                $SKU = $product_sku['backup_age'];
                $Products[$j][] = tblRow("Software", 'Backup Agent', array_sum($agentqty[$j]), $_Prices[$j]['Software']['Backup Agent']);

                $Sku_Data[$estmtname[$j]]['Software'][$product_sku['backup_age']] = array_sum($agentqty[$j]);
            }
            if (isset($drm_tool[$j])) {
                $SKU = $product_sku['drm_tool'];
                $drm_tool_qty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
                $Products[$j][] = tblRow("Software", 'DRM Tool', $drm_tool_qty, $_Prices[$j]['Software']['DRM Tool']);
                $Sku_Data[$estmtname[$j]]['Software'][$product_sku['drm_tool']] = $drm_tool_qty;
            }
        }
        if (isset($iops1[$j]) || isset($iops3[$j]) || isset($iops5[$j]) || isset($iops8[$j]) || isset($iops10[$j]) || !empty($backupstrg[$j]) || isset($tape_lib[$j]) || isset($tape_cart[$j]) || isset($fire_cab[$j])) {
            $c = 'A.' . $no = $no + 1;
            $c .= ' +';
            tblHead("Storage and Backup Services");

            if (isset($iops03[$j])) {
                $SKU = $product_sku['iops_03'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit03[$j], 300), $iops03qty[$j], $_Prices[$j]['Storage Solution'][strg_iops($strgunit03[$j], 300)], $strgunit03[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_03']] = ($strgunit03[$j] == 'TB') ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]);
            }
            if (isset($iops1[$j])) {
                $SKU = $product_sku['iops_1'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit1[$j], 1000), $iops1qty[$j], $Infrastructure['Storage Solution'][strg_iops($strgunit1[$j], 1000)], $strgunit1[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_1']] = ($strgunit1[$j] == 'TB') ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]);
            }

            if (isset($iops3[$j])) {
                $SKU = $product_sku['iops_3'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit3[$j], 3000), $iops3qty[$j], $_Prices[$j]['Storage Solution'][strg_iops($strgunit3[$j], 3000)], $strgunit3[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_3']] = ($strgunit3[$j] == 'TB') ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]);
            }

            if (isset($iops5[$j])) {
                $SKU = $product_sku['iops_5'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit5[$j], 5000), $iops5qty[$j], $_Prices[$j]['Storage Solution'][strg_iops($strgunit5[$j], 5000)], $strgunit5[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_5']] = ($strgunit5[$j] == 'TB') ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]);
            }

            if (isset($iops8[$j])) {
                $SKU = $product_sku['iops_8'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit8[$j], 8000), $iops8qty[$j], $_Prices[$j]['Storage Solution'][strg_iops($strgunit8[$j], 8000)], $strgunit8[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_8']] = ($strgunit8[$j] == 'TB') ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]);
            }
            if (isset($iops10[$j])) {
                $SKU = $product_sku['iops_10'];
                $Products[$j][] = tblRow("Additional Storage", strg_iops($strgunit10[$j], 10000), $iops10qty[$j], $_Prices[$j]['Storage Solution'][strg_iops($strgunit10[$j], 10000)], $strgunit10[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_10']] = ($strgunit10[$j] == 'TB') ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j]);
            }
            if (!empty($backupstrg[$j])) {
                $SKU = $product_sku['backup_gb'];
                $Products[$j][] = tblRow("Backup Storage", 'Backup Space', $backupstrg[$j], $_Prices[$j]['Storage Solution']['Backup Space'], $backupunit[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['backup_gb']] = ($backupunit[$j] == 'TB') ? intval($backupstrg[$j]) * 1024 : intval($backupstrg[$j]);
            }
            if (!empty($arc_strg[$j])) {
                $SKU = $product_sku['arc_strg_gb'];
                $Products[$j][] = tblRow("Archival Storage", 'Archival Space', $arc_strg[$j], $_Prices[$j]['Storage Solution']['Archival Space'], $archival_unit[$j]);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['arc_strg_gb']] = ($archival_unit[$j] == 'TB') ? intval($arc_strg[$j]) * 1024 : intval($arc_strg[$j]);
            }
            if (isset($tape_lib[$j])) {
                $SKU = $product_sku['tl'];
                $Products[$j][] = tblRow('Offline Backup', 'Offline Backup Solution Tape Library', $_Prices[$j]['Storage Solution']['Offline Backup Solution Tape Library'], $product_prices['tl']);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tl']] = $tlqty[$j];
            }

            if (isset($tape_cart[$j])) {
                $SKU = $product_sku['tc'];
                $Products[$j][] = tblRow('Offline Backup', 'Offline Backup Solution Tape Cartridge', $_Prices[$j]['Storage Solution']['Offline Backup Solution Tape Cartridge'], $product_prices['tc']);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['tc']] = $tcqty[$j];
            }

            if (isset($fire_cab[$j])) {
                $SKU = $product_sku['fc'];
                $Products[$j][] = tblRow('Offline Backup', 'Offline Backup Solution Fireproof cabinate', $_Prices[$j]['Storage Solution']['Offline Backup Solution Fireproof cabinate'], $product_prices['fc']);
                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['fc']] = $fcqty[$j];
            }
        }
        if (isset($rack[$j]) || isset($rated[$j]) || isset($metered[$j]) || isset($cage[$j]) || isset($bio[$j]) || isset($pdu[$j]) || isset($cctv[$j])) {
            $c = 'A.' . $no = $no + 1;
            $c .= ' +';
            tblHead("Colocation Services");
            if (isset($rack[$j])) {
                $SKU = $product_sku['rack_space'];
                $Products[$j][] = tblRow('Services', 'Rack Space', $rackqty[$j], $_Prices[$j]['Colocation']['Rack Space'], "U");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rack_space']] = ($rackqty[$j]);
            }
            if (isset($metered[$j])) {
                $SKU = $product_sku['metered_power'];
                $Products[$j][] = tblRow('Services', 'Metered Power', $meteredqty[$j], $_Prices[$j]['Colocation']['metered_power'], "Power Unit");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['metered_power']] = ($meteredqty[$j]);
            }
            if (isset($rated[$j])) {
                $SKU = $product_sku['rated_power'];
                $Products[$j][] = tblRow('Services', 'Rated Power', $ratedqty[$j], $_Prices[$j]['Colocation']['rated_power'], "Power Unit");
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['rated_power']] = ($ratedqty[$j]);
            }

            if (isset($cage[$j])) {
                $SKU = $product_sku['cage'];
                $Products[$j][] = tblRow('Services', 'Cage For RACK', $cageqty[$j], $_Prices[$j]['Colocation']['cage']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['cage']] = ($cageqty[$j]);
            }
            if (isset($bio[$j])) {
                $SKU = $product_sku['bio'];
                $Products[$j][] = tblRow('Services', 'Bio-matrix for Cage', $bioqty[$j], $_Prices[$j]['Colocation']['bio']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['bio']] = ($bioqty[$j]);
            }
            if (isset($pdu[$j])) {
                $SKU = $product_sku['pdu'];
                $Products[$j][] = tblRow('Services', 'PDU Meter', $pduqty[$j], $_Prices[$j]['Colocation']['pdu']);
                $Sku_Data[$estmtname[$j]]['Colocation'][$product_sku['pdu']] = ($pduqty[$j]);
            }

            if (isset($cctv[$j])) {
                $SKU = $product_sku['cctv'];
                $Products[$j][] = tblRow('Services', 'CCTV Camera fo Rack', $cctvqty[$j], $_Prices[$j]['Colocation']['cctv']);
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
                    $Products[$j][] = tblRow('Services', 'Public IP Address : ' . $publicip_vers[$j][$i], array_sum($publicip_qty[$j]), $_Prices[$j]['Network Solution']['ip']);
                    $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ip']] = array_sum($publicip_qty[$j]);
                }

                if (isset($private_data[$j][$i])) {
                    $Products[$j][] = tblRow('Services', 'Private IP Address : ' . $privateip_vers[$j][$i], array_sum($privateip_qty[$j]), 0);
                    $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['private_ip']] = array_sum($privateip_qty[$j]);
                }
            }
            if (!empty($bandwidth[$j])) {
                $bandInt = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? 'speed_band' : 'volume_band';
                $bandUnit = ($bandwidthType[$j] == 'Speed Based Internet Bandwidth') ? ' Mbps' : ' GB';
                $SKU = $product_sku[$bandInt];
                $Products[$j][] = tblRow('Services', $bandwidthType[$j], $bandwidth[$j], $_Prices[$j]['Network Solution']['bandwidth'], $bandUnit);
                $Infrastructure['Network Solution']['bandwidth'] = intval($product_prices[$bandInt]) * intval($bandwidth[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku[$bandInt]] = $bandwidth[$j];
            }
            if (!empty($ccptqty[$j])) {
                $SKU = $product_sku['ccpt'];
                $Products[$j][] = tblRow('Services', "Cross Connect and Port Termination", $ccptqty[$j], $_Prices[$j]['Network Solution']['ccpt']);
                $Infrastructure['Network Solution']['ccpt'] = intval($product_prices['ccpt']) * intval($ccptqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ccpt']] = $ccptqty[$j];
            }

            if (isset($rep_link[$j])) {
                $SKU = "CNPP000000000000";
                $Products[$j][] = tblRow('Services', $rep_link_type[$j] . ' Replication Link', $rep_link_qty[$j], $_Prices[$j]['Network Solution']['rep_link'], "Mbps");
                $Infrastructure['Network Solution']['rep_link'] = intval($rep_link_qty[$j]) * get_Price($rep_link_type[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution']['CNPP000000000000'] = $rep_link_qty[$j];
            }

            if (!empty($ipsec[$j])) {
                $SKU = $product_sku['ipsec'];
                $Products[$j][] = tblRow('Services', 'Virtual Private Network (VPN) : IPSEC', $ipsecqty[$j], $_Prices[$j]['Network Solution']['ipsec']);
                $Infrastructure['Network Solution']['ipsec'] = intval($ipsecqty[$j]) * $product_prices['ipsec'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ipsec']] = $ipsecqty[$j];
            }

            if (!empty($sslvpn[$j])) {
                $SKU = $product_sku['sslvpn'];
                $Products[$j][] = tblRow('Services', 'Virtual Private Network (VPN) : SSL', $sslvpnqty[$j], $_Prices[$j]['Network Solution']['sslvpn']);
                $Infrastructure['Network Solution']['sslvpn'] = intval($sslvpnqty[$j]) * $product_prices['ssl_vpn'];
                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ssl_vpn']] = $sslvpnqty[$j];
            }

            if (!empty($lb[$j])) {
                $SKU = 'INLBPLCI00000000';
                $Products[$j][] = tblRow('Services', 'Load Balancer', $lbqty[$j], $_Prices[$j]['Network Solution']['lb']);
                $Infrastructure['Network Solution']['lb'] = get_Price($lb[$j]) * intval($lbqty[$j]);
                $Sku_Data[$estmtname[$j]]['Network Solution']['INLBPLCI00000000'] = $lbqty[$j];
            }
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

            if (!empty($newAV)) {
                $SKU = "ESAVAHMA00000000";
                $avPrice = (preg_match('/HIPS/', $newAV)) ? 1200 : 300;
                $Products[$j][] = tblRow('Services', $newAV, array_sum($av_count), $_Prices[$j]['Security Solution']['av']);
                $Sku_Data[$estmtname[$j]]['Security Solution']['ESAVAHMA00000000'] = array_sum($av_count);
            }
            if (isset($ext_firewall[$j])) {
                $SKU = get_Price($efv_throughput[$j], 'sku_code');
                $throughput = preg_split('/:/', $efv_throughput[$j]);
                $efvName = ((isset($utm[$j])) ? ('vUTM ') : ('')) . "External Firewall - {$throughput[1]} Throughput";
                $Products[$j][] = tblRow('Services', $efvName, $extfvqty[$j], $_Prices[$j]['Security Solution']['efw']);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($efv_throughput[$j], 'sku_code')] = $extfvqty[$j];
            }
            if (isset($int_fv[$j])) {
                $SKU = get_Price($ifv_throughput[$j], 'sku_code');
                $throughput = preg_split('/:/', $ifv_throughput[$j]);
                $ifvName = "Internal Firewall - {$throughput[1]} Throughput";
                $Products[$j][] = tblRow('Services', $ifvName, $intfvqty[$j], $_Prices[$j]['Security Solution']['ifw']);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ifv_throughput[$j], 'sku_code')] = $intfvqty[$j];
            }
            if (isset($ddos[$j])) {
                $SKU = get_Price($ddos_throughput[$j], 'sku_code');
                $ddosName = "DDoS Mitigation up to 1 Gbps Mitigation";
                $Products[$j][] = tblRow('Services', $ddosName, 1, $_Prices[$j]['Security Solution']['ddos']);

                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ddos_throughput[$j], 'sku_code')] = 1;
            }
            if (isset($waf[$j])) {
                $SKU = get_Price($waf_name[$j], 'sku_code');
                $Products[$j][] = tblRow('Services', $waf_name[$j], $wafqty[$j], $_Prices[$j]['Security Solution']['waf']);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($waf_name[$j], 'sku_code')] = $wafqty[$j];
            }
            if (isset($tfa[$j])) {
                $SKU = $product_sku['tfa'];
                $Products[$j][] = tblRow('Services', "Two Factor Authentication", $tfaqty[$j], $_Prices[$j]['Security Solution']['tfa']);
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['tfa']] = $tfaqty[$j][1];
            }
            if (isset($sslcert[$j])) {
                $SKU = get_Price($ssl[$j], 'sku_code');
                $Products[$j][] = tblRow('Services', 'SSL Certificate : ' . $ssl[$j], $sslqty[$j], $_Prices[$j]['Security Solution']['ssl']);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ssl[$j], 'sku_code')] = $sslqty[$j];
            }
            if (isset($siem[$j])) {
                $SKU = get_Price($siem_name[$j], 'sku_code');
                $siemqty =
                    array(
                        (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
                        intval($intfvqty[$j]) + intval($extfvqty[$j]),
                        intval($wafqty[$j]),
                        intval($lbqty[$j]),
                        ($hsm[$j] && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : (0)
                    );
                $info = "<i class='fa fa-info-circle  float-right' title='
VM Quantity -  $siemqty[0]  
Internal & External Firewall -  $siemqty[1]  
Web App Firewall -  $siemqty[2]  
Load Balancer -  $siemqty[3]  
HSM -  $siemqty[4]'  ></i>";
                $Products[$j][] = tblRow("Services", "SIEM ", array_sum($siemqty), $_Prices[$j]['Security Solution']['siem']);
                $Infrastructure['Security Solution']['siem'] = array_sum($siemqty) * get_Price($siem_name[$j]);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($siem_name[$j], 'sku_code')] = array_sum($siemqty);
                $info = '';
            }
            if (isset($pim[$j])) {
                $SKU = $product_sku['pim'];
                $Products[$j][] = tblRow("Services", "PIM ", $pimqty[$j], $_Prices[$j]['Security Solution']['pim']);
                $Infrastructure['Security Solution']['pim'] = intval($pimqty[$j]) * $product_prices['pim'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['pim']] = $pimqty[$j];
            }
            if (isset($vtm[$j])) {
                $SKU = get_Price($vtmqty[$j], 'sku_code');
                $Products[$j][] = tblRow("Services", "VTM Scan ( {$vtmqty[$j]} )", 1, $_Prices[$j]['Security Solution']['vtm']);
                $Infrastructure['Security Solution']['vtm'] = get_Price($vtmqty[$j]);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vtmqty[$j], 'sku_code')] = 1;
            }
            if (isset($vapt[$j])) {
                $SKU = get_Price($vapt_type[$j], 'sku_code');
                $Devices =
                    array(
                        (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0,
                        intval($intfvqty[$j]) + intval($extfvqty[$j]),
                        intval($wafqty[$j]),
                        intval($lbqty[$j]),
                        (isset($hsm[$j]) && $hsmtype[$j] == 'Dedicated HSM') ? intval($hsmqty[$j]) : 0
                    );

                $info = "<i class='fa fa-info-circle  float-right' title='
VM Quantity -  $Devices[0]  
Internal & External Firewall -  $Devices[1]  
Web App Firewall -  $Devices[2]  
Load Balancer -  $Devices[3]  
HSM -  $Devices[4]'  ></i>";

                $vaptName = $vapt_type[$j] . ' ' . $vapt_frequency[$j] . ' ' . $vaptqty[$j];
                $Products[$j][] = tblRow("Services", $vaptName, array_sum($Devices), $_Prices[$j]['Security Solution']['vapt']);
                $Infrastructure['Security Solution']['vapt'] = array_sum($Devices) * get_Price($vapt_type[$j]);
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vapt_type[$j], 'sku_code')] = array_sum($Devices);
                $info = '';
            }
            if (isset($hsm[$j])) {
                $SKU = get_Price($hsmtype[$j], 'sku_code');
                $Products[$j][] = tblRow("Services", $hsmtype, $hsmqty[$j], $_Prices[$j]['Security Solution']['hsm']);
                $Infrastructure['Security Solution']['hsm'] = intval($hsmqty[$j]) * $product_prices['hsm'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($hsmtype[$j], 'sku_code')] = $hsmqty[$j];
            }
            if (isset($iam[$j])) {
                $SKU = $product_sku['iam'];
                $Products[$j][] = tblRow("Services", "IAM", $iamqty[$j], $_Prices[$j]['Security Solution']['iam']);
                $Infrastructure['Security Solution']['iam'] = intval($iamqty[$j]) * $product_prices['iam'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['iam']] = $iamqty[$j];
            }
            if (isset($dlp[$j])) {
                $SKU = $product_sku['dlp'];
                $Products[$j][] = tblRow("Services", "DLP", $dlpqty[$j], $_Prices[$j]['Security Solution']['dlp']);
                $Infrastructure['Security Solution']['dlp'] = intval($dlpqty[$j]) * $product_prices['dlp'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dlp']] = $dlpqty[$j];
            }
            if (isset($edr[$j])) {
                $SKU = $product_sku['edr'];
                $Products[$j][] = tblRow("Services", "EDR", $edrqty[$j], $_Prices[$j]['Security Solution']['edr']);
                $Infrastructure['Security Solution']['edr'] = intval($edrqty[$j]) * $product_prices['edr'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['edr']] = $edrqty[$j];
            }
            if (isset($dam[$j])) {
                $SKU = $product_sku['dam'];
                $Products[$j][] = tblRow("Services", "DAM", $damqty[$j], $_Prices[$j]['Security Solution']['dam']);
                $Infrastructure['Security Solution']['dam'] = intval($damqty[$j]) * $product_prices['dam'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['dam']] = $damqty[$j];
            }
            if (isset($sor[$j])) {
                $SKU = $product_sku['sor'];
                $Products[$j][] = tblRow("Services", "SOR", $sorqty[$j], $_Prices[$j]['Security Solution']['sor']);
                $Infrastructure['Security Solution']['sor'] = intval($sorqty[$j]) * $product_prices['sor'];
                $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku['sor']] = $sorqty[$j];
            }
        }
        $f = 'A.' . $no = $no + 1;
        tblHead("Managed Services");

        if (isset($rep_link_mgmt[$j])) {
            $replication_mgmt = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        } else {
            $replication_mgmt = 0;
        }
        if (isset($osmgmt[$j]) && !empty($os[$j])) {
            foreach ($os as $i => $val) {
                if (preg_match('/Windows/', $os[$j][$i])) {
                    $os_mgmt_name[] = 'Windows';
                    $os_mgmt_qty['Windows'][] = $vmqty[$j][$i];
                    $mgmtINT['Windows'] = 'win_os_mg';
                    // echo $vmqty[ $j ][ $i ];
                }
                if (preg_match('/RHEL/', $os[$j][$i])) {
                    $os_mgmt_name[] = 'RHEL';
                    $os_mgmt_qty['RHEL'][] = $vmqty[$j][$i];
                    $mgmtINT['RHEL'] = 'rhel_os_mg';
                }
                if (preg_match('/SUSE/', $os[$j][$i])) {
                    $os_mgmt_name[] = 'SUSE';
                    $os_mgmt_qty['SUSE'][] = $vmqty[$j][$i];
                    $mgmtINT['SUSE'] = 'suse_os_mg';
                }
                if (preg_match('/UBUNTU/', $os[$j][$i])) {
                    $os_mgmt_name[] = 'UBUNTU';
                    $os_mgmt_qty['UBUNTU'][] = $vmqty[$j][$i];
                    $mgmtINT['UBUNTU'] = 'ubuntu_os_mg';
                }
                if (preg_match('/CENTOS/', $os[$j][$i])) {
                    $os_mgmt_name[] = 'CENTOS';
                    $os_mgmt_qty['CENTOS'][] = $vmqty[$j][$i];
                    $mgmtINT['CENTOS'] = 'centos_os_mg';
                }
            }
            $os_mgmt_data = (!empty($os_mgmt_name)) ? array_values(array_unique($os_mgmt_name)) : null;
        }

        if (isset($dbmgmt[$j]) && !empty($db[$j])) {
            foreach ($db[$j] as $i => $val) {
                if (preg_match('/MS SQL/', $db[$j][$i])) {
                    $db_mgmt_name[] = 'MS SQL';
                    $db_mgmt_qty['MS SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['MS SQL'] = 'ms_db_mg';
                }
                if (preg_match('/MY SQL/', $db[$j][$i])) {
                    $db_mgmt_name[] = 'MY SQL';
                    $db_mgmt_qty['MY SQL'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['MY SQL'] = 'my_db_mg';
                }
                if (preg_match('/Postgre/', $db[$j][$i])) {
                    $db_mgmt_name[] = 'Postgre';
                    $db_mgmt_qty['Postgre'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['Postgre'] = 'pg_db_mg';
                }
                if (preg_match('/Oracle/', $db[$j][$i])) {
                    $db_mgmt_name['Oracle'] = 'Oracle';
                    $db_mgmt_qty['Oracle'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['Oracle'] = 'orc_db_mg';
                }
                if (preg_match('/Mongo/', $db[$j][$i])) {
                    $db_mgmt_name['Mongo'] = 'Mongo';
                    $db_mgmt_qty['Mongo'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['Mongo'] = 'mong_db_mg';
                }
                if (preg_match('/Maria/', $db[$j][$i])) {
                    $db_mgmt_name['Maria'] = 'Maria';
                    $db_mgmt_qty['Maria'][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                    $mgmtINT['Maria'] = 'mar_db_mg';
                }
            }
            $db_mgmt_data = (!empty($db_mgmt_name)) ? array_values(array_unique($db_mgmt_name)) : null;
        }
        if (isset($strgmgmt[$j])) {
            $strgmgmtqty = array(
                ($strgunit03[$j] == 'TB') ? intval($iops03qty[$j]) * 1024 : intval($iops03qty[$j]),
                ($strgunit1[$j] == 'TB') ? intval($iops1qty[$j]) * 1024 : intval($iops1qty[$j]),
                ($strgunit3[$j] == 'TB') ? intval($iops3qty[$j]) * 1024 : intval($iops3qty[$j]),
                ($strgunit5[$j] == 'TB') ? intval($iops5qty[$j]) * 1024 : intval($iops5qty[$j]),
                ($strgunit8[$j] == 'TB') ? intval($iops8qty[$j]) * 1024 : intval($iops8qty[$j]),
                ($strgunit10[$j] == 'TB') ? intval($iops10qty[$j]) * 1024 : intval($iops10qty[$j])
            );
        } else {
            $strgmgmtqty = array();
        }

        if (isset($backup_mgmt[$j]) && !empty($backupstrg[$j])) {
            $backmgmtqty = (!empty($vmqty[$j])) ? array_sum($vmqty[$j]) : 0;
        } else
            $backmgmtqty = 0;

        if (isset($lbmgmt[$j]) && !empty($lbqty[$j])) {
            $lbmgmtqty = $lbqty[$j];
        } else
            $lbmgmtqty = 0;

        if (isset($fvmgmt[$j])) {
            if (!empty($intfvqty[$j])) {
                $fvmgmtqty = intval($intfvqty[$j]) + intval($extfvqty[$j]);
            } else {
                $fvmgmtqty = intval($extfvqty[$j]);
            }
        } else
            $fvmgmtqty = 0;

        if (isset($wafmgmt[$j]) && !empty($wafqty[$j])) {
            $wafmgmtqty = $wafqty[$j];
        } else
            $wafmgmtqty = 0;

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

        tblRow('Services', 'One Time Infrastructure Setup', '', '', "");


        if (isset($osmgmt[$j]) && !empty($os_mgmt_name)) {
            for ($i = 0; $i < count($os_mgmt_data); $i++) {
                $SKU = $product_sku[$mgmtINT[$os_mgmt_data[$i]]];
                $Products[$j][] = tblRow("Services", $os_mgmt_data[$i] . ' OS Managed Services', array_sum($os_mgmt_qty[$os_mgmt_data[$i]]), $_Prices[$j]['Managed Services'][$mgmtINT[$os_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$mgmtINT[$os_mgmt_data[$i]]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]);
            }
        }
        if (isset($dbmgmt[$j]) && !empty($db_mgmt_data)) {
            for ($i = 0; $i < count($db_mgmt_data); $i++) {
                $SKU = $product_sku[$mgmtINT[$db_mgmt_data[$i]]];
                $name = $db_mgmt_data[$i] . ' Database Managed Services (Up to 100 GB)';
                $Products[$j][] = tblRow("Service", $name, array_sum($db_mgmt_qty[$db_mgmt_data[$i]]), $_Prices[$j]['Managed Services'][$mgmtINT[$db_mgmt_data[$i]]]);
                $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$mgmtINT[$db_mgmt_data[$i]]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]);
                $managed_services[$mgmtINT[$db_mgmt_data[$i]]] = array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$db_mgmt_data[$i]]]);
            }
        }
        if (isset($strgmgmt[$j])) {
            $SKU = $product_sku['st_mg'];
            $Products[$j][] = tblRow("Service", "Storage Management Per TB'", floor(array_sum($strgmgmtqty) / 1024), $_Prices[$j]['Managed Services']["st_mg"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['st_mg']] = floor(array_sum($strgmgmtqty) / 1024);
        }
        if (isset($backup_mgmt[$j])) {
            $SKU = $product_sku['back_mg'];
            $Products[$j][] = tblRow("Service", 'Backup Management - per Instance', $backmgmtqty, $_Prices[$j]['Managed Services']["back_mg"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['back_mg']] = $backmgmtqty;
        }
        if (isset($rep_link_mgmt[$j])) {
            $SKU = $product_sku['rep_mgmt'];
            $Products[$j][] = tblRow("Service", 'Replication Service Management', $replication_mgmt, $_Prices[$j]['Managed Services']['rep_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['rep_mgmt']] = $replication_mgmt;
        }

        if (isset($dr_drill[$j])) {
            $SKU = $product_sku['dr_drill'];
            $Products[$j][] = tblRow("Service", 'DR Drill Per Year', $drill_qty, $_Prices[$j]['Managed Services']["dr_drill"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['dr_drill']] = $drill_qty[$j];
        }

        if (isset($lbmgmt[$j])) {
            $SKU = $product_sku['lb_mg'];
            $Products[$j][] = tblRow("Service", 'Load Balancer Management', $lbmgmtqty, $_Prices[$j]['Managed Services']['lb_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['lb_mg']] = $lbmgmtqty;
        }
        if (isset($fvmgmt[$j])) {
            $name = ((isset($utm[$j])) ? 'vUTM ' : '') . "FireWall Management";
            $INT = (isset($utm[$j])) ? 'utm_fv_mg' : 'fv_mg';
            $SKU = $product_sku[$INT];
            $Products[$j][] = tblRow("Service", $name, $fvmgmtqty, $_Prices[$j]['Managed Services']["fw_mgmt"]);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku[$INT]] = $fvmgmtqty;
        }
        if (isset($wafmgmt[$j])) {
            $SKU = $product_sku['waf_mg'];
            $Products[$j][] = tblRow("Service", "Web Application Firewall Management", $wafmgmtqty, $_Prices[$j]['Managed Services']['waf_mgmt']);
            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['waf_mg']] = $wafmgmtqty;
        }

        if (isset($EstmDATA['emagic'][$j])) {
            $SKU = $product_sku['emagic'];
            $info = "<i class='fa fa-info-circle  float-right' title='
Load Balancer - $emagicqty[0]
Internal & External Firewall - $emagicqty[1]
Web App Firewall - $emagicqty[2]
VM Quantity - $emagicqty[3]
Cross Connect & Port Termination - $emagicqty[4] 
Bandwidth Monitoring - $emagicqty[5] '></i>";
            $name = 'eMagic Monitoring ' . $emagic_type[$j];
            $Products[$j][] = tblRow("Services", $name, array_sum($emagicqty), $_Prices[$j]['Managed Services']['emagic']);
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
                <td class='colspan unshareable ' colspan='2'></td>
                <td class='colspan unshareable ' colspan='2'></td>
            </tr>
        <?php }
        ?>
        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> Managed Services [ <?= $f ?> ] </td>
            <td class='colspan unshareable' colspan='2'></td>
            <td class='colspan unshareable' colspan='2'></td>
        </tr>

        <tr>
            <td class='unshareable'>
                <?= $m = $m + 1 ?>
            </td>
            <td class='colspan final unshareable' colspan='3'> One Time Cost </td>
            <td class='colspan unshareable' colspan='2'></td>
            <td class='colspan unshareable' colspan='2'></td>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 207, 203);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 207, 203);'> Total [ Monthly ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='total_monthly'></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 207, 203);' id='total_monthly'></th>
        </tr>
        <tr>
            <th class=' final unshareable' style='background-color: rgb(255, 226, 182);'> </th>
            <th class=' final colspan except unshareable' colspan='3' style='background-color: rgb(255, 226, 182);'> Total [ For <?= $period[$j] ?> Months ]</th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);'></th>
            <th class=' colspan except unshareable' colspan='2' style='background-color: rgb(255, 226, 182);'></th>
        </tr>
    </table>
    <script>
        $("#perce_<?= $j ?>").on("click", function() {
            $obj = {
                action: "Discount",
                discountVal: $("#DiscountPercetage_<?= $j ?>").val(),
                Total: "<?= $_Prices[$j]['MonthlyTotal'] ?>",
                data: "<?= base64_encode(json_encode($Products[$j])) ?>"
            };
            DiscountingAjax($obj);
        })
    </script>
<?php
    $I_M[$j] = $Infrastructure;
    $I_M[$j]['Managed Services'] = $managed_services;
}



function tblRow($Service, $Product, $Quantity, $MRC, $Unit = "NO", $OTC = '')
{
    global $j, $product_sku, $SKU, $info;
    // echo gettype($OTC);
?>
    <tr>
        <td><?php echo $Service; ?></td>
        <td class='final'><?php echo $Product . $info; ?></td>
        <td class='qty'><?php echo $Quantity . " " . $Unit; ?></td>
        <td class='cost unshareable'><?php
                                        try {
                                            $P = floatval($MRC) / floatval($Quantity);
                                            INR($P);
                                        } catch (DivisionByZeroError  $e) {
                                            INR(0);
                                        }
                                        ?></td>
        <td class="mrc_<?= $j ?> unshareable">
            <?php
            try {
                INR($MRC);
            } catch (TypeError $e) {
                INR(0);
            }
            ?></td>
            <td class='discount unshareable' id='disc'></td>
        <td class='DiscountedMrc unshareable'></td>
        <td class='unshareable' id='otc'><?php (!empty($OTC)) ? INR($OTC) : '' ?></td>
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
    global $$Feild, $j, $_Prices, $vmqty;
    foreach ($vmqty[$j] as $i => $val) {
        if ($$Feild[$j][$i] == $SW) {
            $Price[] = $_Prices[$j]["VM{$i}"][$$Feild[$j][$i]];
        }
    }
    // print_r($Price);
    return array_sum($Price);
}

// echo "<pre>";print_r($Products);echo"</pre>";
?>


<script>
    function DiscountingAjax(DATA) {
        $.ajax({
            type: "post", //http method
            url: "../controller/discounting.php",
            dataType: "TEXT",
            data: DATA,
            success: function(res) {
                console.log(res)
            }
        })
    }
</script>