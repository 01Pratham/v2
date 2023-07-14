<?php
session_start();
if (!isset($_SESSION['emp_code'])) {
    require "../view/session_expired.php";
    exit();
}
$_SESSION['post_data'] = $_POST;
$ProjectTotal = array();
$MothlyTotal = array();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESDS Configurator</title>
    <!-- <link rel="stylesheet" href="../css/nav.css"> -->
    <?php
    require '../model/database.php';
    require '../controller/constants.php';
    require '../controller/json_format.php';
    require '../controller/Currency_Format.php';
    require '../view/includes/header.php';
    ?>

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="../asset/logo.png" type="image/x-icon"> -->
    <link rel="stylesheet" href="../css/submit.css">


</head>


<body class="sidebar-mini layout-fixed sidebar-collapse" data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed style="height: auto; overflow-x: hidden;">

    <?php
    require "../view/includes/nav.php";
    ?>


    <div class="content-wrapper except bg-transparent">
        <?php
        require '../view/content-header.php';
        contentHeader('Quotation');
        ?>
        <div class="content Main except ">
            <div class="container-fluid except full" style="zoom : 65%">
                <div class="errors except container" style="max-width: 2020px; margin: auto; ">
                </div>


                <?php
                // exit();
                // echo '<pre>';
                // print_r($_POST);
                // echo '</pre>';
                // echo gettype($estmtname);
                $Sku_Data = array();
                for ($j = 1; $j <= count($estmtname); $j++) {
                    $a = "A." . $no = 1;
                    $Infrastructure = array();

                ?>
                    <table class="final-tbl table except" id="final-tbl<?= $j ?>">
                        <tr hidden>
                            <!-- <td><span class="logo">ESDS - Estimate</span></td> -->
                            <!-- <td><img src="../asset/logo.png" alt=""></td> -->
                        </tr>
                        <tr>
                            <th class='colspan except noExl' colspan="7" style="font-size: 30px;"><?= $estmtname[$j] ?></th>
                        </tr>
                        <tr>
                            <th class="except" id="sr"><?= "A." . $no;
                                                        $a = "A." . $no . " + "; ?></th>
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
                            $sr_no = trim(substr($instance[$j][$i], 0, 4));
                            if (preg_match('/:/', $sr_no)) {
                                $sr_no = preg_replace('/:/', '', $sr_no);
                            }
                            $cost_rows = mysqli_fetch_assoc(mysqli_query($con, 'SELECT * FROM `tbl_pack` WHERE `sr_no` = "' . $sr_no . '" AND `region` = "' . $region[$j][$i] . '" '));
                            if ($series[$j][$i] == 'Flexible Compute') {
                                // echo "fiehf{$j}".$i;
                                $vcore = $cpu[$j][$i];
                                array_push($vcore_data, $vcore);
                                // print_r($vcore_data);
                                $instance[$j][$i] = "vCores {$cpu[$j][$i]} | RAM  {$ram[$j][$i]} GB | Disk - 1000 IOPS -  {$disk[$j][$i]} GB ";
                                $price = (($product_prices['cpu'] * intval($cpu[$j][$i])) + ($product_prices['ram'] * intval($ram[$j][$i])) + ($product_prices['iops_1'] * intval($disk[$j][$i])));
                                // print_r($cpu[$]);

                                $vCore[$j][$i] = $cpu[$j][$i];
                                $vRam[$j][$i] = $ram[$j][$i];
                                $vDisk[$j][$i] = $disk[$j][$i];
                            } else {
                                $vCore[$j][$i] = $cost_rows['vCores'];
                                $vRam[$j][$i] = $cost_rows['ram'];
                                $vDisk[$j][$i] = $cost_rows['disk'];



                                $vcore = $cost_rows['vCores'];
                                array_push($vcore_data, $vcore);
                                $price = intval($cost_rows['price']);
                            }
                        ?>
                            <tr>
                                <td><?php echo $vmname[$j][$i] . " - " . $region[$j][$i] . " - " . $sector[$j][$i] . " " . $state[$j][$i]; ?></td>
                                <td class="final" class="final"><?php echo $instance[$j][$i] . " | OS : " . $os[$j][$i] . " | DB : " . $db[$j][$i];  ?></td>
                                <td class="qty"><?php echo intval($vmqty[$j][$i]) . "  NO  "; ?></td>
                                <td class="cost unshareable" class="unshareable"><?php INR($price); ?></td>
                                <td class="discount unshareable" id></td>
                                <td class="mrc unshareable" id="vm-mrc"><?php INR(intval($vmqty[$j][$i]) * $price);
                                                                        $Infrastructure[$vmname[$j][$i]][$vmname[$j][$i]] = intval($vmqty[$j][$i]) * $price;
                                                                        ?></td>
                                <td class="unshareable" id="otc"><? ?></td>
                            </tr>
                        <?php
                        }
                        ?>

                        <tr>

                            <th class="except" id="sr"> <?php $b = "A." . $no = $no + 1;
                                                        $b .= " + ";
                                                        echo "A." . $no; ?></th>
                            <th class="except" id="comp">Software Licenses</th>
                            <th class="except" id="unit">Unit</th>
                            <th class="unshareable except" id="cost">Cost/Unit</th>
                            <th class="unshareable except" id='disc-head'>Discount %</th>
                            <th class="unshareable except" id="mrc">Monthly Cost</th>
                            <th class="unshareable except" id='otc'>OTC</th>
                        </tr>
                        <?php

                        require_once '../controller/calculations.php';
                        $os_data =  array_values(array_unique($os[$j]));
                        $db_data =  array_values(array_unique($db[$j]));

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
                                    <td class="qty"><?php show(get_DB($db_data[$i], 2)); ?></td>
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
                                    <td class="qty"><?php show(get_DB($db_data[$i], 2)); ?></td>
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
                                    <td class="qty"><?php show(get_DB($db_data[$i], 2)); ?></td>
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
                                <td class="final"><?php echo "Backup Agent "; ?></td>
                                <td class="qty"><?php echo array_sum($agentqty[$j]) . "  NO  "; ?></td>
                                <td class="cost unshareable"><?php INR($product_prices['backup_age']); ?></td>
                                <td class="discount unshareable" id="disc"></td>
                                <td class="mrc unshareable"><?php INR(array_sum($agentqty[$j]) * $product_prices['backup_age']);
                                                            $Infrastructure['Software']['agent'] = array_sum($agentqty[$j]) * $product_prices['backup_age'];
                                                            $Sku_Data[$estmtname[$j]]['Software'][$product_sku['backup_age']] = array_sum($agentqty[$j]);
                                                            ?></td>
                                <td class="unshareable" id="otc"><? ?></td>
                            </tr>
                        <?php }
                        if (isset($drm_tool[$j])) {
                            $drm_tool_qty = array_sum($vmqty[$j]);
                        ?>
                            <tr>
                                <td><?php echo "DRM Tool"; ?></td>
                                <td class="final"><?php echo "DRM Tool"; ?></td>
                                <td class="qty"><?php echo $drm_tool_qty . "  NO  "; ?></td>
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
                                                            $c .= " + ";
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
                                        $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_03']] = ($strgunit03[$j] == "TB") ? intval($iops03qty[$j]) * 1024 : intval($iops1qty[$j]);
                                        ?> </td>
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
                                        $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_1']] =  intval($iops1qty[$j]);
                                        ?> </td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_3']] = intval($iops3qty[$j]); ?></td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_5']] = intval($iops5qty[$j]); ?></td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_8']] = intval($iops8qty[$j]); ?></td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['iops_10']] = intval($iops10qty[$j]); ?></td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['backup_gb']] = intval($backupstrg[$j]); ?></td>
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
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['arc_strg_gb']] = intval($arc_strg[$j]); ?></td>
                                    <td class="unshareable" id="otc"><? ?></td>
                                </tr>
                            <?php }

                            if (isset($tape_lib[$j])) {
                            ?>
                                <tr>
                                    <td><?php echo "Offline Backup"; ?></td>
                                    <td class="final"><?php echo "Offline Backup Solution Tape Library"; ?></td>
                                    <td class="qty"><?php echo $tlqty[$j] . "  NO  "; ?></td>
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
                                    <td class="qty"><?php echo $tcqty[$j] . "  NO  "; ?></td>
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
                                    <td class="qty"><?php echo $fcqty[$j] . "  NO  "; ?></td>
                                    <td class="cost unshareable"><?php INR($product_prices['fc']); ?></td>
                                    <td class="discount unshareable" id="disc"></td>
                                    <td class="mrc unshareable"><?php INR(intval($fcqty[$j]) * $product_prices['fc']);
                                                                $Infrastructure['Storage Solution']['cabinate'] = intval($fcqty[$j]) * $product_prices['fc'];
                                                                $Sku_Data[$estmtname[$j]]['Storage Solution'][$product_sku['fc']] = $fcqty[$j]; ?></td>
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

                        if (isset($ip_public[$j]) || isset($ip_private[$j]) || !empty($bandwidth[$j]) || !empty($ccptqty[$j])  || !empty($vpn[$j]) || !empty($lb[$j]) || !empty($rep_link_type)) { ?>
                            <tr>
                                <th class="except" id="sr"><?php $d = "A." . $no = $no + 1;
                                                            $d .= " + ";
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
                                        <td class="qty"><?php echo array_sum($publicip_qty[$j]) . "  NO  "; ?></td>
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
                                        <td class="qty"><?php echo array_sum($privateip_qty[$j]) . "  NO  "; ?></td>
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
                                    <td class="qty"><?php echo $ccptqty[$j] . "  NO "; ?></td>
                                    <td class="cost unshareable"><?php INR($product_prices['ccpt']); ?></td>
                                    <td class="discount unshareable" id="disc"></td>
                                    <td class="mrc unshareable"><?php INR(intval($product_prices['ccpt']) * intval($ccptqty[$j]));
                                                                $Infrastructure['Network Solution']['ccpt'] = intval($product_prices['ccpt']) * intval($ccptqty[$j]);
                                                                $Sku_Data[$estmtname[$j]]['Network Solution'][$product_sku['ccpt']] =  $ccptqty[$j]; ?></td>
                                    <td class="unshareable" id="otc"><? ?></td>
                                </tr>
                            <?php }

                            if (!empty($rep_link_type[$j])) {
                            ?>
                                <tr>
                                    <td><?php echo "Services"; ?></td>
                                    <td class="final"><?php echo $rep_link_type[$j] . " Replication Link"; ?></td>
                                    <td class="qty"><?php echo $rep_link_qty[$j] . "  Mb/s "; ?></td>
                                    <td class="cost unshareable"><?php INR(get_Price($rep_link_type[$j])); ?></td>
                                    <td class="discount unshareable" id="disc"></td>
                                    <td class="mrc unshareable"><?php get_Price($rep_link_type[$j]);
                                                                $Infrastructure['Network Solution']['rep_link'] = get_Price($rep_link_type[$j]);
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
                                    <td class="qty"><?php echo $ipsecqty[$j] . "  NO  "; ?></td>
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
                                    <td class="qty"><?php echo $sslvpnqty[$j] . "  NO  "; ?></td>
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
                                    <td class="qty"><?php echo $lbqty[$j] . "  NO  "; ?></td>
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
                        } ?>


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
                        <tr>
                            <?php
                            for ($i = 0; $i < count($vmname[$j]); $i++) {
                                if (!empty($av_type[$j][$i])) {
                                    foreach ($av_type[$j] as $key => $val) {
                                        if (empty($val)) {
                                            unset($av_type[$j][$key]);
                                        } else {
                                            $av_type[$j][$key] = $val;
                                            $newAV = $val;
                                            $av_count = 1 * $vmqty[$j][$key];
                                        }
                                    }
                                }
                            }

                            // $count = count($av_count)   
                            // print_r($av_count);
                            if (!empty($newAV)) {
                            ?>
                                <td><?php echo "Services"; ?></td>
                                <td class="final"><?php echo $newAV; ?></td>
                                <td class="qty"><?php echo $av_count . "  NO  "; ?></td>
                                <td class="cost unshareable"><?php INR(get_Price('mc_av')) ?></td>
                                <td class="discount unshareable" id="disc"></td>
                                <td class="mrc unshareable"><?php INR($av_count * get_Price('mc_av'));
                                                            $Infrastructure['Security Solution']['av'] = $av_count * get_Price('mc_av');
                                                            $Sku_Data[$estmtname[$j]]['Security Solution']['ESAVAHMA00000000'] = $av_count;
                                                            ?></td>
                                <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php
                            }
                            if (isset($ext_firewall[$j])) {

                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo (isset($utm[$j])) ? "vUTM " : "";
                                                echo "External Firewall ( {$efv_throughput[$j]} )"; ?></td>
                            <td class="qty"><?php echo $extfvqty[$j] . "  NO  "; ?></td>
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
                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo (isset($utm[$j])) ? "vUTM " : "";
                                                echo "Internal Firewall( {$ifv_throughput[$j]} )"; ?></td>
                            <td class="qty"><?php echo $intfvqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $ddosqty[$j] . "  NO  "; ?></td>
                            <td class="cost unshareable"><?php INR(get_Price($ddos_throughput[$j])); ?></td>
                            <td class="discount unshareable" id="disc"></td>
                            <td class="mrc unshareable"><?php INR(intval($ddosqty[$j]) * get_Price($ddos_throughput[$j]));
                                                        $Infrastructure['Security Solution']['ddos'] = intval($ddosqty[$j]) * get_Price($ddos_throughput[$j]);
                                                        $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($ddos_throughput[$j], "sku_code")] = $ddosqty[$j];
                                                        ?></td>
                            <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php }
                            if (isset($waf[$j])) {
                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo $waf_name[$j] ?></td>
                            <td class="qty"><?php echo $wafqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $tfaqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $sslqty[$j] . "  NO  "; ?></td>
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
                                $siemqty = array_sum($vmqty[$j]) + intval($intfvqty[$j]) + intval($extfvqty[$j]) + intval($wafqty[$j]) + intval($lbqty[$j]) + intval($hsmqty[$j]);

                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo "SIEM"; ?></td>
                            <td class="qty"><?php echo $siemqty . "  NO  "; ?></td>
                            <td class="cost unshareable"><?php INR(get_Price($siem_name[$j])); ?></td>
                            <td class="discount unshareable" id="disc"></td>
                            <td class="mrc unshareable"><?php INR(intval($siemqty) * get_Price($siem_name[$j]));
                                                        $Infrastructure['Security Solution']['siem'] = intval($siemqty) * get_Price($siem_name[$j]);
                                                        $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($siem_name[$j], "sku_code")] = $siemqty;
                                                        ?></td>
                            <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php }
                            if (isset($pim[$j])) {
                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo "PIM"; ?></td>
                            <td class="qty"><?php echo $pimqty[$j] . "  NO  "; ?></td>
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
                                $Devices = array_sum($vmqty[$j]) + intval($intfvqty[$j]) + intval($extfvqty[$j]) + intval($wafqty[$j]) + intval($lbqty[$j]) + intval($hsmqty[$j]);

                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo $vapt_type[$j] . " " . $vaptqty[$j] . " per " . $vapt_frequency[$j]; ?></td>
                            <td class="qty"><?php echo $Devices . " NO"; ?></td>
                            <td class="cost unshareable"><?php INR(get_Price($vapt_type[$j])); ?></td>
                            <td class="discount unshareable" id="disc"></td>
                            <td class="mrc unshareable"><?php INR(intval($Devices) * get_Price($vapt_type[$j]));
                                                        $Infrastructure['Security Solution']['vapt'] = intval($Devices) * get_Price($vapt_type[$j]);
                                                        $Sku_Data[$estmtname[$j]]['Security Solution'][get_Price($vapt_type[$j], "sku_code")] = $Devices; ?></td>
                            <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php }
                            if (isset($hsm[$j])) {
                    ?>
                        <tr>
                            <td><?php echo "Services"; ?></td>
                            <td class="final"><?php echo $hsmtype[$j]; ?></td>
                            <td class="qty"><?php echo $hsmqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $iamqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $dlpqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $edrqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $damqty[$j] . "  NO  "; ?></td>
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
                            <td class="qty"><?php echo $sorqty[$j] . "  NO  "; ?></td>
                            <td class="cost unshareable"><?php INR($product_prices['sor']); ?></td>
                            <td class="discount unshareable" id="disc"></td>
                            <td class="mrc unshareable"><?php INR(intval($sorqty[$j]) * $product_prices['sor']);
                                                        $Infrastructure['Security Solution']['sor'] = intval($sorqty[$j]) * $product_prices['sor'];
                                                        $Sku_Data[$estmtname[$j]]['Security Solution'][$product_sku["sor"]] = $sorqty[$j]; ?></td>
                            <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php } ?>

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
                        $replication_mgmt = array_sum($vmqty[$j]);
                    } else {
                        $replication_mgmt = 0;
                    }
                    if (isset($osmgmt[$j])) {
                        for ($i = 0; $i < count($os[$j]); $i++) {
                            if (preg_match("/Windows/", $os_data[$i])) {
                                $os_mgmt_name[] = "Windows";
                                $os_mgmt_qty["Windows"][] = $vmqty[$j][$i];
                                $mgmtINT["Windows"] = 'win_os_mg';
                            }
                            if (preg_match("/RHEL/", $os_data[$i])) {
                                $os_mgmt_name[] = "RHEL";
                                $os_mgmt_qty["RHEL"][] = $vmqty[$j][$i];
                                $mgmtINT["RHEL"] = 'rhel_os_mg';
                            }
                            if (preg_match("/SUSE/", $os_data[$i])) {
                                $os_mgmt_name[] = "SUSE";
                                $os_mgmt_qty["SUSE"][] = $vmqty[$j][$i];
                                $mgmtINT["SUSE"] = 'suse_os_mg';
                            }
                            if (preg_match("/UBUNTU/", $os_data[$i])) {
                                $os_mgmt_name[] = "UBUNTU";
                                $os_mgmt_qty["UBUNTU"][] = $vmqty[$j][$i];
                                $mgmtINT["UBUNTU"] = 'ubuntu_os_mg';
                            }
                            if (preg_match("/CENTOS/", $os_data[$i])) {
                                $os_mgmt_name[] = "CENTOS";
                                $os_mgmt_qty["CENTOS"][] = $vmqty[$j][$i];
                                $mgmtINT["CENTOS"] = 'centos_os_mg';
                            }
                        }
                        $os_mgmt_data = array_values(array_unique($os_mgmt_name));
                    }

                    if (isset($dbmgmt[$j])) {
                        for ($i = 0; $i < count($db[$j]); $i++) {
                            if (preg_match("/MS SQL/", $db_data[$i])) {
                                $db_mgmt_name[] = "MS SQL";
                                $db_mgmt_qty["MS SQL"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["MS SQL"] = 'ms_db_mg';
                            }
                            if (preg_match("/MY SQL/", $db_data[$i])) {
                                $db_mgmt_name[] = "MY SQL";
                                $db_mgmt_qty["MY SQL"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["MY SQL"] = 'my_db_mg';
                            }
                            if (preg_match("/Postgre  SQL/", $db_data[$i])) {
                                $db_mgmt_name[] = "Postgre  SQL";
                                $db_mgmt_qty["Postgre  SQL"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["Postgre  SQL"] = 'pg_db_mg';
                            }
                            if (preg_match("/Oracle/", $db_data[$i])) {
                                $db_mgmt_name["Oracle"] = "Oracle";
                                $db_mgmt_qty["Oracle"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["Oracle"] = 'orc_db_mg';
                            }
                            if (preg_match("/Mongo/", $db_data[$i])) {
                                $db_mgmt_name["Mongo"] = "Mongo";
                                $db_mgmt_qty["Mongo"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["Mongo"] = 'mong_db_mg';
                            }
                            if (preg_match("/Maria/", $db_data[$i])) {
                                $db_mgmt_name["Maria"] = "Maria";
                                $db_mgmt_qty["Maria"][] = floor(($vmqty[$j][$i] * $vDisk[$j][$i]) / 100);
                                $mgmtINT["Maria"] = 'mar_db_mg';
                            }
                        }
                        $db_mgmt_data = array_values(array_unique($db_mgmt_name));
                    }


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


                    if (isset($dbmgmt[$j])) {
                        foreach (array_keys($db[$j], 'NA') as $key) {
                            unset($db[$j][$key]);
                        }
                        $dbmgmtqty = count($db[$j]);
                    } else $dbmgmtqty = 0;




                    if (isset($backup_mgmt[$j]) && !empty($backupstrg[$j])) {
                        $backmgmtqty = array_sum($vmqty[$j]);
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

                    $emagicqty = array(intval($lbmgmtqty), intval($fvmgmtqty), intval($wafmgmtqty), array_sum($vmqty[$j]), intval($ccptqty[$j]), $bandwidth_monitoring);

                    $managed_services = array(
                        "st_mg" => intval($strgmgmtqty) * intval($product_prices['st_mg']),
                        "back_mg" => intval($backmgmtqty) * intval($product_prices['back_mg']),
                        "rep_mgmt" => $replication_mgmt * $product_prices['rep_mgmt'],
                        "dr_drill" => intval($drill_qty[$j]) * $product_prices['dr_drill'],
                        "lb_mgmt" => intval($lbmgmtqty) * intval($product_prices['lb_mg']),
                        "fw_mgmt" => (isset($utm[$j])) ? $product_prices['utm_fv_mg'] * intval($fvmgmtqty) : $product_prices['fv_mg'] * intval($fvmgmtqty),
                        "waf_mgmt" => intval($wafmgmtqty) * intval($product_prices['waf_mg']),
                        "emagic" => array_sum($emagicqty) * intval($product_prices['emagic'])
                    );
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
                    if (isset($osmgmt[$j])) {
                        for ($i = 0; $i < count($os_mgmt_data); $i++) {
                    ?>
                            <tr class='managed_services'>
                                <td><?php echo "Services"; ?></td>
                                <td class="final"><?php echo $os_mgmt_data[$i] . " OS Managed Services "; ?></td>
                                <td class="qty mng_qty"><?php echo   array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) . "  NO  "; ?></td>
                                <td class="cost unshareable"><?php INR($product_prices[$mgmtINT[$os_mgmt_data[$i]]]); ?></td>
                                <td class="discount unshareable" id="disc"></td>
                                <td class="mrc unshareable"><?php INR(array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$os_mgmt_data[$i]]]));
                                                            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_prices[$mgmtINT[$os_mgmt_data[$i]]]] = $osmgmtqty;
                                                            $managed_services[$mgmtINT[$os_mgmt_data[$i]]] = array_sum($os_mgmt_qty[$os_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$os_mgmt_data[$i]]]);
                                                            ?></td>
                                <td class="unshareable" id="otc"><? ?></td>
                            </tr>
                        <?php }
                    }
                    if (isset($dbmgmt[$j])) {
                        for ($i = 0; $i < count($db_mgmt_data); $i++) {
                        ?>
                            <tr class='managed_services'>
                                <td><?php echo "Services"; ?></td>
                                <td class="final"><?php echo $db_mgmt_data[$i] . " Database Managed Services (Up to 100 GB) "; ?></td>
                                <td class="qty mng_qty"><?php echo   array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) . "  NO  "; ?></td>
                                <td class="cost unshareable"><?php INR($product_prices[$mgmtINT[$db_mgmt_data[$i]]]); ?></td>
                                <td class="discount unshareable" id="disc"></td>
                                <td class="mrc unshareable"><?php INR(array_sum($db_mgmt_qty[$db_mgmt_data[$i]]) * intval($product_prices[$mgmtINT[$db_mgmt_data[$i]]]));
                                                            $Sku_Data[$estmtname[$j]]['Managed Services'][$product_prices[$mgmtINT[$db_mgmt_data[$i]]]] = $dbmgmtqty;
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
                            <td class="qty mng_qty"><?php echo floor(array_sum($strgmgmtqty) / 1024) . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo $backmgmtqty . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo  $replication_mgmt . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo  $drill_qty[$j] . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo $lbmgmtqty . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo $fvmgmtqty . "  NO  "; ?></td>
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
                            <td class="qty mng_qty"><?php echo $wafmgmtqty . "  NO  "; ?></td>
                            <td class="cost unshareable"><?php INR($product_prices['waf_mg']); ?></td>
                            <td class="discount unshareable" id="disc"></td>
                            <td class="mrc unshareable"><?php INR($managed_services['waf_mgmt']);
                                                        $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['waf_mg']] = $wafmgmtqty;
                                                        ?></td>
                            <td class="unshareable" id="otc"><? ?></td>
                        </tr>
                    <?php } ?>


                    <tr class='managed_services'>
                        <td><?php echo "Services"; ?></td>
                        <td class="final"><?php echo "eMagic Monitoring " . $emagic_type[$j]; ?></td>
                        <td class="qty mng_qty"><?php echo array_sum($emagicqty) . "  NO  "; ?></td>
                        <td class="cost unshareable"><?php INR($product_prices['emagic']); ?></td>
                        <td class="discount unshareable" id="disc"></td>
                        <td class="mrc unshareable"><?php INR($managed_services['emagic']);
                                                    $Sku_Data[$estmtname[$j]]['Managed Services'][$product_sku['emagic']] = array_sum($emagicqty);
                                                    ?></td>
                        <td class="unshareable" id="otc"><? ?></td>
                    </tr>

                    <tr>
                        <th style="background: rgba(212,212,212,1); " class="except unshareable"> Sr No . </th>
                        <th class="final colspan except unshareable" colspan="4" style="background: rgba(212,212,212,1); "> Description </th>
                        <th style="background: rgba(212,212,212,1);" class='colspan except unshareable' colspan="2">MRC</th>
                    </tr>
                    <tr>
                        <td class="unshareable"> 1 </td>
                        <td class='colspan  final unshareable' colspan="4"> Infrastructure [ <?= $a . " " ?> <?= $b . " " ?> <?= $c . " " ?> <?= $d . " " ?> <?= $e . " " ?> ]</td>
                        <td class='colspan unshareable ' colspan="2"><?php INR(array_sum($newInfra));
                                                                        ?></td>
                    </tr>
                    <tr>
                        <td class="unshareable"> 2 </td>
                        <td class='colspan final unshareable' colspan="4"> Managed Services [ <?= $f ?> ] </td>
                        <td class='colspan unshareable' colspan="2"><?php INR(array_sum($managed_services));
                                                                    ?></td>
                    </tr>

                    <tr>
                        <td class="unshareable"> 3 </td>
                        <td class='colspan final unshareable' colspan="4"> One Time Cost / Migration </td>
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
                    </table>



                <?php
                    $I_M[$j] =  $Infrastructure;
                    $I_M[$j]['Managed Services'] = $managed_services;
                }
                ?>
                <!-- <div class="container"> -->

                <?php require '../view/summary_table.php' ?>



                <div class="container except d-flex justify-content-center mt-3 py-3">

                    <button class="btn btn-outline-success btn-lg mx-1" id="export"><i class="fa fa-file-excel-o pr-2"></i> Export</button>
                    <button class="btn btn-outline-success btn-lg mx-1" id="exportShareable"><i class="fa fa-file-excel-o pr-2"></i> Export as Shareable</button>
                    <button class="btn btn-outline-success btn-lg mx-1" id="push"><i class="fab fa-telegram-plane pr-2" aria-hidden="true"></i>Push</button>

                    <?php

                    $time = date("Y/m/d h:i:sa");
                    $check = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `pot_id` = '{$_POST['pot_id']}' "));
                    if (!empty($check)) {
                        $Version = $check;
                    ?>
                        <button class="btn btn-outline-success btn-lg mx-1 save" id="save_as"><i class="fas fa-save pr-2"></i> Save as Version</button>
                        <button class="btn btn-outline-success btn-lg mx-1 save" id="update"><i class="fas fa-refresh pr-2"></i> Update</button>
                    <?php } else { ?>
                        <button class="btn btn-outline-success btn-lg mx-1 save" id="save"><i class="fas fa-save pr-2"></i> Save</button>
                    <?php  } ?>
                </div>
                <?php
                $temp =  json_encode(json_template($Sku_Data, $I_M), JSON_PRETTY_PRINT);
                ?>
            </div>
        </div>
    </div>


    <?php require '../view/includes/footer.php'; ?>
    <script src="../javascript/jquery-3.6.4.js"></script>
    <!-- <script src="../javascript/jquery.table2excel.js"></script> -->
    <script src="https://unpkg.com/exceljs/dist/exceljs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>


    <script>
        <?php
        if (UserRole($get_emp["user_role"]) == "User") { ?>
            $('.unshareable').remove();
            $('table').find('.colspan').each(function() {
                // console.log($(this).prop('colspan'))
                if ($(this).prop('colspan') > 4) {
                    // console.log($(this))
                    $(this).attr('colspan', (parseInt($(this).prop('colspan')) - 4))
                } else {
                    $(this).removeAttr('colspan')
                }
            })
        <?php }
        ?>

        $(document).ready(function() {
            $.ajax({
                type: "POST",
                url: "../model/database.php",
                dataType: "TEXT",
                data: {
                    type: "buffer",
                    buffer: <?= array_sum($MothlyTotal) * 0.05 ?>
                },
                success: function(response) {
                    // alert ("Contingency Buffer has been added into your quotation : " + response);
                }
            })
        });



        $('#push').click(function() {
            $.ajax({
                type: 'POST',
                url: "../controller/push.php",
                dataType: "TEXT",
                data: {
                    action: 'push',
                    data: '<?= base64_encode($temp) ?>'
                },
                success: function(response) {
                    $('body').append(response);
                }
            })
        })



        <?php
        if (UserRole($get_emp["user_role"]) == "Super Admin") { ?>

            $('.discount').attr('contentEditable', 'true')
            var mrc = $('#vm-mrc').html();
            $(".discount").keypress(function(e) {
                // console.log(e.keyCode);
                var key = e.keyCode || e.charCode; // ie||others
                if (key == 13) { // if enter key is pressed            
                    $(this).blur();
                    $(this).html();
                }

                $(this).on('blur', function() {
                    if ($(this).html() > 10) {
                        $('.errors').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">Maximum Discount limit is only 10%. <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="remAlert()"><span aria-hidden="true">&times;</span></button></div>')
                        var val = 0;
                        $(this).html(0)
                        // location.reload();
                    } else {
                        var val = $(this).html();
                    }
                    var unit = $(this).parent().find('.qty').html();
                    var cost = $(this).parent().find('.cost').html();
                    var mrc = $(this).parent().find('.mrc');
                    cost = cost.replace(',', "");
                    cost = cost.replace('₹', "");

                    unit = unit.replace('  NO', "")
                    // console.log(cost , unit);
                    $.ajax({
                        type: 'POST',
                        url: "../controller/discounting.php",
                        dataType: 'Text',
                        data: {
                            type: "Discount",
                            percent: val,
                            qty: unit,
                            cost: cost
                        },
                        success: function(response) {
                            // console.log(response);
                            mrc.html(response);
                        }
                    })

                    $('#alert_btn').on('click', function() {
                        $(this).remove();
                    })
                })
            })
        <?php }
        ?>
        $('#final_OTC').attr('contentEditable', 'true');
        $('#final_OTC').on('click', function() {

            var otc = $(this).html();
            $(this).html('(<p class ="alert-danger"> Total Monthly</p> * 12 ) * 5%');
            $('#total_monthly').attr('style', 'background-color: rgb(255, 207, 203); border: 5px red solid;')
            $(this).on('blur', function() {
                $('#total_monthly').removeAttr('style')
                $('#total_monthly').attr('style', 'background-color: rgb(255, 207, 203);')

                $(this).html(otc);
            })
        })

        let sheetNames = {
            <?php
            $i = 1;
            foreach ($estmtname as $key => $val) {
                echo "'sheet{$i}' : '{$val}' ,";
                $i++;
            }
            echo "sheet{$i} : 'Summary Sheet'";
            ?> }
        // console.log(sheetNames);

        $(document).ready(function() {
            $("#export").click(function() {
                var tables = document.querySelectorAll('table');
                convertTablesToExcel(Array.from(tables), "unShareable", sheetNames);
            });

            $("#exportShareable").click(function() {
                var tables = document.querySelectorAll('table');
                convertTablesToExcel(Array.from(tables), "Shareable", sheetNames);
            });

        });

        function remAlert() {
            $('.alert').remove();
        }


        $('.save').click(function() {
            $.ajax({
                type: "POST",
                url: '../model/remove_estmt.php',
                data: {
                    'action': $(this).prop("id"),
                    'emp_id': <?= $_SESSION['emp_code'] ?>,
                    'data': '<?= base64_encode(serialize($_POST)) ?>',
                    'total': '<?= array_sum($ProjectTotal) ?>',
                    'pot_id': '<?= $_POST['pot_id'] ?>',
                    'period': <?= $period[1] ?>

                },
                dataType: "TEXT",
                success: function(response) {
                    alert("Data Saved Successfully");
                }
            });

        })

        $(document).ready(function() {
            $('.full').find('.mng_qty').each(function() {
                var tr_val = $(this).html()
                if (tr_val == '0  NO  ') {
                    // console.log($(this).parent())
                    $(this).parent().find('td').each(function() {
                        $(this).addClass('bg-danger')
                    })
                }
            })
        })


        window.addEventListener('beforeunload',
            function(e) {
                let conf = confirm("Are You sure want to unsave this Estimate ? ");
                if (conf) {} else {
                    e.preventDefault();
                    e.returnValue = '';
                }
            });
    </script>
</body>

</html>