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
    <?php
    require '../controller/constants.php';
    require '../model/database.php';
    require '../controller/json_format.php';
    require '../controller/Currency_Format.php';
    require '../view/includes/header.php';
    ?>
    <link rel="stylesheet" href="../css/submit.css">
</head>

<body class="sidebar-mini layout-fixed sidebar-collapse" data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed style="height: auto; overflow-x: hidden;">
    <?php
    require "../view/includes/nav.php";
    
    ?>
    <div class="content-wrapper except bg-transparent">
        <?php
        // echo "<pre>"; print_r($_POST); echo "</pre>"; exit();
        require '../view/content-header.php';
        contentHeader('Quotation');
        ?>
        <div class="content Main except ">
            <div class="container-fluid except full" style="zoom : 65%">
                <div class="errors except container" style="max-width: 2020px; margin: auto; "> </div>
                <?php
                if(!empty($_SESSION['edit_id'])){
                    $D = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `id` = '{$_SESSION['edit_id']}'"));
                    if(!empty($D)){
                        $_DiscountedData = json_decode($D['discountdata'], true);
                    }
                }
                require '../view/Table.php';
                require '../view/summary_table.php';
                ?>
                <div class="container except d-flex justify-content-center mt-3 py-3">
                    <button class="btn btn-outline-success btn-lg mx-1 export" id="export"><i class="fa fa-file-excel-o pr-2"></i> Export</button>
                    <button class="btn btn-outline-primary btn-lg mx-1" id="push" onclick="Push()"><i class="fab fa-telegram-plane pr-2" aria-hidden="true"></i>Push</button>
                    <button class="btn btn-outline-success btn-lg mx-1 export" id="exportShareable"><i class="fa fa-file-excel-o pr-2"></i> Export as Shareable</button>
                    <?php
                    $query = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_saved_estimates` WHERE `pot_id` = '{$_POST['pot_id']}' AND emp_code = '{$_SESSION['emp_code']}'"));
                    if (!empty($query['id'])) {
                    ?>

                        <button class="btn btn-outline-danger btn-lg mx-1 save" id="update"><i class="fas fa-refresh pr-2"></i> Update</button>
                        <a class="btn btn-outline-info btn-lg mx-1" id="push" target="_blank" href="discounting.php?id=<?= $_SESSION['edit_id'] ?>"><i class="fa fa-calculator pr-2" aria-hidden="true"> Discounting</i></a>
                    <?php
                    } else { ?>
                        <button class="btn btn-outline-danger btn-lg mx-1 save" id="save"><i class="fas fa-save pr-2"></i> Save</button>
                    <?php } ?>

                </div>
                <?php
                $temp =  json_encode(json_template($Sku_Data, $I_M), JSON_PRETTY_PRINT);
                echo "<pre>";print_r($temp);echo "</pre>";    
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
        $('.nav-link').removeClass('active')
        $('#create').addClass('active');


            function Push() {
                $.ajax({
                    type: 'POST',
                    url: "../controller/push.php",
                    dataType: "TEXT",
                    data: {
                        action : 'push',
                        data : '<?= base64_encode($temp) ?>'
                    },
                    success: function(response) {
                        alert(response);
                    }
                })
            }
        $(document).ready(function() {
            // $.ajax({
            //     type: "POST",
            //     url: "../model/database.php",
            //     dataType: "TEXT",
            //     data: {
            //         type: "buffer",
            //         buffer: <?= array_sum($MothlyTotal) * 0.05 ?>
            //     },
            //     success: function(response) {
            //         // alert ("Contingency Buffer has been added into your quotation : " + response);
            //     }
            // })
        });

        let sheetNames = {
            <?php
            $i = 1;
            foreach ($estmtname as $key => $val) {
                echo "'sheet{$i}' : '{$val}' ,";
                $i++;
            }
            echo "sheet{$i} : 'Summary Sheet'";
            ?>}
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
                    alert("Data Saved Successfully");
                }
            });
        })

        $(document).ready(function() {
            $('.full').find('.mng_qty').each(function() {
                var tr_val = $(this).html()
                if (tr_val == "0 NO") {
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