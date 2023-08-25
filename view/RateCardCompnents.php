<?php
if (isset($_GET['rateCardId'])) {
    require "../controller/Currency_Format.php";

    $id = $_GET['rateCardId'];
    $rateCard = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `tbl_rate_cards`"));
    require "../view/content-header.php";
    contentHeader("Rate Cards / {$rateCard['rate_card_name']}");
    ?>

    <div class="row except  mt-3 mx-3">
        <div class="input-group col-4 bg-transparent">
            <input type="text" name="searchBox" id="searchBox" class="form-control" aria-describedby="">
            <span class="input-group-text p-0 form-control col-sm-1 bg-light" id="searchBox">
                <i class="fa fa-search Center"></i>
            </span>
        </div>
        <div class="form-group ml-auto">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-xl">Add
                Items</button>
        </div>
        <div class="modal fade bd-example-modal-xl except" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-heading text-center border-bottom">
                    <h4>Product List</h4>
                </div>
                <div class="modal-content py-2 border-0">
                    <div class="input-group p-2 bg-transparent">
                        <input type="text" name="searchBox" id="searchBox" class="form-control" aria-describedby="">
                        <span class="input-group-text p-0 form-control col-sm-1 bg-light" id="searchBox">
                            <i class="fa fa-search Center"></i>
                        </span>
                    </div>
                    <div class="except table-card mx-2">
                        <div class="except table-responsive">
                            <table class="table mb-0 rounded-2">
                                <thead class="small text-uppercase bg-body text-muted">
                                    <tr class="border-bottom">
                                        <th>#</th>
                                        <th class="col-8 text-center">Product Name</th>
                                        <th class="text-center">Product Prices</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $productPricesQuery = mysqli_query($con, "SELECT * FROM `price_list`");
                                    while ($product = mysqli_fetch_assoc($productPricesQuery)) {
                                        $productRateQuery = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `rate_card_id` = '{$id}' AND `prod_id` = '{$product['id']}'"));
                                        // echo $productRateQuery['id'];
                                        ?>
                                        <tr class="border-bottom">
                                            <td>
                                                <input type="checkbox" name="" id="<?= $product['id'] ?>"
                                                    class='from-control prodChecks <?= (!empty($productRateQuery['id'])) ? "Present" : "" ?>'
                                                    <?= (!empty($productRateQuery['id'])) ? "Checked" : ''; ?>>
                                            </td>
                                            <td class="col-4 text-center">
                                                <?= $product['product'] ?>
                                            </td>
                                            <td class="col-4 text-center">
                                                <?= INR($product['price']) ?>
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    <tr>
                                        <td colspan="3" class="text-center"><button class="btn btn-primary except"
                                                id="addProds"> Add Products</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <div class="except  mt-3 mx-3">
        <div class="except row">
            <div class="except col-12 mb-3 mb-lg-5">
                <div class="except table-card">
                    <div class="except table-responsive">
                        <table class="table mb-0 rounded-2">
                            <thead class="small text-uppercase bg-body text-muted">
                                <tr class="border-bottom">
                                    <th>#</th>
                                    <th class="col-4 text-center">Product</th>
                                    <th class="text-center">Actual Price</th>
                                    <th class="text-center">Configured Price</th>
                                    <th class="text-center">Is Active</th>
                                    <!-- <th class="text-center">Action</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $rateCardQuery = mysqli_query($con, "SELECT * FROM `rate_card_prices` WHERE `rate_card_id` = '{$id}'");
                                $i = 1;
                                while ($prods = mysqli_fetch_assoc($rateCardQuery)) {
                                    ?>
                                    <tr class="border-bottom">
                                        <td class="">
                                            <?= $i ?>
                                        </td>
                                        <td class="text-center">
                                            <?= GetVal($prods['prod_id'])['product'] ?>
                                        </td>
                                        <td class="text-center">
                                            <?= INR(GetVal($prods['prod_id'])['price']) ?>
                                        </td>
                                        <td class="text-center Price" contenteditable="true" id="price_<?= $prods['id'] ?>">
                                            <?= (!empty($prods['price'])) ? INR($prods['price']) : INR(0) ?>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" class="prodStatus ToogleSwitch" id="status_<?= $prods['id'] ?>"
                                                <?= ($prods['is_active'] == "True") ? "Checked" : ''; ?>>
                                        </td>
                                    </tr>
                                    <?php
                                    $i++;
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        $('#addProds').click(function () {
            $(".prodChecks").each(function () {
                if ($(this).prop("checked")) {
                    if ($(this).hasClass('Present')) {

                    } else {
                        AJAX(
                            {
                                action: 'AddProducts',
                                prod_id: $(this).prop('id'),
                                rateCardId: <?= $id ?>
                            }
                        )
                    }
                }
                else if ($(this).hasClass('Present')) {
                    AJAX(
                        {
                            action: 'RemoveProduct',
                            prod_id: $(this).prop('id'),
                            rateCardId: <?= $id ?>
                        }
                    )
                }
            })
        });
        $('.prodStatus').each(function(){
            $(this).on('input', function () {
                let id = $(this).prop('id').replace("status_" , '');
                AJAX({
                    action: 'UpdateProduct',
                    id: id,
                    status: $(this).prop('checked')
                })
            })
        })
            
        $(".Price").keypress(function(e) {
            var key = e.keyCode || e.charCode; // ie||others
            if (key == 13) { // if enter key is pressed            
                $(this).blur();
                }
                $(this).on('blur', function () {
                    let id = $(this).prop('id').replace("price_" , '');
                    AJAX({
                        action: 'UpdateProduct',
                        id: id,
                        price: parseInt($(this).html().replace("₹ ",''))
                    })
                })
        })
    </script>



    <?php
}

?>