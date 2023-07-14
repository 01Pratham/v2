<?php 
if(isset($_POST['name'])){
    session_start();
    require '../view/content.php';
    require '../model/database.php';
    require '../model/editable.php';
    $id = $_POST['id'];
    $name = $_POST['name'];

    mainContent($name, $id, 'ajax');
    echo "
    <scipt src = '../javascript/main.js'></scipt>
    <scipt src = '../javascript/javascript/jquery-3.6.4.js'></scipt>

        <script>
            get_default();
            remove_arrow();

            $('#rem-estmt_{$id} ').on('click',function() {
                $('#est_div_{$id}').remove();
            })
            changeOnInput('#vmHead .OnInput', '#vmname_{$id}')
            changeOnInput('#estmtHead .OnInput', '#estmtname_{$id}', 'Your Estimate')
            
            window.addEventListener('beforeunload',
            function (e) {
                let conf = confirm('Are You sure want to unsave this Estimate ? ');
                if(conf){
                }else{
                    e.preventDefault();
                    e.returnValue = '';
                }
            });
        </script>
    ";
}
// require '../view/includes/footer.php';