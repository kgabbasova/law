
$( document ).ready(function() {
    $("form").submit(function(e){
        return false;
    });
});


$(function () {

    $('.dev-save-passport').on('click', function () {
        var url = 'passport';
        var item = {};
        $('.dev-passport [name]').each(function () {
            addValueToObject(item, this);
        });
        var dataStr = JSON.stringify(item);
        save(url, dataStr);
    });

    $('.dev-save-snils').on('click', function () {
        var url = 'snils';
        var item = {};
        $('.dev-snils [name]').each(function () {
            addValueToObject(item, this);
        });
        var dataStr = JSON.stringify(item);
        save(url, dataStr);
    });

    $('.dev-save-inn').on('click', function () {
        var url = 'inn';
        var item = {};
        $('.dev-inn [name]').each(function () {
            addValueToObject(item, this);
        });
        var dataStr = JSON.stringify(item);
        save(url, dataStr);
    });

    $('.dev-save-drive').on('click', function () {
        var url = 'drive-license';
        var item = {};
        $('.dev-drive [name]').each(function () {
            addValueToObject(item, this);
        });
        var dataStr = JSON.stringify(item);
        save(url, dataStr);
    });



    function save(url, dataStr) {
        $.ajax({
            url: url,
            data: dataStr,
            type: "POST",
            contentType: 'application/json; charset=utf-8',
            dataType: "json",
            success: function (answer) {
                if (answer) {
                    if (answer.status === "SUCCESS") {
                        alert("Успешно сохранено");
                    } else {
                        alert(answer.message);
                    }
                }
            }
        });
    }
});

