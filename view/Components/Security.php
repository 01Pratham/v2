<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" role="button" aria-expanded="true" aria-controls="security_collapse_<?= $id ?>">
        <i class="fa fa-shield-alt mr-2"></i>Security Services :
    </button>
</div>
<div class="collapse py-1 ml-3 show" id="security_collapse_<?= $id ?>">
    <div class="row">
        <?php
        $opts = array();
        $fullNames = array(
            'waf' => "Web App Firewall",
            "ifw" => "Internal Firewall",
            "efw" => "External Firewall",
            "mfa" => "Multi Factor Authentication"
        );
        $secQuery = mysqli_query($con, "SELECT DISTINCT `sec_category` FROM `product_list` WHERE `primary_category` = 'sec'");
        while ($secProds = mysqli_fetch_assoc($secQuery)) {
            if ($fullNames[$secProds['sec_category']]) {
                $catNames = $fullNames[$secProds['sec_category']];
                $catNames = ucwords($catNames);
            } else {
                $secCat = $secProds['sec_category'];
                $newCat = preg_replace('/_/', ' ', $secCat);
                if (strlen($newCat) < 5) {
                }
                $catNames = ucwords($catNames);
            }

            if ($secProds['sec_category'] == "av") {
            } else {
                $prods = mysqli_query($con, "SELECT DISTINCT `product` , `prod_int` FROM `product_list` WHERE `sec_category` = '{$secProds['sec_category']}'");
                while ($allProds = mysqli_fetch_assoc($prods)) {
                    $opts[$secProds['sec_category']][$allProds['prod_int']] = $allProds['product'];
                }

        ?>
                <div class="form-group col-md-4 row my-3">
                    <select name="<?= $secProds['sec_category'] . "_select[" . $name . "]" ?>" id="<?= $secProds['sec_category'] . "_select_" . $id ?>" class="border-0 " style="width: 70%;">
                        <?php
                        // $query = mysqli_fetch_assoc(mysqli_query($con, "SELECT DISTINCT `product`, `prod_int` FROM `product_list` WHERE `prod_int` = '{$Editable[$secProds['sec_category'] . "_select"][$name]}'"))
                        ?>
                        <!-- <option class="editable" value"  ?></option> -->
                        <?php
                        if (count($opts[$secProds['sec_category']]) > 1) {

                            echo "<option value='' > Select {$catNames}</option>";
                            foreach ($opts[$secProds['sec_category']] as $int => $prodName) {
                                if ($int == $Editable[$secProds['sec_category'] . "_select"][$name]) {
                                    echo "<option value='{$int}' selected>$prodName</option>";
                                } else {
                                    echo "<option value='{$int}'>$prodName</option>";
                                }
                            }
                        } else {
                            echo "<option value='' hidden>{$opts[$secProds['sec_category']][$secProds['sec_category']]} </option>";
                        }

                        ?>
                    </select>
                    <input type="checkbox" name="<?= $secProds['sec_category'] . "_check[" . $name . "]" ?>" id="<?= $secProds['sec_category'] . "_check_" . $id ?>" class="check sec-check <?= ($Editable[$secProds['sec_category'] . "_check"][$name] == "on") ? "Checked" : "" ?>">
                    <?php
                    $uiQuery = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_ui_options` WHERE `sec_category_name` = '{$secProds['sec_category']}' "));
                    // print_r($uiQuery);   
                    if ($uiQuery['input_num'] == "True") {
                    ?>
                        <input type="number" min=0 placeholder="Quantity" value="<?= $Editable[$secProds['sec_category'] . "_qty"][$name] ?>" id="<?= $secProds['sec_category'] . "_qty_" . $id ?>" name="<?= $secProds['sec_category'] . "_qty[" . $name . "]" ?>" class="hide form-control sec-qty">
                    <?php
                    }
                    ?>
                </div>

        <?php
            }
        }
        ?>
    </div>
</div>