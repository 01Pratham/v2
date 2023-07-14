<?php

function allUsers($type = "")
{
    require '../view/content-header.php';
    contentHeader('Team Details');
    require '../model/database.php';
?>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <div class="except  mt-3 mx-3">
        <div class="except row">
            <div class="except col-12 mb-3 mb-lg-5">
                <div class="except table-card">
                    <div class="except table-responsive">
                        <table class="table mb-0">
                            <thead class="small text-uppercase bg-body text-muted">
                                <tr>
                                    <th>Name</th>
                                    <th>Employee Code</th>
                                    <th>Designation</th>
                                    <th class="text-end">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $user_query = mysqli_query($con, "SELECT * FROM `login_master` WHERE `manager_code` = '{$_SESSION['emp_code']}'");
                                if (empty(mysqli_fetch_assoc($user_query)['id']) && $type != "share") {
                                    echo "
                                    <tr>
                                        <td colspan = '6' class = 'text-center'> There is No User in your TEAM. </td>
                                    </tr>
                                ";
                                } else {
                                    if ($type == "share") {
                                        $user_query = mysqli_query($con, "SELECT * FROM `login_master`");
                                    } else {
                                        $user_query = mysqli_query($con, "SELECT * FROM `login_master` WHERE `manager_code` = '{$_SESSION['emp_code']}'");
                                    }

                                    while ($users = mysqli_fetch_assoc($user_query)) {
                                        if (!empty($users['id'])) {
                                            
                                            $iUsers[] = $users['employee_code'];
                                            if($_SESSION['emp_code'] == $users['employee_code']){
                                                continue;
                                            }
                                ?>
                                            <tr class="align-middle">
                                                <td>
                                                    <div class="except d-flex align-items-center">
                                                        <img src="../include/dist/img/avatar.png" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
                                                        <div>
                                                            <div class="except h6 mb-0 lh-1 mx-2"><?= $users['first_name'] . " " . $users['last_name'] ?></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><?= $users['employee_code'] ?></td>
                                                <td> <span class="d-inline-block align-middle"><?= $users['designation'] ?></span></td>
                                                <td class="text-end">
                                                    <div class="except d    rodown">
                                                        <a data-bs-toggle="dropdown" href="#" class="btn p-1" aria-expanded="false">
                                                            <i class="fa fa-bars" aria-hidden="true"></i>
                                                        </a>
                                                        <div class="except dropdown-menu dropdown-menu-end" style>
                                                            <?php
                                                            if ($type == "share") {
                                                                echo "<a href='index.php?share_id={$_GET['share_id']}&emp_id={$users['employee_code']}' class='dropdown-item'>Share</a>";
                                                            } else {
                                                                echo "<a href='index.php?all={$users['employee_code']}' class='dropdown-item'>View Estimates</a>";
                                                            }
                                                            ?>

                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                <?php
                                        } else {
                                            $iData = 0;
                                        }
                                    }
                                }

                                ?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script> -->
    <!-- <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

<?php } ?>