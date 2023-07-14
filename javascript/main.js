function escapeHtml(str) {
    const htmlEntities = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '\"': '&quot;',
        '\'': '&#x27;',
        '/': '&#x2F;'
    };
    return str.replace(/[&<>"'/]/g, function (match) {
        return htmlEntities[match];
    });
}


$('body').find('input[type = "number"]').each(function () {
    $(this).on('input', function () {
        // console.log();
        let int = parseInt($(this).val());
        if ($(this).val() === '') {
            $(this).val(int);
        }
    });
});


function isInt(value) {
    var x;
    if (isNaN(value)) {
        return false;
    }
    x = parseFloat(value);
    return (x | 0) === x;
}


function get_default() {
    $('select').find('.editable').each(function () {
        if ($(this).val() === '') {
            $(this).remove();
        }
    });
}


function mySeries(name = '', id = '') {
    var ser_name = $('#series_' + id).val();
    var reg_name = $('#region_' + id).val();
    $.ajax({
        url: "../view/instance_ajax.php",
        type: "POST",
        data: {
            reg_name: reg_name,
            ser_name: ser_name,
            name: name,
            id: id
        },
        success: function (data) {
            $('#inst_div_' + id).html(data);

        }
    });
}

$(document).ready(function () {
    if ($('#series_1').val() === "flexi") {
        mySeries(1, 1);
    }
});

$(document).on("keydown", "form", function (event) {
    return event.key != "Enter";
});

function change_mgmt(elem, mng_elem, func) {
    $('#est_div').find(elem).each(function () {
        $(this).on(func, function () {
            if ($(this).val() === '') {
                $(mng_elem).removeAttr('checked');
            } else if ($(this).val() === 'NA') {
                $(mng_elem).removeAttr('checked');
            } else {
                $(mng_elem).attr('checked', 'true');
            }
            // console.log($(this));
        });
    });
}


function validate_input(check_class) {
    $(check_class).on('input', function () {
        if ($(this).prop('checked')) {
            $(this).parent().find('input[type="number"]').each(function () {
                $(this).attr('required', 'true');
            })
            $(this).parent().find('select').each(function () {
                let id = $(this).prop('id');
                if ($("#" + id + " option").length > 1) {
                    if ($(this).val() === '') {
                        console.log(id);
                        $(this).attr('required', 'true');
                    }
                }
            })
        }
        else {
            $(this).parent().find('input[type="number"]').each(function () {
                $(this).val(0);
                $(this).removeAttr('required');
            })
            $(this).parent().find('select').each(function () {
                $(this).removeAttr('required');
            })
        }
    })
}

// $('.strg-select').on('change', function () {
//     if ($(this).val()==='GB') {
//         $(this).parent().find('lable').each(function () {

//             lbl_val = parseInt($(this).html());
//             // console.log(lbl_val)
//             var new_val = lbl_val / 1000;
//             if (isInt(new_val)) {
//                 $(this).html(new_val + ' IOPS/ ');
//             } else {
//                 return false
//             }
//         })
//     }
//     if ($(this).val()==='TB') {
//         $(this).parent().find('lable').each(function () {
//             lbl_val2 = parseInt($(this).html());
//             if (lbl_val2 < 1000) {
//                 new_val = lbl_val2 * 1000;
//                 $(this).html(new_val + ' IOPS/ ');
//             }
//         })
//     }
//     console.log($(this))
// })


$(document).ready(function () {
    $('.mytabs').find('.strg-select').each(function () {
        // console.log($(this));
        if ($(this).val() === 'GB') {
            $(this).parent().find('label').each(function () {
                lbl_val = parseInt($(this).html());
                // console.log(lbl_val);
                lbl_val = lbl_val / 1000;
                if (isInt(lbl_val) >= 1) {
                    // console.log(lbl_val);
                    $(this).html((lbl_val) + ' IOPS/ ');
                } else {
                    return false;
                }
            })
        }
        $(this).on("change", function () {
            if ($(this).val() === 'GB') {
                $(this).parent().find('label').each(function () {

                    let lbl_val = parseInt($(this).html());
                    var new_val = lbl_val / 1000;
                    if (isInt(new_val)) {
                        $(this).html(new_val + ' IOPS / ');
                    } else if (new_val === 0.3) {
                        $(this).html(new_val + ' IOPS / ');
                    }
                    else {
                        return false;
                    }
                })
            }
            if ($(this).val() === 'TB') {
                $(this).parent().find('label').each(function () {
                    let lbl_val2;
                    if ($(this).html() === "0.3 IOPS / ") {
                        lbl_val2 = parseFloat($(this).html());
                    } else {
                        lbl_val2 = parseInt($(this).html());
                    }
                    if (lbl_val2 < 300) {
                        new_val = lbl_val2 * 1000;
                        $(this).html(new_val + ' IOPS / ');
                    } else {
                        return false;
                    }
                })
            }
        })
    })
})


