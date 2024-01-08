<?php
   session_start();
    include "../template/menuPrincipal.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    include "../scripts/validarNumImp.php";
    include "../scripts/validarNumCir.php"; 
    include "../scripts/validarNomeCir.php";
    include "../scripts/validarMac.php"; 
    include "../scripts/mascara.php";
    include_once("../dao/conexao.php"); 
?>

        <script src="../js/jquery.min.3-1.js"></script>
        <script src="../js/bootstrap3-typeahead.min.js"></script>  
        <script src="../js/jquery-latest.min.js"></script>
        <script>b
            $(document).ready(function() {
                $('#pillsUfs-comp.termo_busca').keyup(function() {
                    $.ajax({
                        type: 'POST',
                        url: '../scripts/buscaMaterial.php',
                        data: {
                            nome: $("#termo_busca").val()
                        },
                        success: function(data) {
                            $('#listaMaterial').html(data);
                        }
                    });
                });

            });
        </script>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Entrada de Materiais:</h3>
                <div class="panel-header">
                    <form class="form-horizontal" action="" method="POST">
                        <ul class="nav nav-pillsUfs mb-3" id="pillsUfs-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pillsUfs-imp-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-imp" type="button" role="tab" aria-controls="pillsUfs-imp" aria-selected="true">Impressoras</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-comp-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-comp" type="button" role="tab" aria-controls="pillsUfs-comp" aria-selected="false">Computador</button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pillsUfs-tabContent">
                            <div class="tab-pane fade show active" id="pillsUfs-imp" role="tabpanel" aria-labelledby="pillsUfs-imp-tab">
                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Pesquisar Material:</label>
                                        <input type="text" class="form-control" id="termobusca2" name="termobusca2">               
                                    </div>
                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Descrição do Material:</label>
                                        <select class="form-control" name="listaMaterialImp" id="listaMaterialImp" onclick="if( $('#listaMaterialImp').html() == '' ){ alert('Material Não encontrado.\n Comunique ao Administrador do Sistema.');}" required></select>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Código:</label>
                                        <input type="text" class="form-control" name="codigoImp" id="codigoImp" value="<?= $codigo; $_SESSION['codigo'] = $codigo ?>" readonly />
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-comp" role="tabpanel" aria-labelledby="pillsUfs-comp-tab">
                                <div class="row">
                                   <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Pesquisar Material:</label>
                                        <input type="text" class="form-control" id="termo_busca" name="termo_busca">               
                                    </div>
                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Descrição do Material:</label>
                                        <select class="form-control" name="listaMaterial" id="listaMaterial" onclick="if( $('#listaMaterial').html() == '' ){ alert('Material Não encontrado.\n Comunique ao Administrador do Sistema.');}" required></select>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Código:</label>
                                        <input type="text" class="form-control" name="codigoImp" id="codigoImp" value="<?= $codigo; $_SESSION['codigo'] = $codigo ?>" readonly />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div id="actions" class="row">
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-success">Salvar</button>
                            </div>

                            <div class="col-md-2">
                                <a href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                            </div>

                            <div class="col px-md-1 col-md-12" id="MostraPesq"> </div>
                            <div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>        
        <div class="bg-primary col-12 fixed-bottom p-5"></div>
    </body>
</html>