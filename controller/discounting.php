<?php

require "Currency_Format.php";
require "../model/database.php";
$_POST = array(
    'action' => 'Discount',
    'discountVal' => 0.05,
    'Total' => 404236.8,
    'data' => array(
        'VM0' =>
        array(
            0 =>
            array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 12,
                'MRC' => 900,
            ),
            1 =>
            array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 =>
            array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
            'QTY' => '01',
        ),
        'VM1' =>
        array(
            0 =>
            array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            1 =>
            array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 =>
            array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
            'QTY' => '02',
        ),
        'VM2' =>
        array(
            0 =>
            array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 4,
                'MRC' => 300,
            ),
            1 =>
            array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            2 =>
            array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
            'QTY' => '01',
        ),
        'VM3' =>
        array(
            0 =>
            array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 8,
                'MRC' => 600,
            ),
            1 =>
            array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 =>
            array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
            'QTY' => '02',
        ),
        'VM4' =>
        array(
            0 =>
            array(
                'product' => 'CPU',
                'SKU' => 'CCVCVS0000000000',
                'Quantity' => 12,
                'MRC' => 900,
            ),
            1 =>
            array(
                'product' => 'RAM',
                'SKU' => 'CCVRAT0000000000',
                'Quantity' => 32,
                'MRC' => 2400,
            ),
            2 =>
            array(
                'product' => 'Disk',
                'SKU' => 'STBT1P0000000000',
                'Quantity' => 100,
                'MRC' => 300,
            ),
            'QTY' => '01',
        ),
        0 =>
        array(
            'Product' => 'Windows Standard Edition',
            'SKU' => 'SOWSSE0000000000',
            'Quantity' => 28,
            'MRC' => 14560,
        ),
        1 =>
        array(
            'Product' => 'Linux : UBUNTU',
            'SKU' => 'SOLOUB0000000000',
            'Quantity' => 1,
            'MRC' => 0,
        ),
        2 =>
        array(
            'Product' => 'MS SQL Standard',
            'SKU' => 'SOMQSE0000000000',
            'Quantity' => 16,
            'MRC' => 270400,
        ),
        3 =>
        array(
            'Product' => 'Backup Space',
            'SKU' => 'STBS000000000000',
            'Quantity' => 0.8,
            'MRC' => 3276.8,
        ),
        4 =>
        array(
            'Product' => 'Public IP Address : Public IPv6',
            'SKU' => 'INIPPII600000000',
            'Quantity' => 9,
            'MRC' => 9000,
        ),
        5 =>
        array(
            'Product' => 'Speed Based Internet Bandwidth',
            'SKU' => 'CNIBSB0000000000',
            'Quantity' => 50,
            'MRC' => 25000,
        ),
        6 =>
        array(
            'Product' => 'Cross Connect and Port Termination',
            'SKU' => 'CNNR000000000000',
            'Quantity' => 2,
            'MRC' => 4200,
        ),
        7 =>
        array(
            'Product' => 'Load Balancer',
            'SKU' => 'INLBPLCI00000000',
            'Quantity' => 2,
            'MRC' => 9600,
        ),
        8 =>
        array(
            'Product' => 'Anti-Virus + HIPS',
            'SKU' => 'ESAVAHMA00000000',
            'Quantity' => 7,
            'MRC' => 8400,
        ),
        9 =>
        array(
            'Product' => 'Windows OS Managed Services',
            'SKU' => 'MSOYWI0000000000',
            'Quantity' => 2,
            'MRC' => 3000,
        ),
        10 =>
        array(
            'Product' => 'UBUNTU OS Managed Services',
            'SKU' => 'MSOYLIUB00000000',
            'Quantity' => 1,
            'MRC' => 1500,
        ),
        11 =>
        array(
            'Product' => 'MS SQL Database Managed Services (Up to 100 GB)',
            'SKU' => 'MSDMMQ0000000000',
            'Quantity' => 4,
            'MRC' => 22000,
        ),
        12 =>
        array(
            'Product' => 'Storage Management Per TB\'',
            'SKU' => 'MSTN000000000000',
            'Quantity' => 2,
            'MRC' => 3000,
        ),
        13 =>
        array(
            'Product' => 'Backup Management - per Instance',
            'SKU' => 'MSBM000000000000',
            'Quantity' => 7,
            'MRC' => 2100,
        ),
        14 =>
        array(
            'Product' => 'Load Balancer Management',
            'SKU' => 'MSNMLMVI00000000',
            'Quantity' => 2,
            'MRC' => 3000,
        ),
        15 =>
        array(
            'Product' => 'vUTM FireWall Management',
            'SKU' => 'MSEGFWUM00000000',
            'Quantity' => 0,
            'MRC' => 0,
        ),
        16 =>
        array(
            'Product' => 'Web Application Firewall Management',
            'SKU' => 'MSEGEVWB00000000',
            'Quantity' => 0,
            'MRC' => 0,
        ),
        17 =>
        array(
            'Product' => 'eMagic Monitoring Basic',
            'SKU' => 'SOCMEO0000000000',
            'Quantity' => 12,
            'MRC' => 3600,
        ),
    )
);

