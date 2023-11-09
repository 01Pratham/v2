<?php
session_start();
require("database.php");

if ($_POST['action'] == 'Delete') {
  mysqli_query($con, "DELETE FROM `tbl_saved_estimates` WHERE `id` = {$_POST['post_data']}");
}

function saveEstmt()
{
  if (empty($_POST['version'])) {
    $version = 1;
  } else {
    $version = $_POST['version'];
  }

  $project_name = $_POST['project_name'];
  $date = new DateTime();
  $date->setTimezone(new DateTimeZone("Asia/Kolkata"));
  $time = $date->format('Y-m-d H:i:sa');
  $date = $date->format('Y-m-d');
  $data = $_POST['data'];
  $prices = $_POST['priceData'];
  $discountedData = $_POST["discountedData"];

  global $con;

  if ($_POST['action'] == "save") {
    $query = mysqli_query(
      $con,
      "INSERT INTO `tbl_saved_estimates`( 
      `emp_code`, 
      `pot_id`, 
      `project_name`, 
      `version` , 
      `owner`,
      `last_changed_by`,
      `date_created`, 
      `date_updated`, 
      `contract_period`, 
      `total_upfront`, 
      `data`, 
      `prices`) 
      VALUES ('{$_POST["emp_id"]}',
      '{$_POST["pot_id"]}',
      '{$project_name}', 
      '{$version}',
      '{$_SESSION['emp_code']}',
      '{$_SESSION['emp_code']}',
      '{$date}',
      '{$time}',
      '{$_POST["period"]}',
      '{$_POST["total"]}' , 
      '{$data}',
      '{$prices}')"
    );
  } elseif ($_POST['action'] == 'save_as') {
    $version = $version + 1;
    $query = mysqli_query(
      $con,
      "INSERT INTO `tbl_saved_estimates`( 
    `emp_code`, 
    `pot_id`, 
    `project_name`, 
    `version` , 
    `owner` , 
    `last_changed_by`,
    `date_created`, 
    `date_updated`, 
    `contract_period`, 
    `total_upfront`, 
    `data`, 
      `prices`)   
      VALUES (
    '{$_POST['emp_id']}',
    '{$_POST['pot_id']}',
    '{$project_name}',
    '{$version}',
    '{$_SESSION['emp_code']}',
    '{$_SESSION['emp_code']}',
    '{$date}',
    '{$time}',2
    '{$_POST['period']}',
    '{$_POST['total']}' , 
    '{$data}',
    '{$prices}')"
    );
  } elseif ($_POST['action'] == 'update') {
    $Total = (isset($_POST['total'])) ? "`total_upfront`='{$_POST['total']}' ," : ('');
    $discountedData = (isset($_POST['discountedData']))?"`discountdata` = '{$_POST['discountedData']}' ,": ("");
    $discounted_upfront = (isset($_POST['discounted_upfront']))?"`discounted_upfront` = '{$_POST['discounted_upfront']}' ":('');
    $data = (isset($_POST['data']))? "`data` = '{$_POST['data']}' ,":("") ;
    $priceData = (isset($_POST['priceData']))? "`prices` = '{$_POST['priceData']}' ,":("") ;
    $total = (isset($_POST['total']))? "`total_upfront` = '{$_POST['total']}' ":("") ;
    $pot_id = (isset($_POST['pot_id']))? "`pot_id` = '{$_POST['pot_id']}' ,":("") ;
    $project_name = (isset($_POST['project_name']))? "`project_name` = '{$_POST['project_name']}' ,":("") ;
    $period = (isset($_POST['period']))? "`contract_period` = '{$_POST['period']}' ,":("") ;
    

    if (!empty($_POST['old_pot'])) {
      $version = 1;
    }

    $query = mysqli_query(
      $con,
      "UPDATE `tbl_saved_estimates` SET
      {$Total}
      {$discountedData}
      {$data}
      {$priceData}
      {$pot_id}
      {$project_name}
      {$period}
      {$total}
      {$discounted_upfront}
      WHERE `id` = '{$_SESSION['edit_id']}' "
    );
  }
  if ($query) {
    echo "Data Stored Successfully";
  } else {
    echo "Error while storing DATA \n";
  }
}
saveEstmt();
