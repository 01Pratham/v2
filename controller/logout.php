<?php
    session_start();
        if(isset($_GET['logout'])){
        session_unset();
        session_destroy();
            header("Location: ../login.php");
        }
        elseif (isset($_SESSION['uname']) || isset($_SESSION['emp_code'])) {
            if (time() - $_SESSION["login_time_stamp"] > 600) {
            session_unset();
            session_destroy();
            header("Location: ../login.php");
            }
        } 

?>