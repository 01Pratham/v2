  <nav class="main-header navbar navbar-expand navbar-light" style="height: 4.1rem;">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="aside-bar nav-funcs " id="" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars aside-bar"></i></a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a id="notification-bell" class="nav-funcs " role="button"><i class="fas fa-bell"></i></a>
      </li>
      <div id="notification-box" class="notification-box">
        <?php
        $Query = Query("SELECT * FROM `tbl_discount_data` WHERE `approved_status` = 'Remaining'");
        while ($n = mysqli_fetch_assoc($Query)) {
        ?>
          <a href="?edit_id=<?= $n['quot_id'] ?>" class="notifications-item">
            <div class="text">
              <h4><?= getEstimateDetails($n['quot_id'])['project_name'] ?></h4>
              <p><?= employee(getEstimateDetails($n['quot_id'])['emp_code'])["first_name"] ?></p>
            </div>
          </a>
        <?php
        }
        ?>

      </div>
    </ul>
    <ul class="navbar-nav " style="margin-left: calc(100% - 12.6rem);">
      <li class="nav-item d-sm-inline-block">
        <input type="checkbox" name="" id="mode" hidden>
        <a id="modeIcon" class="nav-funcs " role="button" onclick="$('#mode').click()"><i class="fa fa-sun"></i></a>
        <!-- <label for="mode" class="except "><i class="fas fa-sun"></i></label> -->
      </li>
    </ul>
  </nav>

  <script>
    $(document).ready(function() {
      $("#notification-bell").on("click", function(e) {
        e.stopPropagation();
        $("#notification-box").toggleClass("show");
      });
      $(document).on("click", function(e) {
        if (!$("#notification-bell").is(e.target) && !$("#notification-box").has(e.target).length) {
          $("#notification-box").removeClass("show");
        }
        if (!$(".aside-bar").is(e.target) && !$("aside").has(e.target).length) {
          $("body").addClass("sidebar-collapse");
        }
      });
    });
  </script>

  <style>
    .notification-box {
      display: none;
      position: absolute;
      top: 57px;
      padding: 10px;
      border: 1px solid #ddd;
      width:  20%;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow-y: scroll;
      max-height: 225px;
    }

    .notification-box.show {
      display: block;
    }

    .notification-text {
      font-size: 14px;
    }

    .notifications-item {
      display: flex;
      border-bottom: 1px solid #eee;
      padding: 6px 9px;
      margin-bottom: 0px;
      cursor: pointer
    }

    .notifications-item .text h4 {
      color: #777;
      font-size: 16px;
      margin-top: 3px
    }

    .notifications-item .text p {
      color: #aaa;
      font-size: 12px
    }

    .nav-funcs {
      color: rgba(0, 0, 0, .5);
      padding-right: 1rem;
      padding-left: 1rem;
    }
  </style>