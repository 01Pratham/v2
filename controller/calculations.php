<?php

function get_OS($sw_name, $core_devide = 1, $price = 1, $Data = 'Price')
{
  global $os, $vcore_data, $value, $vmqty, $final_qty, $j;
  $final_qty = array();
  $core_data = array();
  $vmqty_data = array();
  for ($i = 0; $i < count($vmqty[$j]); $i++) {
    $key_os[$j] = array_keys($os[$j], $sw_name);
    array_push($core_data, $vcore_data[$key_os[$j][$i]]);
    array_push($vmqty_data, $vmqty[$j][$key_os[$j][$i]]);
    if (empty($core_data[$i])) {
      array_pop($core_data);
    }
    if (empty($vmqty_data[$i])) {
      array_pop($vmqty_data);
    }
    if ($sw_name == "Windows Datacenter Edition" || $sw_name == "Windows Standard Edition") {
      array_push($final_qty, ($core_data[$i] * $vmqty_data[$i]) / $core_devide);
    } 
    else {
      array_push($final_qty, $vmqty_data[$i]);
    }
    if($Data == "SKU"){
      $value = $final_qty;
      // print_r($value);
    }else{
      $value = array_sum($final_qty) * $price;
    }
  }
    return $value;
  // print_r($vcore_data);
}

function show($func)
{
  if ($func == 1 || $func ==0) {
    echo ($func) . "  License";
  } else {
    echo ($func) . "  Licenses";
  }

  // echo $func;
}


//   function get_qty_linux($sw_name){
//      global $os ,$vmqty,$vmname,$j;
//      for ($i = 0; $i < count($vmname[$j]); $i++){
//       $key_os[$j] = array_keys($os[$j],$sw_name);
//       $li_qty_data[$i] = $vmqty[$j][$key_os[$j][$i]]; 
//       } $final_qty= array_sum($li_qty_data); 
//       echo $final_qty." NO";
//     }


//   function get_linux_price($sw_name, $price){
//      global $os ,$vmqty,$vmname,$j;
//      for ($i = 0; $i < count($vmname[$j]); $i++){
//       $key_os[$j] = array_keys($os[$j],$sw_name);
//       $li_qty_data[$i] = $vmqty[$j][$key_os[$j][$i]]; 
//       } $final_qty= array_sum($li_qty_data); 
//       return $final_qty*$price;
//     }



function get_DB($sw_name, $core_devide = 1, $price = 1, $Data = 'price')
{
  global $db, $vcore_data, $vmname, $vmqty, $value, $final_qty, $state, $j;
  $final_qty = array();
  $core_data = array();
  $vmqty_data = array();
  for ($i = 0; $i < count($vmname[$j]); $i++) {
    $key_db[$j] = array_keys($db[$j], $sw_name);
    array_push($core_data, $vcore_data[$key_db[$j][$i]]);
    array_push($vmqty_data, $vmqty[$j][$key_db[$j][$i]]);
// $sw_name == "MS SQL Enterprise" || $sw_name == "MS SQL Standard" || $sw_name == "MS SQL WEB"
    if (preg_match('/MS SQL/',$sw_name)) {
      $state_data[$i] = $state[$j][$key_db[$j][$i]];
      if ($state_data[$i] == "( Passive )") {
        $core_data[$i] = 0;
      } elseif ($state_data[$i] == "( Active Passive )") {
        $vmqty_data[$i] = $vmqty[$j][$key_db[$j][$i]] / 2;
      } 
      $final_qty[$i] = (intval($core_data[$i]) * intval($vmqty_data[$i])) / $core_devide;
    } 
    else if (preg_match("/Community/" ,$sw_name)) {
      $final_qty[$i] = intval($vmqty_data[$i]);
    } 
    else {
      $final_qty[$i] = ($core_data[$i] * $vmqty_data[$i]) / $core_devide;
    }

    if($Data == "SKU"){
      $value = $final_qty;
      // print_r($value);
    }else{
      $value = array_sum($final_qty) * $price;
    }

     
  }
  return $value;
  
}

//     function get_ms_db_price($sw_name,$core_devide,$price){
//   global $db ,$vcore_data,$vmname,$vmqty,$qty,$final_qty,$state,$j;
//   $final_qty = array();
//   $core_data = array();
//   $vmqty_data = array();
//   for ($i = 0; $i < count($vmname[$j]); $i++){
//     $key_db[$j] = array_keys($db[$j],$sw_name);
//     array_push($core_data, $vcore_data[$key_db[$j][$i]]); 
//     $state_data[$i] = $state[$j][$key_db[$j][$i]];  
//     if ($state_data[$i] == "( Passive )" ){
//       $core_data[$i] = 0;  
//     }
//     elseif ($state_data[$i] == "( Active Passive )"){
//         $vmqty_data[$i]=$vmqty[$j][$key_db[$j][$i]]/2; 
//     }else {
//       array_push($vmqty_data, $vmqty[$j][$key_db[$j][$i]]); 
//     }
//     array_push($final_qty, ($core_data[$i]* $vmqty_data[$i])/$core_devide ); 
//     $qty = array_sum($final_qty);
//   } 

