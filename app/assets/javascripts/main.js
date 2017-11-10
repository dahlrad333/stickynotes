function makeSortable() {
    $(".sortable").sortable({update: send_ids});
    $(".sortable").disableSelection();
}

$(makeSortable);

send_ids = () => {
    $.ajax({
        url: "/main/updatePos",
        method: "GET",
        data: {sort_array: $(".sortable").sortable("toArray")}, 
        success: function(data) {
            //alert(data);
        }
    });
}