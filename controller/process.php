<?php


require '../model/database.php';
if ( $_POST['login_btn'] == 'Login') {
    // var_dump($_POST['login_btn']);
    $UserName = $_POST['login_uname'];
    $user_pass = md5($_POST['login_pass']);

    $login_query = mysqli_query($con, "SELECT * FROM `login_master` where `username` = '{$UserName}' AND `password` = '{$user_pass}' ;");
    $login_data = mysqli_fetch_assoc($login_query);

    
    
    if (!empty($login_data['id'])) {
        // print_r($login_data);
        session_start();
        $_SESSION['uname'] = $UserName;
        $_SESSION['emp_code'] = $login_data['employee_code'];
    // print_r($_SESSION);
        header('Location: ../index.php');
    //     // echo "<script>window.location.href = '../index.php' </script>";
    } 
    else {
        // header("Location: login.php");
        echo "<script> window.location.href = '../login.php';  alert('Please enter Valid Information');</script>";
    }
}
