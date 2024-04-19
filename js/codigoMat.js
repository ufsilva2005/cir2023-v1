$(document).ready(function() {
    $('#codigo').focus(function() {
        $.ajax({
            url: '../controllers/buscaMat.php',
            type: 'GET',
            data: 'listaMaterial=' + $('#listaMaterial').val(),
            //dataType: 'html',
            //dataType: 'json',
            success: function(codigo) {
                $('#codigo').val(codigo);
            }
        });
    });
})