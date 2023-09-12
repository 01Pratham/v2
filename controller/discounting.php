<?php

require "../model/database.php";
require "Currency_Format.php";

if (isset($_POST['action']) && $_POST['action'] == "Discount") {
    // print_r($_POST);
    $discountPercentage = $_POST['discountVal'];
    $months = $_POST[''];
    $Total = $_POST['Total'];
    $Data = json_decode(base64_decode($_POST['data']), true);
    $maxDiscountTotal = array();
    $newTotal = array();
    foreach ($Data as $Index => $Arr) {
        if (is_array($Arr)) {
            foreach ($Arr as $Key => $Val) {
                if (is_array($Val)) {
                    $maxDiscountTotal[] = Product($Val['SKU'])["discountable_price"] * (intval($Val["Quantity"]) * intval($Arr['QTY']));
                    $inputPrices[] = Product($Val['SKU'])["input_price"];
                    $Prices[] = Product($Val['SKU'])["price"];
                    $newTotal[] = $Val['MRC'] * $Arr["QTY"];
                    $Quantity[] = intval($Val["Quantity"]) * intval($Arr['QTY']);
                } else {
                    if ($Key == "SKU") {
                        $maxDiscountTotal[] = Product($Arr['SKU'])["discountable_price"] * $Arr["Quantity"];
                        $inputPrices[] = Product($Arr['SKU'])["input_price"];
                        $Prices[] = Product($Arr['SKU'])["price"];
                        $newTotal[] = $Arr['MRC'];
                        $Quantity[] = $Arr["Quantity"];
                    }
                }
            }
        }
    }
    $discountToBeGiven = (array_sum($newTotal) * floatval($discountPercentage));
    $avgDiscPerc = floatval($discountToBeGiven) / array_sum($maxDiscountTotal);
    $DiscountedMrcArr = array();
    foreach ($Data as $Index => $Arr) {
        if (is_array($Arr)) {
            foreach ($Arr as $Key => $Val) {
                if (is_array($Val)) {
                    $DiscountedMrcArr[$Index][] = (
                        (floatval($Val["MRC"]) * floatval($Arr["QTY"])) - 
                            (((floatval(Product($Val['SKU'])["discountable_price"]) * floatval($Arr["QTY"])) * 
                                floatval($Val["Quantity"])) * 
                                    floatval($avgDiscPerc)));
                } else {
                    if ($Key == "SKU") {
                        $DiscountedMrcArr[$Index] = 
                        floatval($Arr['MRC']) - 
                            ((Product($Arr['SKU'])["discountable_price"] * floatval($Arr['Quantity'])) * 
                                floatval($avgDiscPerc));
                    }
                }
            }
        }
    }
    foreach ($DiscountedMrcArr as $KEY => $VAL) {
        if (is_array($VAL)) {
            $DiscountedMrcArr[$KEY] = INR(round(array_sum($VAL),2) , "return");
        } elseif ($VAL < 0) {
            $DiscountedMrcArr[$KEY] = INR(0,"return");
        }else{
            $DiscountedMrcArr[$KEY] = INR(round($VAL , 2) , "return");
        }

    }
}


function Product($SKU)
{
    global $con;
    $getProdId = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `price_list` WHERE `sku_code` = '{$SKU}'"));
    $getPrices = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `prod_id` = '{$getProdId['id']}'"));

    return $getPrices;
}



// print_r($DiscountedMrcArr);
echo json_encode($DiscountedMrcArr,JSON_PRETTY_PRINT);  