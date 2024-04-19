$(document).ready(function() {
    $('#unidade').focus(function() {
        $.ajax({
            url: '../controllers/buscaUnidadeMat.php',
            type: 'GET',
            data: 'listaMaterial=' + $('#listaMaterial').val(),
            //dataType: 'html',
            //dataType: 'json',
            success: function(unidade) {
                $('#unidade').val(unidade);
            }
        });
    });
})