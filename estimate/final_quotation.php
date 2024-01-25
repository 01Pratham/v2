<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] == "GET" ) {
    header("Location: index.php");
    unset($_SESSION['post_data']);
}
if (!isset($_SESSION['emp_code']) ) {
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
    <?php
    require '../controller/constants.php';
    require '../model/database.php';
    require '../controller/json_format.php';
    require '../controller/Currency_Format.php';
    require '../view/includes/header.php';
    ?>
    <link rel="stylesheet" href="../css/submit.css">
    <link rel="stylesheet" href="../css/loader.css">
</head>

<body class="sidebar-mini layout-fixed sidebar-collapse" data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed style="height: auto; overflow-x: hidden;">
    <?php
    require "../view/includes/nav.php";


    ?>
    <div class="content-wrapper except bg-transparent">
        <div id="loader" class="except">
            <div class="except cube-folding">
                <span class="except leaf1"></span>
                <span class="except leaf2"></span>
                <span class="except leaf3"></span>
                <span class="except leaf4"></span>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $("#loader").addClass("d-none");
            })
        </script>
        <?php
        require '../view/content-header.php';
        contentHeader('Quotation');
        // PPrint($_POST)
        ?>
        <div class="content Main except ">
            <div class="container-fluid except full" style="zoom : 65%">
                <div class="errors except container" style="max-width: 2020px; margin: auto; "> </div>
                <?php
                if (!empty($_SESSION['edit_id'])) {
                    $DISC = null;
                    $D = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_discount_data` WHERE `quot_id` = '{$_POST['edit_id']}'"));
                    if (!empty($D)) {
                        $_DiscountedData = json_decode($D['discounted_data'], true);
                        $DISC = true;   

                    }else{
                        $DISC = false;
                    }

                }
                require '../view/Table.php';
                require '../view/summary_table.php';
                ?>
                <div class="container except d-flex justify-content-center mt-3 py-3">
                    <button class="btn btn-outline-success btn-lg mx-1 export" id="export"><i class="fa fa-file-excel-o pr-2"></i> Export</button>
                    <?php
                    if (is_null($DISC)) {
                    ?>
                        <button class="btn btn-outline-primary btn-lg mx-1" id="push" onclick="Push()"><i class="fab fa-telegram-plane pr-2" aria-hidden="true"></i>Push</button>
                    <?php
                    } elseif ($DISC && $D['approved_status'] == 'Approved') {
                    ?>
                        <button class="btn btn-outline-primary btn-lg mx-1" id="push" onclick="Push()"><i class="fab fa-telegram-plane pr-2" aria-hidden="true"></i>Push</button>
                        <?php
                    } else {
                        if (UserRole(12) || employee($_SESSION['emp_code'])['applicable_discounting_percentage']) { ?>
                            <button class="btn btn-outline-success btn-lg mx-1" id="push" onclick="updateStatus('Approved' , <?= $_SESSION['emp_code'] ?>)"><i class="fa fa-check pr-2" aria-hidden="true"></i>Approve</button>
                            <button class="btn btn-outline-danger btn-lg mx-1" id="push" onclick="updateStatus('Rejected' , <?= $_SESSION['emp_code'] ?>)"><i class="fa fa-times pr-2" aria-hidden="true"></i>Reject</button>
                        <?php
                        } else {
                        ?>
                            <button class="btn btn-outline-primary btn-lg mx-1" id="push" onclick="updateStatus('Remaining')"><i class="fab fa-telegram-plane pr-2" aria-hidden="true"></i>Send for Approval</button>
                    <?php
                        }
                    }
                    ?>
                    <button class="btn btn-outline-success btn-lg mx-1 export" id="exportShareable"><i class="fa fa-file-excel-o pr-2"></i> Export as Shareable</button>
                    <?php
                    $query = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `id` = '{$_SESSION["insertID"]}'"));
                    if (empty($query)) {
                        unset($_SESSION["insertID"]);
                    }
                    if (isset($_SESSION["insertID"]) || isset($_SESSION["edit_id"])) {
                    ?>
                        <button class="btn btn-outline-danger btn-lg mx-1 save" id="update"><i class="fas fa-refresh pr-2"></i> Update</button>
                        <a class="btn btn-outline-info btn-lg mx-1" id="Discount" target="_blank" href="discounting.php?id=<?= (isset($_SESSION["insertID"])) ? $_SESSION["insertID"] : $_SESSION['edit_id'] ?>"><i class="fa fa-calculator pr-2" aria-hidden="true"> Discounting</i></a>
                    <?php
                    } else { ?>
                        <button class="btn btn-outline-danger btn-lg mx-1 save" id="save"><i class="fas fa-save pr-2"></i> Save</button>
                    <?php } ?>

                </div>
                <?php
                $temp =  json_encode(json_template($Sku_Data, $I_M), JSON_PRETTY_PRINT);
                // PPrint($Sku_Data);
                // PPrint($temp)
                // PPrint(json_template($Sku_Data, $I_M));
                ?>
            </div>
        </div>
    </div>


    <?php
    require '../view/includes/footer.php';
    ?>
    <script src="../javascript/jquery-3.6.4.js"></script>
    <script src="https://unpkg.com/exceljs/dist/exceljs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>


    <script>
        function Push() {
            $.ajax({
                type: 'POST',
                url: "../controller/push.php",
                dataType: "TEXT",
                data: {
                    action: 'push',
                    data: '<?= base64_encode($temp) ?>'
                },
                success: function(response) {
                    alert(response);
                }
            })
        }

        function updateStatus(status, approved_by = '') {
            $.ajax({
                type: 'POST',
                url: "../model/saveToDB.php",
                dataType: "TEXT",
                data: {
                    id: '<?= $_SESSION['edit_id'] ?>',
                    action: 'UpdateDiscountingStatus',
                    status: status,
                    approved_by: approved_by
                },
                success: function(response) {
                    alert(response);
                    window.location.reload()
                }
            })
        }
        <?php
        echo "let sheetNames = {";
        $i = 1;
        foreach ($estmtname as $key => $val) {
            echo "'sheet{$i}' : '{$val}' ,";
            $i++;
        }
        echo "sheet{$i} : 'Summary Sheet'
            }
            ";
        ?>
        <?php if (UserRole(1)) { ?>
            $(document).ready(function() {
                $("#export").click(function() {
                    var tables = document.querySelectorAll('table');
                    convertTablesToExcel(Array.from(tables), "unShareable", sheetNames, "<?= $_POST['project_name'] ?>");
                });
                $("#exportShareable").click(function() {
                    var tables = document.querySelectorAll('table');
                    convertTablesToExcel(Array.from(tables), "Shareable", sheetNames, "<?= $_POST['project_name'] ?>");
                });
            });
        <?php } else {
            echo '$(".export").remove();';
        } ?>
        $('.save').click(function() {
            if ($(this).prop("id") == "save") {
                $("#loader").removeAttr("hidden")
            }
            $.ajax({
                type: "POST",
                url: '../model/saveToDB.php',
                data: {
                    'action': $(this).prop("id"),
                    'emp_id': <?= $_SESSION['emp_code'] ?>,
                    'data': '<?= json_encode($EstmDATA) ?>',
                    'priceData': '<?= json_encode($I_M) ?>',
                    'total': '<?= array_sum($ProjectTotal) ?>',
                    'pot_id': '<?= $_POST['pot_id'] ?>',
                    'project_name': '<?= $_POST['project_name'] ?>',
                    'period': <?= $period[1] ?>,
                },
                dataType: "TEXT",
                success: function(response) {
                    const jsonObj = JSON.parse(response)
                    alert(jsonObj.Message)
                    location.reload()
                }
                
            });
        })
    </script>
</body>

</html>