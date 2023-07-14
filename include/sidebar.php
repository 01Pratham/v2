<aside class="main-sidebar sidebar-light-primary elevation-4">
    <a href="" class="brand-link mt-2">
        <img src="../include/dist/img/logo.png" alt="ESDS Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Configurator</span>
    </a>
    <div class="except sidebar">
        <div class="except user-panel mt-3 pb-2 mb-3 d-flex">
            <div class="except image">
                <img src="../include/dist/img/avatar.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="except info">
                    <button class="btn except" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                      <label for="" class="m-0 p-0"><?= $get_emp['first_name'] . " " . $get_emp['last_name'] ?></label>  
                    </button>
                
                <div class="collapse except" id="collapseExample">
                    <div class=" card-body except">
                        <a href="../controller/logout.php"><span class = "fa fa-sign-out-alt mr-2"> </span>Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="index.php" class="nav-link active">
                        <i class="nav-icon fas fa-th"></i>
                        <p class="except">
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-close">
                    <a href="#" class="nav-link" id="allEstms">
                        <i class="nav-icon fa fa-folder-open"></i>
                        <p class="except">
                            Saved Quotations
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="index.php?all" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p class="except">Show All Estimates</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="index.php?create_new" class="nav-link" id="create">
                        <i class="nav-icon fas fa-cogs"></i>
                        <p class="except">
                            Create New
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link" id="teamUsers">
                        <i class="nav-icon fas fa-users"></i>
                        <p class="except">
                            Team
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <?php
                    $user_query = mysqli_query($con, "SELECT * FROM `login_master` WHERE `manager_code` = '{$_SESSION['emp_code']}'");
                    while ($users = mysqli_fetch_assoc($user_query)) {
                        if (!empty($users['id'])) {
                            $iUsers[] = $users['employee_code'];
                    ?>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="index.php?all=<?= $users['employee_code'] ?>" class="nav-link">
                                        <i class="far fa-user nav-icon"></i>
                                        <p class="except">
                                            <?= $users['first_name'] . " " . $users['last_name'] ?>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                    <?php } else {
                            $iUsers = 0;
                        }
                    }
                    ?>
                </li>
            </ul>
        </nav>
    </div>
</aside>