function verificaronline(website) {
    $.ajax({
        type: "GET",
        url: 'http://' + website + "/",
        data: "",
        timeout: (2 * 1000),
        success: function (data) {
            // if can load inside iframe, load the URL
            $('.load-wrapp').css('display', 'none');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            // if x-frame-options, site is down or web server is down
            $('.load-wrapp').css('display', 'none');
            $('#error').css('display', 'block');
        }
    });
}

function adminmenu(data) {
    if (data.display == true) {
        $('#adminbody').css('display', 'block');
        $("#txadminlink").attr("src", "http://" + data.website + "/");
        verificaronline(data.website);
    } else {
        $('#adminbody').css('display', 'none');
    };
}

$(function () {
    window.onload = function (e) {
        window.addEventListener('message', function (event) {
            switch (event.data.action) {
                case 'openui':
                    adminmenu(event.data);
                    break;
            }
        })
    }
})

function fechar() {
    adminmenu(false);
    $.post("http://txadminmenu/fecharadmin", JSON.stringify({}));
}