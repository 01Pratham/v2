<?php

function get_OS($sw_name, $core_devide = 1, $price = 1, $Data = 'Price')
{
  global $os, $vcore_data, $value, $vmqty, $final_qty, $j;
  $final_qty = array();
  $core_data = array();
  $vmqty_data = array();
  foreach ($vmqty[$j] as $i => $value) {
    if ($os[$j][$i] == $sw_name) {
      $vmqty_data[$i] = $vmqty[$j][$i];
      if (empty($vmqty_data[$i])) {
        array_pop($vmqty_data);
      }
      if (preg_match("/win/", $sw_name)) {
        $core_data[$i] = $vcore_data[$i];
        if (empty($core_data[$i])) {
          array_pop($core_data);
        }
        $final_qty[$i] = ($core_data[$i] * $vmqty_data[$i]) / $core_devide;
      } else {
        $final_qty[$i] = $vmqty_data[$i];
        // echo ($vmqty_data[$i])."\n";
      }
    }
  }
  if ($Data == "SKU") {
    $value = $final_qty;
  } else {
    $value = intval(array_sum($final_qty)) * intval($price);
  }
  return $value;
}


function get_DB($sw_name, $core_devide = 1, $price = 1, $Data = 'price')
{
  global $db, $vcore_data, $vmname, $vmqty, $value, $final_qty, $state, $j;
  $final_qty = array();
  $core_data = array();
  $vmqty_data = array();
  foreach ($vmqty[$j] as $i => $value) {
    if ($db[$j][$i] == $sw_name) {
      $core_data[$i] = $vcore_data[$i];
      $vmqty_data[$i] = $vmqty[$j][$i];
      if (preg_match('/ms/', $sw_name)) {
        $state_data[$i] = $state[$j][$i];
        if ($state_data[$i] == "Passive") {
          $core_data[$i] = 0;
        } elseif ($state_data[$i] == "Active-Passive") {
          $vmqty_data[$i] = $vmqty[$j][$i] / 2;
        }
        $final_qty[$i] = (intval($core_data[$i]) * intval($vmqty_data[$i])) / $core_devide;
      } else if (preg_match("/Community/", $sw_name)) {
        $final_qty[$i] = intval($vmqty_data[$i]);
      } else {
        $final_qty[$i] = ($core_data[$i] * $vmqty_data[$i]) / $core_devide;
      }
    }
  }
  if ($Data == "SKU") {
    $value = $final_qty;
  } else {
    $value = intval(array_sum($final_qty)) * intval($price);
  }
  return $value;
}

function get_Price($prod, $act = "price")
{
  global $con, $_POST;
  $query = mysqli_query($con, "SELECT * FROM `product_list` WHERE `prod_int` = '{$prod}'");
  $val = mysqli_fetch_assoc($query);
  if ($act == "price") {
    $price = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `rate_card_id` = '{$_POST['product_list']}' AND `prod_id` = '{$val['id']}' "));
    return $price['price'];
  } else {
    return $val[$act];
  }
}

function get_strg($unit, $price = 1, $qty = 1)
{
  if ($unit == "TB") {
    return (floatval($qty) * 1024) * $price;
  } else {
    return floatval($price) * floatval($qty);
  }
}

function strg_iops($unit, $iops)
{
  if ($unit == 'TB') {
    return "Storage Space with " . ($iops * 1000) . " IOPS";
  } else {
    return "Storage Space with " . ($iops) . " IOPS";
  }
}


function ManagedServices($service, $service_qty)
{
  if (isset($service)) {
    if (!empty($service_qty)) {
    }
  }
}

$db_cal = array(
  'ms_ent' => 2,
  'ms_web' => 2,
  'ms_std' => 2,
  'my_com' => NULL,
  'my_std' => 4,
  'my_ent' => 4,
  'post_ent' => 1,
  'post_com' => NULL,
  'orc_std' => 8,
  'orc_ent' => 8,
  'mong_com' => NULL,
  'mar_com' => NULL
);