// return $qty*$price;
// }



// function get_qty_db($sw_name){
//   global $db ,$vmqty,$vmname,$j;
//   for ($i = 0; $i < count($vmname[$j]); $i++){
//     $key_db[$j] = array_keys($db[$j],$sw_name);
//     $li_qty_data[$i] = $vmqty[$j][$key_db[$j][$i]]; 
//   } $final_qty= array_sum($li_qty_data); 
//   echo $final_qty." NO";
// }

// function get_ms_price($sw_name,$core_devide,$price){
//   global $os ,$vcore_data,$qty,$vmqty,$final_qty,$j;
//   $final_qty=array();
//   $core_data = array();
//   $vmqty_data = array();
//    for ($i = 0; $i < count($vmqty[$j]); $i++){
//      $key_os[$j] = array_keys($os[$j],$sw_name);
//       array_push($core_data, $vcore_data[$key_os[$j][$i]]); 
//       array_push($vmqty_data, $vmqty[$j][$key_os[$j][$i]]); 
//       if(empty($core_data[$i])){
//         array_pop($core_data);
//       }
//       if(empty($vmqty_data[$i])){
//         array_pop($vmqty_data);
//       }
//       array_push($final_qty, ($core_data[$i] * $vmqty_data[$i])/$core_devide) ; 
//       $qty = array_sum($final_qty);
//     } 
//     return $qty * $price;
// }

function get_Price($prod, $act = "price")
{
  global $con;
  $query = mysqli_query($con, "SELECT * FROM `price_list` WHERE `product` = '{$prod}'");
  $val = mysqli_fetch_assoc($query);
  return $val[$act];
  // print_r($val);
}
// echo get_Price("Load Balancer : CITRIX");

function get_strg($unit, $price = 1 , $qty= 1)
{
  if ($unit == "TB") {
    return ($qty * 1024)   * $price;
  } else {
    return $price;
  }
}

function strg_iops($unit,$iops){
  if($unit == 'GB'){
    echo "Storage Space with ".($iops/1000)." IOPS";
  }
  else{
    echo "Storage Space with ".($iops)." IOPS";
  }
}


function ManagedServices($service , $service_qty){
  if(isset($service)){
    if(!empty($service_qty)){
      
    }
  }
}

$db_cal= array(
   'MS SQL Enterprise' => 2,
   'MS SQL WEB' => 2,
   'MS SQL Standerd' => 2,
   'MY SQL Community' => NULL,
   'MY SQL Standard' => 4,
   'MY SQL Enterprise' => 4,
   'Postgre SQL Enterprise' => 1,
   'Postgre SQL Community' => NULL,
   'Oracle SQL Standerd' => 8,
   'Oracle SQL Enterprise' => 8,
   'Mongo DB Community' => NULL,
   'Maria DB Community' => NULL
);


if(!function_exists('SkuList')){
  function SkuList(){
    include 'constants.php';
    require '../model/database.php';
    global $vmname, $j, $estmtname, $product_sku, $db_cal, $vCore,$vRam, $vDisk;
    
    $Sku_Data = array();  
    for($i=0; $i<count($vmname[$j]); $i++){
      // $Sku_Data[$vmname[$j][$i]][$product_sku[$instance[$j][$i]]] = $vmqty[$j][$i];
      if($series[$j][$i] == "Flexible Compute"){
        $Sku_Data[$vmname[$j][$i]][$product_sku['cpu']]=$cpu[$j][$i];
        $Sku_Data[$vmname[$j][$i]][$product_sku['ram']]=$ram[$j][$i];
        $Sku_Data[$vmname[$j][$i]][$product_sku['iops_1']]=$disk[$j][$i];
      }else{
        $Sku_Data[$vmname[$j][$i]][$product_sku['cpu']]=$vCore[$j][$i];
        $Sku_Data[$vmname[$j][$i]][$product_sku['ram']]=$vRam[$j][$i];
        $Sku_Data[$vmname[$j][$i]][$product_sku['iops_1']]=$vDisk[$j][$i];
      }
      foreach($prod_cat as $int => $cat){
        foreach($products as $new_int => $product){
          if($new_int == $int){
            if($cat == "os"){
              if($os[$j][$i]==$product){
                $Sku_Data[$vmname[$j][$i]][$product_sku[$int]] = get_OS($os[$j][$i], 2, '','SKU')[$i];
              }
            }
            if($cat == 'db'){
              if($db[$j][$i] == $product){
                $Sku_Data[$vmname[$j][$i]][$product_sku[$int]] = get_DB($db[$j][$i], $db_cal[$db[$j][$i]], '','SKU')[$i];
              }
            }
          }
        }
      }
    }
    // print_r($Sku_Data);  
    return $Sku_Data;
  }
}


?>