if (isset($_POST['action']) && $_POST['action'] == "Discount") {
    // print_r($_POST);
    $discountPercentage = $_POST['discountVal'];
    $Total = $_POST['Total'];
    $Data = $_POST['data'];
    $maxDiscountTotal = array();
    $newTotal = array();
    foreach ($Data as $Index => $Arr) {
        if (is_array($Arr)) {
            foreach ($Arr as $Key => $Val) {
                if (is_array($Val)) {
                    $maxDiscountTotal[] = Product($Val['SKU'])["discountable_price"];
                    $newTotal[] = $Val['MRC'] * $Arr["QTY"];
                } else {
                    if ($Key == "SKU") {
                        $maxDiscountTotal[] = Product($Arr['SKU'])["discountable_price"];
                        $newTotal[] = $Arr['MRC'];
                    }
                }
            }
        }
    }
    $discountToBeGiven = (floatval($Total) * floatval($discountPercentage));

    $avgDiscPerc = floatval($discountToBeGiven) / array_sum($maxDiscountTotal);
print_r($maxDiscountTotal);
    echo "$discountToBeGiven  ".array_sum($maxDiscountTotal);
    // echo array_sum($maxDiscountTotal);
    // if (array_sum($maxDiscountTotal) >= $discountToBeGiven) {
        $DiscountedMrcArr = array();
        foreach ($Data as $Index => $Arr) {
            if (is_array($Arr)) {
                foreach ($Arr as $Key => $Val) {
                    if (is_array($Val)) {
                        // echo (Product($Val['SKU'])["discountable_price"] * $Arr["QTY"])* $Arr[0]["Quantity"] ."\n";
                        // echo $avgDiscPerc." ";
                        $DiscountedMrcArr[$Index] =
                            ((((Product($Val['SKU'])["discountable_price"] * $Arr["QTY"]) * $Arr[0]["Quantity"]) * $avgDiscPerc)) +
                            ((((Product($Val['SKU'])["discountable_price"] * $Arr["QTY"]) * $Arr[1]["Quantity"]) * $avgDiscPerc)) +
                            ((((Product($Val['SKU'])["discountable_price"] * $Arr["QTY"]) * $Arr[2]["Quantity"]) * $avgDiscPerc));
                    } else {
                        if ($Key == "SKU") {
                            $DiscountedMrcArr[$Index] = floatval($Arr['MRC']) - ((Product($Arr['SKU'])["discountable_price"] * $Arr['Quantity']) * $avgDiscPerc);
                        }
                    }
                }
            }
        }
        foreach ($DiscountedMrcArr as $KEY => $VAL) {
            if ($VAL < 0) {
                $DiscountedMrcArr[$KEY] = 0;
            }
        }
                    echo "
                <div style = 'display: inline-block'>
                <pre>";
                    print_r(($DiscountedMrcArr));
                    echo "Total : - " . array_sum($DiscountedMrcArr);

                    echo "
                </pre>
                </div>
                ";

                    echo "
                <div style = 'display: inline-block'>
                <pre>";

                    print_r(($newTotal));
                    echo "Total : - " . array_sum($newTotal);

                    echo "
                </pre>
                </div>
                ";
    // } else {
        // echo "<h1><b>Sorry, Discount cannot be given</b></h1>";
    // }
}


function Product($SKU)
{
    global $con;
    $getProdId = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `price_list` WHERE `sku_code` = '{$SKU}'"));
    $getPrices = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `prod_id` = '{$getProdId['id']}'"));

    return $getPrices;
}


// $dta = base64_decode($_POST["data"]);
// print_r(json_decode($dta,true));

/* 
floatval($Arr[0]["MRC"] * $Arr["QTY"]) -
floatval($Arr[1]["MRC"] * $Arr["QTY"]) - 
floatval($Arr[2]["MRC"] * $Arr["QTY"])  - 
*/