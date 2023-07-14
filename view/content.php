<?php
function mainContent($name, $id, $type = '')
{
    require "../model/editable.php";
    global $Editable, $con;
    // print_r($Editable);  
?>

    <section class="est_div align-center Main mt-2" id="est_div_<?= $id ?>">
        <div class="contain-btn btn-link shadow-sm light " id="contain-btn_<?=$id?>">
            <?php
            if ($type == "ajax") {
            ?>
                <input class="add-estmt btn btn-link except text-primary" type="button" role="button" id="rem-estmt_<?= $id ?>"  style="z-index: 1;" value="&times;" >
            <?php
            } else {
            ?>
                <input class="add-estmt btn btn-link except text-primary" type="button" role="button" id="add-estmt" style="z-index: 1;" value="&plus;">
                <script>
                    $('#add-estmt').click(function(){
                        add_estmt();
                    })
                </script>
            <?php
            }
            ?>
            <input type="checkbox" id="checkHead_<?=$id?>" class="head-btn d-none" >
            <label class="text-left text-primary pt-3" for="checkHead_<?=$id?>"  id="estmtHead_<?= $id ?>" style="z-index: 1;">
                <h6 class="OnInput">Your Estimate</h6>
            </label>
        </div>
        <div class="show my-1 except" id="estmt_collapse_<?= $id ?>">
            <div class="tab card card-body">    
                <div class="form-row">
                    <div class="form-group col-md-9">
                        <input type="text" class="form-control" id="estmtname_<?= $id ?>" placeholder="Your Estimate" name="estmtname[<?= $name ?>]" required value="<?= $Editable["estmtname"][$name] ?>">
                    </div>
                    <div class="form-group col-md-3 ">
                        <input type="number" class="form-control small" id="period_<?= $id ?>" placeholder="Contract Period [MONTHS]" min=1 name="period[<?= $name ?>]" required value="<?= $Editable['period'][$name] ?>">
                    </div>
                </div>
                <div id="virtual_machine_<?= $id ?>">
                    <input type="hidden" name="count_of_vm[<?= $name ?>]" id="count_of_vm_<?= $name ?>" value="1">

                    <?php
                    require 'vmContent.php';
                    vmContent($name, $id, 0);
                    ?>

                </div>
                <div class="contain-btn btn-link border-bottom">
                    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  id="strHead_<?= $id ?>" role="button" aria-expanded="true" aria-controls="str_collapse_<?= $id ?>">
                        <i class="fa fa-hdd mr-2"></i>Storage Solutions :
                    </button>
                </div>
                <div class="collapse show py-1 " id="str_collapse_<?= $id ?>">
                    <div class="mx-3">
                        <h6><small>Additional Storage : </small></h6>
                    </div>
                    <div class='row'>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 300 IOPS /</label>
                            <select name='03strgunit[<?= $name ?>]' id='03strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['03strgunit'][$name] ?>" hidden><?= $Editable['03strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['03iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="03iops_check_<?= $id ?>" name="03iops[<?= $name ?>]">
                            <input type='Number' name='03iopsqty[<?= $name ?>]' id='03iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['03iopsqty'][$name] ?>">
                        </div>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 1000 IOPS /</label>
                            <select name='1strgunit[<?= $name ?>]' id='1strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['1strgunit'][$name] ?>" hidden><?= $Editable['1strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['1iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="1iops_check_<?= $id ?>" name="1iops[<?= $name ?>]">
                            <input type='Number' name='1iopsqty[<?= $name ?>]' id='1iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['1iopsqty'][$name] ?>">
                        </div>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 3000 IOPS /</label>
                            <select name='3strgunit[<?= $name ?>]' id='3strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['3strgunit'][$name] ?>" hidden><?= $Editable['3strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['3iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="3iops_check_<?= $id ?>" name="3iops[<?= $name ?>]">
                            <input type='Number' name='3iopsqty[<?= $name ?>]' id='3iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['3iopsqty'][$name] ?>">
                        </div>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 5000IOPS /</label>
                            <select name='5strgunit[<?= $name ?>]' id='5strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['5strgunit'][$name] ?>" hidden><?= $Editable['5strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['5iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="5iops_check_<?= $id ?>" name="5iops[<?= $name ?>]">
                            <input type='Number' name='5iopsqty[<?= $name ?>]' id='5iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['5iopsqty'][$name] ?>">
                        </div>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 8000IOPS / </label>
                            <select name='8strgunit[<?= $name ?>]' id='8strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['8strgunit'][$name] ?>" hidden><?= $Editable['8strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['8iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="8iops_check_<?= $id ?>" name="8iops[<?= $name ?>]">
                            <input type='Number' name='8iopsqty[<?= $name ?>]' id='8iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['8iopsqty'][$name] ?>">
                        </div>
                        <div class="form-switch form-group form-check col-md-2">
                            <label style='cursor:pointer' class='h6'> 10000IOPS /</label>
                            <select name='10strgunit[<?= $name ?>]' id='10strgunit_<?= $id ?>' class='strg-select'>
                                <option class="editable" value="<?= $Editable['10strgunit'][$name] ?>" hidden><?= $Editable['10strgunit'][$name] ?></option>
                                <option value='TB'>TB</option>
                                <option value='GB'> GB </option>
                            </select>
                            <input type='checkbox' <?= ($Editable['10iops'][$name] == "on") ? "Checked" : "" ?> class='iops-check check' id="10iops_check_<?= $id ?>" name="10iops[<?= $name ?>]">
                            <input type='Number' name='10iopsqty[<?= $name ?>]' id='10iopsqty_<?= $id ?>' class="strg hide form-control" min=0 placeholder="Quantity" value="<?= $Editable['10iopsqty'][$name] ?>">
                        </div>
                    </div>
                </div>
                <div class="contain-btn btn-link border-bottom">
                    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  role="button" aria-expanded="true" aria-controls="back_collapse_<?= $id ?>">
                        <i class="fa fa-database mr-2"></i>Backup Solutions :
                    </button>
                </div>
                <div class="collapse show py-1 ml-3" id="back_collapse_<?= $id ?>">
                    <div class="row">
                        <div class="form-group col-md-3">
                            <h6><small>Backup Storage :</small></h6>
                            <div class="form-group row">
                                <div class=" col-sm-8 " style="padding-right: 0px;">
                                    <input type="number" class="form-control small border-right-0 rounded-0" id="backup_strg_<?= $id ?>" placeholder="Quantity" value="<?= $Editable['backup_strg'][$name] ?>" name="backup_strg[<?= $name ?>]">
                                </div>
                                <div class="form-group col-sm-4" style="padding-left: 0px;">
                                    <select name='backup_unit[<?= $name ?>]' id='backupunit_<?= $id ?>' class='rounded-0 border-left-0 form-control'>
                                        <option class="editable" value="<?= $Editable['backupunit'][$name] ?>" hidden><?= $Editable['backupunit'][$name] ?></option>
                                        <option value='TB'>TB</option>
                                        <option value='GB'> GB </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <h6><small> Backup Agent :</small></h6>
                            <div class="row px-2">
                                <select name="age_qty_type[<?= $name ?>]" id="age-type_<?= $id ?>" class="form-control">
                                    <option class="editable" value="<?= $Editable['age_qty_type'][$name] ?>" hidden><?= $Editable['age_qty_type'][$name] ?></option>
                                    <option value="">Select Agent</option>
                                    <option value="All VM">All VM</option>
                                    <option value="DB VM">DB VM</option>
                                    <option value="Customized">Customized</option>
                                </select>
                                <input type='number' name='ageqty[<?= $name ?>]' value="<?= $Editable['ageqty'][$name] ?>" placeholder='Quantity' id='ageqty_<?= $id ?>' min="0" class="agent-qty form-control col-md-6" style="display : none">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-3">
                            <h6><small>Archival Storage :</small></h6>
                            <div class="form-group row">
                                <div class=" col-sm-8 pr-0">
                                    <input type="number" class="form-control small border-right-0 rounded-0" id="arc_qty_<?= $id ?>" placeholder="Quantity" value="<?= $Editable['arc_strg'][$name] ?>" name="arc_strg[<?= $name ?>]">
                                </div>
                                <div class="form-group col-sm-4 pl-0">
                                    <select name='archival_unit[<?= $name ?>]' id='arc_strgunit_<?= $id ?>' class='rounded-0 border-left-0 form-control'>
                                        <option class="editable" value="<?= $Editable['archival_unit'][$name] ?>" hidden><?= $Editable['archival_unit'][$name] ?></option>
                                        <option value='TB'>TB</option>
                                        <option value='GB'> GB </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-8">
                            <h6><small>Offline Backup :</small></h6>
                            <div class="row">
                                <div class="form-switch form-group form-check col-md-4">
                                    <label class="form-check-label h6" for="tape_lib"> Tape Library : </label>
                                    <input class="form-check-input check-off check ml-1" role="switch" type="checkbox" <?= ($Editable['tape_lib'][$name] == "on") ? "Checked" : "" ?> id="tape_lib_<?= $id ?>" name="tape_lib[<?= $name ?>]">
                                    <input type="number" name="tlqty[<?= $name ?>]" class="hide form-control" placeholder="Quantity" value="<?= $Editable['tlqty'][$name] ?>" id="tlqty_<?= $id ?>">
                                </div>
                                <div class="form-switch form-group form-check col-md-4">
                                    <label class="form-check-label h6" for="tape_cart">Tape Cartridge : </label>
                                    <input class="form-check-input check-off check ml-1" role="switch" type="checkbox" <?= ($Editable['tape_cart'][$name] == "on") ? "Checked" : "" ?> id="tape_cart_<?= $id ?>" name="tape_cart[<?= $name ?>]">
                                    <input type="number" name="tcqty[<?= $name ?>]" class="hide form-control" placeholder="Quantity" value="<?= $Editable['tcqty'][$name] ?>" id="tcqty_<?= $id ?>">
                                </div>
                                <div class="form-switch form-group form-check col-md-4">
                                    <label class="form-check-label h6" for="fire_cab">Fireproof Cabinate : </label>
                                    <input class="form-check-input check-off check ml-1" role="switch" type="checkbox" <?= ($Editable['fire_cab'][$name] == "on") ? "Checked" : "" ?> id="fire_cab" name="fire_cab[<?= $name ?>]">
                                    <input type="number" name="fcqty[<?= $name ?>]" class="hide form-control" placeholder="Quantity" value="<?= $Editable['fcqty'][$name] ?>" id="fcqty_<?= $id ?>">
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

                <div class="contain-btn btn-link border-bottom">
                    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  role="button" aria-expanded="true" aria-controls="network_collapse_<?= $id ?>">
                        <i class="fa fa-network-wired mr-2"></i>Network Services :
                    </button>
                </div>
                <div class="collapse py-1 ml-3 show" id="network_collapse_<?= $id ?>">
                    <div class="row">
                        <div class="form-group col-md-3">
                            <select name="bandwidthType[<?= $name ?>]" id="bandwidthType_<?= $id ?>" class="border-0 small" style="width: 100%;">
                                <option class="editable" value="<?= $Editable['bandwidthtype'][$name] ?>" hidden><?= $Editable['bandwidthtype'][$name] ?></option>
                                <option value="Speed Based Internet Bandwidth">Speed Based Internet Bandwidth</option>
                                <option value="Volume Based Internet Bandwidth">Volume Based Internet Bandwidth</option>
                            </select>
                            <input type="number" name="bandwidth[<?= $name ?>]" id="bandwidth_<?= $id ?>" class="form-control my-1" placeholder="MB/s" value="<?= $Editable['bandwidth'][$name] ?>">
                        </div>
                        <div class="form-group col-md-3">
                            <select name="load_balancer[<?= $name ?>]" id="lb_<?= $id ?>" class="border-0 small" style="width: 100%;">
                                <option class="editable" value="<?= $Editable['load_balancer'][$name] ?>" hidden><?= $Editable['load_balancer'][$name] ?></option>
                                <option value="">Load Balancer</option>
                                <?php create_opt('lb') ?>
                            </select>
                            <input type="number" name="lbqty[<?= $name ?>]" id="lbqty_<?= $id ?>" class="form-control my-1" placeholder="Quantity" value="<?= $Editable['lbqty'][$name] ?>">
                        </div>
                        <div class="form-group col-md-3">
                            <h6><small>Cross Connect and Port Termination</small></h6>
                            <input type="number" name="ccptqty[<?= $name ?>]" id="ccptqty_<?= $id ?>" class="form-control" placeholder="Quantity" value="<?= $Editable['ccptqty'][$name] ?>">
                        </div>
                        <div class="form-group col-md-3">
                            <h6><small>VPN :</small></h6>
                            <div class="row">
                                <div class="form-switch form-group form-check col-md-6">
                                    <label class="form-check-label h6" for="ssl_vpn"> SSL VPN : </label>
                                    <input class="form-check-input check ml-1" role="switch" type="checkbox" <?= ($Editable['sslvpn'][$name] == "on") ? "Checked" : "" ?> id="ssl_vpn_<?= $id ?>" name="sslvpn[<?= $name ?>]">
                                    <input type="number" name="sslvpnqty[<?= $name ?>]" class="hide form-control" placeholder="Quantity" value="<?= $Editable['sslvpnqty'][$name] ?>" id="sslvpnqty_<?= $id ?>">
                                </div>
                                <div class="form-switch form-group form-check col-md-6">
                                    <label class="form-check-label h6" for="ipsec_vpn">IPSEC VPN : </label>
                                    <input class="form-check-input check ml-1" role="switch" type="checkbox" <?= ($Editable['ipsec'][$name] == "on") ? "Checked" : "" ?> id="ipsec_vpn_<?= $id ?>" name="ipsec[<?= $name ?>]">
                                    <input type="number" name="ipsecqty[<?= $name ?>]" class="hide form-control" placeholder="Quantity" value="<?= $Editable['ipsecqty'][$name] ?>" id="ipsecvpnqty_<?= $id ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    
                <div class="contain-btn btn-link border-bottom">
                    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  role="button" aria-expanded="true" aria-controls="security_collapse_<?= $id ?>">
                        <i class="fa fa-shield-alt mr-2"></i>Security Services :
                    </button>
                </div>
                <div class="collapse py-1 ml-3 show" id="security_collapse_<?= $id ?>">
                    <div class="row">
                        <div class="form-group col-md-4 row my-3">
                            <select name="efv_throughput[<?= $name ?>]" id="efv_throughput_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['efv_throughput'][$name] ?>" hidden><?= $Editable['efv_throughput'][$name] ?></option>
                                <option value="" hidden>External Firewall</option>
                                <?php create_opt('fw') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['extfirewall'][$name] == "on") ? "Checked" : "" ?> name="extfirewall[<?= $name ?>]" id="extFirewall_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['extfvqty'][$name] ?>" id="extfv_<?= $id ?>" name="extfvqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="ifv_thorughput[<?= $name ?>]" id="ifv_thorughput_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['ifv_throughput'][$name] ?>" hidden><?= $Editable['ifv_throughput'][$name] ?></option>
                                <option value="">Internal Firewall</option>
                                <?php create_opt('fw') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['intfirewall'][$name] == "on") ? "Checked" : "" ?> name="intfirewall[<?= $name ?>]" id="intfirewall_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['intfvqty'][$name] ?>" id="intfv_<?= $id ?>" name="intfvqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="select-utm_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">UTM</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['utm'][$name] == "on") ? "Checked" : "" ?> name="utm[<?= $name ?>]" id="utm_<?= $id ?>" class="check sec-check">
                            <!--<input type="number" placeholder="Quantity" value="<?= $Editable['utmqty'][$name] ?>" id="utmqty_<?= $id ?>" name="utmqty[<?= $name ?>]" class="hide form-control sec-qty">-->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="ddos_throughput[<?= $name ?>]" id="ddos_throughput_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['ddos_throughput'][$name] ?>" hidden><?= $Editable['ddos_throughput'][$name] ?></option>
                                <option value="">DDOS Mitigation</option>
                                <?php create_opt('ddos') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['ddos'][$name] == "on") ? "Checked" : "" ?> name="ddos[<?= $name ?>]" id="ddos_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['ddosqty'][$name] ?>" id="ddosqty_<?= $id ?>" name="ddosqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="waf_type[<?= $name ?>]" id="waf_type_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['waf_type'][$name] ?>" hidden><?= $Editable['waf_type'][$name] ?></option>
                                <option value="">Web App Firewall</option>
                                <?php create_opt('waf') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['waf'][$name] == "on") ? "Checked" : "" ?> name="waf[<?= $name ?>]" id="waf_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['wafqty'][$name] ?>" id="waf_<?= $id ?>" name="wafqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <!-- <div class="form-group col-md-4 row my-3">
                                        <select name="[<?= $name ?>]" id="_<?= $id ?>" class="border-0 " style="width: 70%;">
                                            <option value="">Anti-Virus</option>
                                        </select>
                                        <input type="checkbox" <?= ($Editable['10iops'][$name] == "on") ? "Checked" : "" ?> name="[<?= $name ?>]" id="_<?= $id ?>" class="check sec-check">
                                        <input type="number" id="qty_<?= $id ?>" name="qty[<?= $name ?>]" class="hide form-control sec-qty">
                                    </div> -->
                        <!-- <div class="form-group col-md-4 row my-3">
                            <select id="select-hips_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">HIPS</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['hips'][$name] == "on") ? "Checked" : "" ?> name="hips[<?= $name ?>]" id="hips_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['hipsqty'][$name] ?>" id="hipsqty_<?= $id ?>" name="hipsqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div> -->
                        <div class="form-group col-md-4 row my-3">
                            <select name="ssl[<?= $name ?>]" id="ssl_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['ssl'][$name] ?>" hidden><?= $Editable['ssl'][$name] ?></option>
                                <option value="">SSL Certificate</option>
                                <?php create_opt('ssl_cert') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['ssl-check'][$name] == "on") ? "Checked" : "" ?> name="ssl-check[<?= $name ?>]" id="ssl-check_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['sslqty'][$name] ?>" id="sslqty_<?= $id ?>" name="sslqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="siem_name[<?= $name ?>]" id="siem_name_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['siem_name'][$name] ?>" hidden><?= $Editable['siem_name'][$name] ?></option>
                                <option value="">SIEM</option>
                                <?php create_opt('siem') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['siem'][$name] == "on") ? "Checked" : "" ?> name="siem[<?= $name ?>]" id="siem_<?= $id ?>" class="check sec-check">
                            <!-- <input type="number" id="siemqty_<?= $id ?>" name="siemqty[<?= $name ?>]" class="hide form-control sec-qty"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="select-pim_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">PIM / PAM</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['pim'][$name] == "on") ? "Checked" : "" ?> name="pim[<?= $name ?>]" id="pim_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['pimqty'][$name] ?>" id="pimqty_<?= $id ?>" name="pimqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="vtm-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">VTM Scan</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['vtm'][$name] == "on") ? "Checked" : "" ?> name="vtm[<?= $name ?>]" id="vtm_<?= $id ?>" class="check sec-check">
                            <select name="vtmqty[<?= $name ?>]" id="vtmqty_<?= $id ?>" class="hide small form-control sec-qty" style="height: fit-content;">
                                <option class="editable" value="<?= $Editable['vtmqty'][$name] ?>" hidden><?= $Editable['vtmqty'][$name] ?></option>
                                <?php create_opt('vtm_scan') ?>
                            </select>
                            <!-- <input type="number" id="vtmqty_<?= $id ?>" name="vtmqty[<?= $name ?>]" class="hide form-control sec-qty"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="vpt-select_<?= $id ?>" name="vapt_type[<?= $name ?>]" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['vapt_type'][$name] ?>" hidden><?= $Editable['vapt_type'][$name] ?></option>
                                <option value="">VAPT Audit</option>
                                <?php create_opt('vapt') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['vapt'][$name] == "on") ? "Checked" : "" ?> name="vapt[<?= $name ?>]" id="vapt_<?= $id ?>" class="check sec-check">
                            <div class="hide">
                                <input type="number" id="vaptqty_<?= $id ?>" name="vaptqty[<?= $name ?>]" placeholder="Frequency" class="form-control col-md-5 d-inline-block" value="<?= $Editable['vaptqty'][$name] ?>">
                                <select name="vapt_frequency[<?= $name ?>]" id="vapt_frequency_<?= $id ?>" class="form-control col-md-6 d-inline-block">
                                    <option class="editable" value="<?= $Editable['vapt_frequency'][$name] ?>" hidden><?= $Editable['vapt_frequency'][$name] ?></option>
                                    <option value="Year">/ Year</option>
                                    <option value="Quarter">/ Quarter</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="hsm_type[<?= $name ?>]" id="hsm_type_<?= $id ?>" class="border-0 hsm" style="width: 70%;">
                                <option class="editable" value="<?= $Editable['hsm_type'][$name] ?>" hidden><?= $Editable['hsm_type'][$name] ?></option>
                                <option value="">HSM</option>
                                <?php create_opt('hsm') ?>
                            </select>
                            <input type="checkbox" <?= ($Editable['hsm'][$name] == "on") ? "Checked" : "" ?> name="hsm[<?= $name ?>]" id="hsm_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="" id="hsmqty_<?= $id ?>" name="hsmqty[<?= $name ?>]" class="hide form-control sec-qty" value="<?= $Editable['hsmqty'][$name] ?>">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="tfa_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">Two Factor Authentication</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['tfa'][$name] == "on") ? "Checked" : "" ?> name="tfa[<?= $name ?>]" id="tfa_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['tfaqty'][$name] ?>" id="tfaqty_<?= $id ?>" name="tfaqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="iam-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">IAM</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['iam'][$name] == "on") ? "Checked" : "" ?> name="iam[<?= $name ?>]" id="iam_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['iamqty'][$name] ?>" id="iamqty_<?= $id ?>" name="iamqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="dlp-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">DLP</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['dlp'][$name] == "on") ? "Checked" : "" ?> name="dlp[<?= $name ?>]" id="dlp_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['dlpqty'][$name] ?>" id="dlpqty_<?= $id ?>" name="dlpqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="edr-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">EDR</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['edr'][$name] == "on") ? "Checked" : "" ?> name="edr[<?= $name ?>]" id="edr_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['edrqty'][$name] ?>" id="edrqty_<?= $id ?>" name="edrqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="dam-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">DAM</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['dam'][$name] == "on") ? "Checked" : "" ?> name="dam[<?= $name ?>]" id="dam_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['damqty'][$name] ?>" id="damqty_<?= $id ?>" name="damqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="sor-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">SOR</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['sor'][$name] == "on") ? "Checked" : "" ?> name="sor[<?= $name ?>]" id="sor_<?= $id ?>" class="check sec-check">
                            <input type="number" placeholder="Quantity" value="<?= $Editable['sorqty'][$name] ?>" id="sorqty_<?= $id ?>" name="sorqty[<?= $name ?>]" class="hide form-control sec-qty">
                        </div>
                    </div>
                </div>

                <div class="contain-btn btn-link border-bottom">
                    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  role="button" aria-expanded="true" aria-controls="managed_collapse">
                        <i class="fa fa-tasks mr-2"></i>Managed Services :
                    </button>
                </div>
                <div class="collapse py-1 ml-3 show" id="managed_collapse">
                    <div class="row">
                        <div class="form-group col-md-4 row my-3">
                            <select id="osmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">OS Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['osmgmt'][$name] == "on") ? "Checked" : "" ?> name="osmgmt[<?= $name ?>]" id="osmgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="dbmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">DB Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['dbmgmt'][$name] == "on") ? "Checked" : "" ?> name="dbmgmt[<?= $name ?>]" id="dbmgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="strgmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">Storage Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['strgmgmt'][$name] == "on") ? "Checked" : "" ?> name="strgmgmt[<?= $name ?>]" id="strgmgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="backupmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">Backup Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['backmgmt'][$name] == "on") ? "Checked" : "" ?> name="backmgmt[<?= $name ?>]" id="backmgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="lbmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">Load Balancer Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['lb_mgmt'][$name] == "on") ? "Checked" : "" ?> name="lb_mgmt[<?= $name ?>]" id="lb_mgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="fwmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">Firewall Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['fv_mgmt'][$name] == "on") ? "Checked" : "" ?> name="fv_mgmt[<?= $name ?>]" id="fv_mgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select id="wafmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option value="">WAF Management</option>
                            </select>
                            <input type="checkbox" <?= ($Editable['wafmgmt'][$name] == "on") ? "Checked" : "" ?> name="wafmgmt[<?= $name ?>]" id="wafmgmt_<?= $id ?>" class="check">
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                        <div class="form-group col-md-4 row my-3">
                            <select name="emagic_type[<?= $name ?>]" id="emagic_type_<?= $id ?>" class="border-0 " style="width: 70%;">
                                <option class="editable" value="<?= $Editable['emagic_type'][$name] ?>" hidden><?= $Editable['emagic_type'][$name] ?></option>
                                <option value="Basic">Basic Monitoring Tool</option>
                                <option value="Advanced">Advanced Monitoring Tool</option>
                            </select>
                            <input type="checkbox" name="emagic[<?= $name ?>]" id="emagic_<?= $id ?>" class="check" checked disabled>
                            <!-- <input type="number" class="hide form-control"> -->
                        </div>
                    </div>
                </div>
                <?php
                if ($type == 'DR' || $type == 'ajax') {
                ?>
                    <div class="contain-btn btn-link border-bottom">
                        <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type = "button"  role="button" aria-expanded="true" aria-controls="dr_collapse<?= $id ?>">
                            <i class="fa fa-server mr-2"></i>Disaster Recovery Services :
                        </button>
                    </div>
                    <div class="collapse py-1 ml-3 show" id="dr_collapse_<?= $id ?>">
                        <div class="row">
                            <div class="form-group col-md-4 row my-3">
                                <select id="drm-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                    <option value="">DRM tool</option>
                                </select>
                                <input type="checkbox" name="drm[<?= $name ?>]" id="drm_<?= $id ?>" class="check" <?= ($Editable['wafmgmt'][$name] == "on") ? "Checked" : "" ?>>
                                <!-- <input type="number" id="drmqty_<?= $id ?>" name="drmqty[<?= $name ?>]" class="hide form-control"> -->
                            </div>
                            <div class="form-group col-md-4 row my-3">
                                <select id="dr_drill-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                    <option value="">DR Drill</option>
                                </select>
                                <input type="checkbox" name="dr_drill[<?= $name ?>]" id="dr_drill_<?= $id ?>" class="check" <?= ($Editable['wafmgmt'][$name] == "on") ? "Checked" : "" ?>>
                                <input type="number" id="drillqty_<?= $id ?>" name="drillqty[<?= $name ?>]" class="hide form-control" value="<?= $Editable['drillqty'][$name] ?>">
                            </div>
                            <div class="form-group col-md-4 row my-3">
                                <select name="rep_link_type[<?= $name ?>]" id="rep_link_type-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                    <option class="editable" value="<?= $Editable['rep_link_type'][$name] ?>" hidden><?= $Editable['rep_link_type'][$name] ?></option>
                                    <option value="">Replication Link</option>
                                    <?php create_opt('link') ?>
                                </select>
                                <input type="checkbox" name="rep_link_type[<?= $name ?>]" id="rep_link_type_<?= $id ?>" class="check" <?= ($Editable['wafmgmt'][$name] == "on") ? "Checked" : "" ?>>
                                <input type="number" id="rep_link_qty_<?= $id ?>" name="rep_link_qty[<?= $name ?>]" class="hide form-control" value="<?= $Editable['rep_link_type'][$name] ?>">
                            </div>
                            <div class="form-group col-md-4 row my-3">
                                <select id="repmgmt-select_<?= $id ?>" class="border-0 " style="width: 70%;">
                                    <option value="">Replication Link Management</option>
                                </select>
                                <input type="checkbox" name="rep_link_mgmt[<?= $name ?>]" id="rep_link_mgmt_<?= $id ?>" class="check" <?= ($Editable['wafmgmt'][$name] == "on") ? "Checked" : "" ?>>
                                <!-- <input type="number" id="drmqty_<?= $id ?>" name="drmqty[<?= $name ?>]" class="hide form-control"> -->
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

    </section>
    <script>

        changeOnInput('#estmtHead_<?= $id ?> .OnInput', '#estmtname_<?= $id ?>', 'Your Estimate')

        $('#add-vm_<?= $name ?>').click(function() {
            name = $(this).prop('id')
            name = name.replace('add-vm_', '')
            add_vm(0, name, <?= $id ?>);
        })
        <?php
        if ($Editable['vmname'][$name] != null) {
            if (count($Editable['vmname'][$name]) > 1) {
                for ($i = 1; $i < count($Editable['vmname'][$name]); $i++) {
                    echo "$('#add-vm_{$name}').click();";
                }
            }
        }
        ?>
        $('#checkHead_<?=$id?>').on('input' , function() {
            if ($("#estmt_collapse_<?= $id ?>").hasClass('show')) {
                $("#estmt_collapse_<?= $id ?>").removeClass('show')
                $("#estmt_collapse_<?= $id ?>").addClass('hiddenDiv')
            } else {
                $("#estmt_collapse_<?= $id ?>").removeClass('hiddenDiv')
                $("#estmt_collapse_<?= $id ?>").addClass('show')
            }
        })

        $('#rem-estmt_<?= $id ?>').click(function(){
            $("#est_div_<?= $id ?>").remove();
        })

        validate_input('.sec-check');
        validate_input('.check-off');
        validate_input('.ip-check');


        $('#age-type_<?= $id ?>').on('change', function(){
            if($(this).val() === "Customized"){
                $('#ageqty_<?= $id ?>').attr('style' , 'display : inline-block');
                $(this).addClass('col-md-6');
            }else{
                $('#ageqty_<?= $id ?>').attr('style' , 'display : none');
                $(this).removeClass('col-md-6');
            }
        })
        
        
        $('#bandwidthType_<?= $id ?>').on('change',function(){
            let i = $(this).val().match(/Volume/g);
            // console.log(i)
            if(i != null && i[0] === 'Volume'){
                $("#bandwidth_<?= $id ?>").attr('placeholder',"GB");
            }else{
                $("#bandwidth_<?= $id ?>").attr('placeholder',"MB/s");
            }
        })

    </script>
<?php
}
?>