if (!function_exists('SkuList')) {
  function SkuList()
  {
    // include 'constants.php';
    require '../model/database.php';
    global $vmname, $j, $product_sku, $db_cal, $vCore, $vRam, $vDisk, $vmqty, $diskType, $os, $db, $region, $product_prices,$_DiscountedData;
    // $product_prices = priceTbl($region[$j])["product_prices"];
    $prod_cat = priceTbl($region[$j])["prod_cat"];
    $Sku_Data = array();
    foreach ($vmname[$j] as $i => $nameVal) {
      $Sku_Data["VM" . $i]['Group_Name'] = $vmname[$j][$i];

      $Sku_Data["VM" . $i][$product_sku['vcpu_static']] = [
        "qty" => $vCore[$j][$i],
        "discount" => !empty($_DiscountedData)? GetDiscountedPercentage(($vCore[$j][$i] * $vmqty[$j][$i]), $product_prices["vcpu_static"]  , "{$i}VM_{$j}__CPU") :0 
      ];
      $Sku_Data["VM" . $i][$product_sku['vram_static']] = [
        "qty" => $vRam[$j][$i],
        "discount" => !empty($_DiscountedData)? GetDiscountedPercentage(($vRam[$j][$i] * $vmqty[$j][$i]), $product_prices["vram_static"] , "{$i}VM_{$j}__RAM") :0 
      ];
      $Sku_Data["VM" . $i][$product_sku[$diskType[$j][$i]]] = [
        "qty" => $vDisk[$j][$i],
        "discount" => !empty($_DiscountedData)? GetDiscountedPercentage(($vDisk[$j][$i] * $vmqty[$j][$i]), $product_prices[$diskType[$j][$i]] , "{$i}VM_{$j}__Disk") :0 
      ];
  
      foreach ($prod_cat as $int => $cat) {
        if ($cat == "os") {
          if ($os[$j][$i] == $int) {
            $Sku_Data["VM" . $i][$product_sku[$int]] = [
              "qty" => get_OS($os[$j][$i], 2, '', 'SKU')[$i],
              "discount" => !empty($_DiscountedData)? GetDiscountedPercentage(get_OS($os[$j][$i], 2, '', 'SKU')[$i], $product_prices[$os[$j][$i]] , "{$int}_{$j}")  :0 
            ];
          }
        }
        if ($cat == 'db') {
          if ($db[$j][$i] == $int) {
            $Sku_Data["VM" . $i][$product_sku[$int]] = [
              "qty" => get_DB($db[$j][$i], $db_cal[$db[$j][$i]], '', 'SKU')[$i],
              "discount" => !empty($_DiscountedData)? GetDiscountedPercentage(get_DB($db[$j][$i], $db_cal[$db[$j][$i]], '', 'SKU')[$i], $product_prices[$db[$j][$i]] , "{$int}_{$j}")  :0 
            ];
          }
        }
      }
      $Sku_Data["VM" . $i]['Quantity'] = $vmqty[$j][$i];
    }
    return $Sku_Data;
  }
}

if (!function_exists('GroupPrice')) {
  function GroupPrice()
  {
    // require '../controller/constants.php';
    require '../model/database.php';

    global $vmname, $j, $i, $db_cal, $vCore, $vRam, $vDisk, $vmqty, $os, $db, $region;
    $product_prices = priceTbl($region[$j])["product_prices"];
    $prod_cat = priceTbl($region[$j])["prod_cat"];
    $products = priceTbl($region[$j])["products"];
    $PriceData = array();
    $Infrastructure['VM' . $i][$vmname[$j][$i]] = intval($vmqty[$j][$i]) * $price;
    foreach ($prod_cat as $int => $cat) {
      foreach ($products as $new_int => $product) {
        // echo $new_int;
        if ($new_int == $int) {
          if ($cat == "os") {
            if ($os[$j][$i] == $new_int) {
              $PriceData["VM" . $i]["os"] = get_OS($os[$j][$i], 2, $product_prices[$new_int], "SKU")[$i] * $product_prices[$new_int];
              // print_r($product_prices[$new_int]);
            }
          }
          if ($cat == 'db') {
            if ($db[$j][$i] == $new_int) {
              $PriceData["VM" . $i]["db"] = get_DB($db[$j][$i], $db_cal[$db[$j][$i]], $product_prices[$new_int], "SKU")[$i] * $product_prices[$new_int];
            }
          }
        }
      }
    }
    return $PriceData;
  }
}





function GetDiscountedPercentage(int $Quantity, int $Price, $ID = "")
{
    global $_DiscountedData, $j, $DiscountingId;
    ($ID != "" &&  !preg_match("/VM_{$j}__|CPU|RAM|Disk/", $ID)) ? $DiscountingId = $ID : '';

    $MRC = $Quantity * $Price;
    $percentage = 0;
    try {
        if($MRC != 0){
            if(preg_match("/VM_{$j}__/", $ID)){
              $i = preg_replace("/VM_{$j}__|CPU|RAM|Disk/", "", $ID);
              $D = preg_replace("/{$i}VM_{$j}__/", "", $ID);
              $percentage = (100 - ((floatval($_DiscountedData[$j]["Data"]["VM{$i}_{$j}"][$D]) / $MRC) * 100));
              // $percentage = $MRC;
            }else{
              $percentage = (100 - ((floatval($_DiscountedData[$j]["Data"][$DiscountingId]) / $MRC) * 100));
            }
        }
    } catch (DivisionByZeroError $e) {
        $percentage =  0;
    }
    
    return strval(round($percentage, 2));
}