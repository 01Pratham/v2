<?php
if (isset($_POST['name'])) {
    session_start();
    require '../model/database.php';

    $id = $_POST['id'];
    $name = $_POST['name'];
    $count = intval($_POST['count']) + 1;
    require '../view/vmContent.php';
    vmContent($name, $id, $count, 'ajax');
    echo "
    <scipt src = '../javascript/main.js'></scipt>
    <scipt src = '../javascript/javascript/jquery-3.6.4.js'></scipt>

        <script>
            get_default();
            $('#region_{$id}').val('{$_POST['reg_val']}');
            $('#sector_{$id}').val('{$_POST['sect_val']}');

            $('#rem-vm_{$id} ').on('click',function() {
                $('#vmHead_{$id},#vm_collapse_{$id}').remove();
            })
        </script>
    ";
}
// require '../view/includes/footer.php';
