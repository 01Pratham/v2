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
        $secQuery = mysqli_query($con, "SELECT DISTINCT `sec_category` FROM `price_list` WHERE `primary_category` = 'sec'");
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
        // echo $catNames;
            $prods = mysqli_query($con, "SELECT DISTINCT `product` , `prod_int` FROM `price_list` WHERE `sec_category` = '{$secProds['sec_category']}'");
            while ($allProds = mysqli_fetch_assoc($prods)) {
                $opts[$secProds['sec_category']][$allProds['prod_int']] = $allProds['product'];
            }

            // echo count($opts[$secProds['sec_category']][]);
            // echo $secProds['sec_category'];
        ?>
            <div class="form-group col-md-4 row my-3">
                <select name="<?= $secProds['sec_category'] . "_select[" . $name . "]" ?>" id="<?= $secProds['sec_category'] . "_select_" . $id ?>" class="border-0 " style="width: 70%;">
                    <?php
                    $query = mysqli_fetch_assoc(mysqli_query($con, "SELECT DISTINCT `product`, `prod_int` FROM `price_list` WHERE `prod_int` = '{$Editable[$secProds['sec_category'] . "_select"][$name]}'"))
                    ?>
                    <option class="editable" value="<?= $query['prod_int'] ?>" hidden><?= $query['product'] ?></option>
                    <?php
                    if (count($opts[$secProds['sec_category']]) > 1) {
                        echo "<option value='' hidden> Select {$catNames}</option>";
                        foreach ($opts[$secProds['sec_category']] as $int => $prodName) {
                            echo "<option value='{$int}'>$prodName</option>";
                        }
                    } else {
                        echo "<option value='' hidden>{$opts[$secProds['sec_category']][$secProds['sec_category']]} </option>";
                    }
                    ?>
                </select>
                <input type="checkbox" name="<?= $secProds['sec_category'] . "_check[" . $name . "]" ?>" id="<?= $secProds['sec_category'] . "_check_" . $id ?>" class="check sec-check <?= ($Editable[$secProds['sec_category'] . "_check"][$name] == "on") ? "Checked" : "" ?>">
                <input type="number" min=0 placeholder="Quantity" value="<?= $Editable[$secProds['sec_category'] . "_qty"][$name] ?>" id="<?= $secProds['sec_category'] . "_qty_" . $id ?>" name="<?= $secProds['sec_category'] . "_qty[" . $name . "]" ?>" class="hide form-control sec-qty">
            </div>

        <?php
        }
        ?>
    </div>
</div>