$('.net-drop').on('change', function () {

    if ($(this).val() === '') {
        $(this).parent().parent().find('input[type="number"]').each(function () {
            $(this).removeAttr('required', true);
        })
    } else {
        $(this).parent().parent().find('input[type="number"]').each(function () {
            $(this).attr('required', true);
        })
    }
})


$('.agent-type').on('change', function () {
    console.log($(this))
    if ($(this).val() === 'customized') {
        $(this).parent().find('input[type = "number"]', function () {
        });
    }
});
function remove_arrow() {
    $('.form-group').find('select').each(function () {
        var name = "#" + $(this).prop('id') + " option";
        if ($(name).length < 2) {
            $(this).addClass('remove_arrow');
        }
    });
}

function add_vm(count, name, id) {
    // console.log($('.add_btn').prop("id"));
    var count_of_vm = parseInt($('#count_of_vm_' + id).val()) + 1;
    $('#count_of_vm_' + name).val(count_of_vm);
    var region_val = $('#region_' + id).val();
    var sector_val = $('#sector_' + id).val();
    // console.log(count);
    $.ajax({
        type: "POST",
        url: 'edit-vm_ajax.php',
        data: {
            "name": name,
            "id": count_of_vm,
            "reg_val": region_val,
            "sect_val": sector_val,
            "count": count
        },
        dataType: "TEXT",
        success: function (response) {
            $('#virtual_machine_' + id).append(response);
        }
    });

}


function add_estmt() {
    let count_of = 1;
    var count_of_est = parseInt($('#count_of_est').val()) + 1;
    $('#count_of_est').val(count_of_est);
    // alert (count_of_est+""+count_of_vm);
    var count_id = count_of_est + "" + count_of;
    $.ajax({
        type: "POST",
        url: 'edit-ajax_estm.php',
        data: {
            name: count_of_est,
            id: count_id
        },
        dataType: "TEXT",
        success: function (response) {
            $('#myTab').append(response);
        }
    });
}

$(document).ready(function () {
    let width = window.innerWidth
    if (width <= 767) {
        $('.check').addClass('float-right');
    }
    else {
        $('.check').removeClass('float-right');
    }

    if (width <= 576) {
        console.log(width)
        if ($('.nav-item').hasClass('d-none')) {
            // console.log(width)
            $('.nav-item').removeClass('d-none');
        }
    }

    $(window).resize(function () {
        if (isZooming() === "zooming" || isZooming() === "resizing") {
            let width = window.innerWidth;
            if (width <= 767) {
                $('.check').addClass('float-right');
            }
            else {
                $('.check').removeClass('float-right');
            }

            if (width < 576) {
                if ($('.nav-item').hasClass('d-none')) {
                    // console.log(width);
                    $('.nav-item').removeClass('d-none');
                }
            }
        }
    });
    px_ratio = window.devicePixelRatio || window.screen.availWidth / document.documentElement.clientWidth;
    function isZooming() {
        var newPx_ratio = window.devicePixelRatio || window.screen.availWidth / document.documentElement.clientWidth;
        if (newPx_ratio != px_ratio) {
            px_ratio = newPx_ratio;
            return "zooming";
        } else {
            return "resizing";
        }
    }

    function remove_arrow() {
        $('.form-group').find('select').each(function () {
            var name = "#" + $(this).prop('id') + " option";
            if ($(name).length < 2) {
                // console.log($(this));
                // $(this).attr('disabled','true');
                $(this).addClass('remove_arr');
            }
        })
    }

    remove_arrow();
})

function changeOnInput(lable, input, defaultInput = '') {
    if ($(input).val() === '') {
        $(lable).html(defaultInput);
    }
    else {
        $(lable).html(escapeHtml($(input).val()));
    }
    $(input).on("input", function () {
        if ($(this).val() != "") {
            $(lable).html(escapeHtml($(this).val()));
        } else {
            $(lable).html(defaultInput);
        }

    });
}

