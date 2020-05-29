function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

// $(function() {
//
//     $('.date_with_calendar').datepicker();
//     $.datepicker.setDefaults($.datepicker.regional["ru"]);
//     $(".date_with_calendar").datepicker($.datepicker.regional["ru"]);
//     $(".date_with_calendar").datepicker("option", "showAnim", "drop");
// });

function addValueToObject(dataObject, element) {
    var fieldName = $(element).attr('name');
    if (!fieldName){
        fieldName = $(element).attr('field-name');
    }
    var objFieldName = $(element).attr('object-field');
    if (objFieldName) {
        var innerObject = {};
        innerObject[objFieldName] = getValue(element);
        dataObject[fieldName] = innerObject;
    } else {
        dataObject[fieldName] = getValue(element);
    }
}

function getValue(el) {
    var saveType = $(el).attr('save-type');
    if (!saveType) { // Простой элемент
        return ($(el).attr('type') === 'checkbox') ? ($(el).prop("checked") ? 'true' : 'false') : $(el).val();
    } else if (saveType === 'object') { // Объект
        var obj = {};
        $(el).children('[form_field]').each(function (k, v) {
            obj[$(this).attr('form_field')] = getValue(this);
        });
        return obj;
    } else if (saveType === 'list') { // Коллекция
        var arr = [];
        $(el).children('div').each(function (k, v) {
            arr.push(getValue(this));
        });
        return arr;
    } else {
        return 1;
    }
}

$('.phone-mask').mask('+7-(000)-000-00-00');