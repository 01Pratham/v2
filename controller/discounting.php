<?php
require "Currency_Format.php";
require "../model/database.php";
$_POST = array(
    'action' => 'Discount',
    'discountVal' => 20,
    'Total' => 438492.8,
    'data' => array(
        'VM0' => array(
            0 => array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 12,
                'MRC' => 900,
            ),
            1 => array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 => array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
        ),
        'VM1' => array(
            0 => array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            1 => array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 => array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
        ),
        'VM2' => array(
            0 => array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            1 => array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 => array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
        ),
        'VM3' => array(
            0 => array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 4,
                'MRC' => 300,
            ),
            1 => array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            2 => array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
        ),
        'VM4' => array(
            0 => array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 12,
                'MRC' => 900,
            ),
            1 => array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 => array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
        ),
        0 => array(
            'Product' => 'Windows Standard Edition',
            'SKU' => 'SOWSSE0000000000',
            'Quantity' => 28,
            'MRC' => 14560,
        ),
        1 => array(
            'Product' => 'Linux : UBUNTU',
            'SKU' => 'SOLOUB0000000000',
            'Quantity' => 1,
            'MRC' => 0,
        ),
        2 => array(
            'Product' => 'MS SQL Standard',
            'SKU' => 'SOMQSE0000000000',
            'Quantity' => 16,
            'MRC' => 270400,
        ),
        3 => array(
            'Product' => 'Backup Space',
            'SKU' => 'STBS000000000000',
            'Quantity' => 0.8,
            'MRC' => 3276.8,
        ),
        4 => array(
            'Product' => 'Public IP Address : Public IPv6',
            'SKU' => 'INIPPII600000000',
            'Quantity' => 9,
            'MRC' => 9000,
        ),
        5 => array(
            'Product' => 'Speed Based Internet Bandwidth',
            'SKU' => 'CNIBSB0000000000',
            'Quantity' => 50,
            'MRC' => 25000,
        ),
        6 => array(
            'Product' => 'Cross Connect and Port Termination',
            'SKU' => 'CNNR000000000000',
            'Quantity' => 2,
            'MRC' => 4200,
        ),
        7 => array(
            'Product' => 'Load Balancer',
            'SKU' => 'INLBPLCI00000000',
            'Quantity' => 2,
            'MRC' => 9600,
        ),
        8 => array(
            'Product' => 'Anti-Virus + HIPS',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 7,
            'MRC' => 8400,
        ),
        9 => array(
            'Product' => 'Windows OS Managed Services',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 4,
            'MRC' => 6000,
        ),
        10 => array(
            'Product' => 'MS SQL Database Managed Services (Up to 100 GB)',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 4,
            'MRC' => 22000,
        ),
        11 => array(
            'Product' => 'Storage Management Per TB\'',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 2,
            'MRC' => 3000,
        ),
        12 => array(
            'Product' => 'Backup Management - per Instance',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 7,
            'MRC' => 2100,
        ),
        13 => array(
            'Product' => 'Load Balancer Management',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 2,
            'MRC' => 3000,
        ),
        14 => array(
            'Product' => 'vUTM FireWall Management',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 0,
            'MRC' => 0,
        ),
        15 => array(
            'Product' => 'Web Application Firewall Management',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 0,
            'MRC' => 0,
        ),
        16 => array(
            'Product' => 'eMagic Monitoring Basic',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 12,
            'MRC' => 3600,
        ),
    )
);

if (isset($_POST['action']) && $_POST['action'] == "Discount") {
    // print_r($_POST);
    $discountPercentage = $_POST['discountVal'];
    $Total = $_POST['Total'];
    // $Data = base64_decode($_POST['data']);
    // $arr = json_decode($Data,true);
    $Data = $_POST['data'];
    // echo "<pre>";
    // print_r($Data);
    $avg = (($Total / count($Data)) * $discountPercentage) / 100;
    echo $avg."<br>";

    foreach ($Data as $index => $arr) {
        if (is_array($arr)) {
            foreach ($arr as $K => $V) {
                if (is_array($V)) {
                    $maxDisc = Product($V['SKU'])['discountable_price'] * $V['Quantity'];
                    if ($maxDisc > 0) {
                        if ($maxDisc >= $avg) {
                            $DiscountedPrices[$V['SKU']] = $V["MRC"] - $avg;
                        } elseif ($maxDisc < $avg) {
                            $DiscountedPrices[$V['SKU']] = $maxDisc;
                            $RemainingAvg = $avg - $maxDisc;
                            $avg = $avg + $RemainingAvg;
                        }
                    }
                    // print_r($V['SKU']);
                }else {
                    echo $avg."\n";
                    $maxDisc = Product($arr['SKU'])['discountable_price'] * $arr['Quantity'];
                    if ($maxDisc > 0) {
                        if ($maxDisc >= $avg) {
                            $DiscountedPrices[$arr['SKU']] = $arr["MRC"] - $avg;
                        } elseif ($maxDisc < $avg) {
                            $DiscountedPrices[$arr['SKU']] = $maxDisc;
                            $RemainingAvg = $avg - $maxDisc;
                            $avg = $avg + $RemainingAvg;
                        }
                    }
                }
            }
        } 
        // echo $index;
    }
}

// print_r($DiscountedPrices);
function Product($SKU)
{
    global $con;
    $getProdId = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `price_list` WHERE `sku_code` = '{$SKU}'"));
    $getPrices = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `prod_id` = '{$getProdId['id']}'"));

    return $getPrices;
}