$('.hsm').on('change', function () {
    if ($(this).val() === "Dedicated HSM") {
        $(this).parent().find('.hide').attr('placeholder', "No. of Keys");
    } else {
        $(this).parent().find('.hide').attr('placeholder', "No. of Devices");
    }
})




function mode() {
    // console.log('hi')

    if ($('#mode').prop('checked')) {
        $('nav').removeClass('navbar-light')
        $('nav').addClass('navbar-dark');

        $('aside').removeClass('sidebar-light-primary')
        $('aside').addClass('sidebar-dark-primary')

        $('body, .Main').attr('style', "background:rgb(48 64 81);overflow-x: hidden;")
        $('div, select, input, label,table tr td, table tr th ,p,span').removeClass('light');
        $('div, select, input,  label, table, table tr td, table tr th ,span, p').addClass('dark');
        $('body').append("<style class = 'st_dark'>  ::placeholder{ color: #eee;} </style>")
        // $('.full table tr th').attr('style','background: rgb(90 159 187)')

        // $('.tbl_tc th').attr('style', 'background: #343a40; border: hidden; color: #007dc5; font-weight: bold')

        if ($('section').hasClass('light')) {
            $('section').removeClass('light');
            $('section').addClass('dark')
        }

        if ($('.except').hasClass('dark')) {
            $('.except').removeClass('dark')
        }

        $('.st_light').remove()
        if ($(".mytabs").hasClass('dark')) {
            $(".mytabs").removeClass('dark')
        }

        $('#mode').parent().find('label').attr("title", "Turn to Light Mode")

    }
    else {
        $('nav').addClass('navbar-light')
        $('nav').removeClass('navbar-dark');

        $('aside').removeClass('sidebar-dark-primary')
        $('aside').addClass('sidebar-light-primary')

        $('body,.Main').attr('style', "background:#f4f6f9; overflow-x: hidden;")

        $('.st_dark').remove()

        $('body').append("<style class = 'st_light'>  ::placeholder{ color: #grey;} </style>")


        $('div, select, input,  label,table tr td, table tr th ,span, p').removeClass('dark');
        $('div, select, input,  label,table tr td, table tr th ,p,span ').addClass('light');
        // $('.full table tr th').attr('style','background: rgb(199, 239, 255)')
        // $('.tbl_tc th, .tbl_tc tr').attr('style', 'background: white; border: hidden; color: #007dc5; font-weight: bold;')

        if ($(".mytabs,.Main").hasClass('light')) {
            $(".mytabs,.Main").removeClass('light')
        }
        if ($('section').hasClass('dark')) {
            $('section').removeClass('dark');
            $('section').addClass('light')
        }

        if ($('.except').hasClass('light')) {
            $('.except').removeClass('light')
        }

        $('#mode').parent().find('label').attr("title", "Turn to Dark Mode")
    }
}

$('#mode').on('input', function () {
    localStorage.setItem('mode', $(this).prop('checked'));
    mode()
})
$(document).ready(function () {
    if (localStorage.getItem('mode') === "true") {
        $('#mode').attr('checked', 'true')
        mode()
    } else {
        // console.log(localStorage.getItem('mode'))
        mode()
    }
})

$('.nav-link').on('click', function () {
    $('.nav-link').removeClass('active')
    $(this).addClass('active')

})


function rgbToHex(rgb) {
    var parts = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    delete parts[0];
    for (var i = 1; i <= 3; ++i) {
        parts[i] = parseInt(parts[i]).toString(16);
        if (parts[i].length === 1) {
            parts[i] = '0' + parts[i];
        }


    }
    return parts.join('').toUpperCase();
}



