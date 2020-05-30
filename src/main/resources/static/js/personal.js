
$( document ).ready(function() {
    $("form").submit(function(e){
        return false;
    });
});


$(function () {

    $('.dev-save').on('click', function () {

        var item = {};
        $('[name]').each(function () {
            addValueToObject(item, this);
        });
        var dataStr = JSON.stringify(item);

        $.ajax({
            url: 'personal',
            data: dataStr,
            type: "POST",
            contentType: 'application/json; charset=utf-8',
            dataType: "json",
            success: function (answer) {
                if (answer) {
                    if (answer.status === "SUCCESS") {
                        window.location.reload();
                    } else {
                        alert(answer.message);
                    }
                }
            }
        });
    });
});