function convertTablesToExcel(tables, type, sheetNames) {
    var workbook = new ExcelJS.Workbook();

    let p = 1
    tables.forEach(function (table, index) {
        let keySheet = 'sheet' + p
        var worksheet = workbook.addWorksheet(sheetNames[keySheet]);
        let orderNo = worksheet.orderNo; 
        if (sheetNames[keySheet] === "Summary Sheet") {
            worksheet.orderNo = 1
        }else{
            worksheet.orderNo = orderNo + 1;
        }
        // console.log(workbook)
        var startRow = 1;
        var endRow = 100;
        var startCol = 1;
        var endCol = 26; // A to Z corresponds to 26 columns

        for (var row = startRow; row <= endRow; row++) {
            for (var col = startCol; col <= endCol; col++) {
                var cellAddress = String.fromCharCode(64 + col) + row;
                var cell = worksheet.getCell(cellAddress);
                // console.log(cell)
                // Apply formatting to the selected cell
                cell.fill = {
                    type: 'pattern',
                    pattern: 'solid',
                    fgColor: {
                        argb: 'ffffff' // Set the desired color code (e.g., red)
                    }
                };
            }
        }

        var rows = table.querySelectorAll('tr');
        var rowCount = rows.length;

        var cellMap = new Map(); // To keep track of merged cells

        for (var i = 0; i < rowCount; i++) {
            var row = rows[i];
            var cells = row.querySelectorAll('td, th');
            var cellCount = cells.length;

            var cellIndex = 0;

            for (var j = 0; j < cellCount; j++) {
                var cell = cells[j];
                var value = cell.innerText;
                var colspan = parseInt(cell.getAttribute('colspan')) || 1;

                // skip Cells
                if (type === "Shareable") {
                    if (cell.classList.contains('unshareable')) {
                        continue;
                    }
                }

                if (cell.classList.contains('noExl')) {
                    continue;
                }

                // Skip cells that are part of merged regions
                if (cellMap.has(i + 1) && cellMap.get(i + 1).has(cellIndex + 1)) {
                    cellIndex++;
                    continue;
                }

                var worksheetCell = worksheet.getCell(i + 1, cellIndex + 1);

                if(!cell.classList.contains('noBorder')){
                    worksheetCell.border = {
                        top: { style: 'thin' },
                        left: { style: 'thin' },
                        bottom: { style: 'thin' },
                        right: { style: 'thin' }
                    };
                }

                if(cell.classList.contains('head')){
                    worksheetCell.font = {
                        name: 'calibri',
                        color: { argb: '00bfff' },
                        size: 14,
                    };
                    console.log(worksheetCell)
                }

                // Copy cell value
                worksheetCell.value = value;

                // Copy cell styles
                var computedStyle = window.getComputedStyle(cell);
                worksheetCell.font = {
                    bold: computedStyle.fontWeight === 'bold',
                    italic: computedStyle.fontStyle === 'italic',
                    underline: computedStyle.textDecorationLine === 'underline'
                };
                worksheetCell.alignment = {
                    vertical: computedStyle.verticalAlign,
                    horizontal: computedStyle.textAlign
                };
                //   Preserve Colors
                var bgColor = computedStyle.backgroundColor;
                if (bgColor === "rgb(52, 58, 64)") {
                    bgColor = "rgb(255,255,255)"
                }
                if (bgColor !== 'rgba(0, 0, 0, 0)' && bgColor !== 'transparent') {
                    worksheetCell.fill = {
                        type: 'pattern',
                        pattern: 'solid',
                        fgColor: { argb: rgbToHex(bgColor) }
                    };
                }

                // Merge cells with colspan
                if (colspan > 1) {
                    var endColumnIndex = cellIndex + colspan - 1;
                    worksheet.mergeCells(i + 1, cellIndex + 1, i + 1, endColumnIndex + 1);
                    cellIndex += colspan;

                    // Store merged cells in the cellMap
                    for (var k = cellIndex - colspan + 2; k <= cellIndex; k++) {
                        if (!cellMap.has(i + 1)) {
                            cellMap.set(i + 1, new Set());
                        }
                        cellMap.get(i + 1).add(k);
                    }
                } else {
                    cellIndex++;
                }

                var imageCellRange = 'A1:B3';
                var imageId = index + 1;
                var imageUrl = table.getAttribute('data-image');
                if (imageUrl) {
                    worksheet.addImage({
                        filename: '../asset/logo.png',
                        extension: 'png',
                        hyperlink: imageUrl,
                        imageId: imageId,
                        ref: imageCellRange,
                        editAs: 'oneCellAnchor',
                        imageData: fetch(imageUrl)
                            .then(function (response) { return response.arrayBuffer(); })
                    });
                }
            }
        }
        p++;


    });



    workbook.xlsx.writeBuffer().then(function (buffer) {
        var blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
        saveAs(blob, 'ESDS - Estimate.xlsx');
    });
}


