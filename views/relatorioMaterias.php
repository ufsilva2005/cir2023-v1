<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$geralFuncionario = $_SESSION['geralFuncionario'];  
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Selecione o Tipo de Pesquisa:</h3>
                <div class="panel-header">
                    <form class="form-horizontal" action="./relatorioMaterialResult.php" method="POST">
                    <!--form class="form-horizontal" action="../controllers/relatMaterialPesquisa.php" method="POST"-->
                        <ul class="nav nav-pillsUfs mb-3" id="pillsUfs-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pillsUfs-geral-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-geral" type="button" role="tab" aria-controls="pillsUfs-geral" aria-selected="true">Listagem Geral</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-codigo-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-codigo" type="button" role="tab" aria-controls="pillsUfs-codigo" aria-selected="false">Código</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-nome-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-nome" type="button" role="tab" aria-controls="pillsUfs-nome" aria-selected="false">Material/Nome</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-empresa-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-empresa" type="button" role="tab" aria-controls="pillsUfs-empresa" aria-selected="false">Empresa</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-cnpj-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-cnpj" type="button" role="tab" aria-controls="pillsUfs-cnpj" aria-selected="false">CNPJ</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-notaFiscal-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-notaFiscal" type="button" role="tab" aria-controls="pillsUfs-notaFiscal" aria-selected="false">Nº de Nota Fiscal</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-empenho-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-empenho" type="button" role="tab" aria-controls="pillsUfs-empenho" aria-selected="false">Nº de Empenho</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-processo-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-processo" type="button" role="tab" aria-controls="pillsUfs-processo" aria-selected="false">Nº de Processo</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-dataEnt-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-dataEnt" type="button" role="tab" aria-controls="pillsUfs-dataEnt" aria-selected="false">Data de Entrada</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-dataSai-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-dataSai" type="button" role="tab" aria-controls="pillsUfs-dataSai" aria-selected="false">Data de Saída</button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pillsUfs-tabContent">
                            <div class="tab-pane fade show active" id="pillsUfs-geral" role="tabpanel" aria-labelledby="pillsUfs-geral-tab">
                                <div class="col px-md-1 col-md-5">
                                    <input type="text" class="form-control" name="geral" value = "geral" type="hidden" readonly/>   
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-codigo" role="tabpanel" aria-labelledby="pillsUfs-codigo-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Código do Material:</label>
                                    <input type="text" class="form-control" name="codigoMat" >   
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-nome" role="tabpanel" aria-labelledby="pillsUfs-nome-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Material:</label>
                                    <input type="text" class="form-control" name="nomeMat" >  
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-empresa" role="tabpanel" aria-labelledby="pillsUfs-empresa-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Nome da Empresa:</label>
                                    <input type="text" class="form-control" name="empresa" >  
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-cnpj" role="tabpanel" aria-labelledby="pillsUfs-cnpj-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">CNPJ:</label>
                                    <input type="text" class="form-control" name="cnpj" > 
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-notaFiscal" role="tabpanel" aria-labelledby="pillsUfs-notaFiscal-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Nº da Nota Fiscal:</label>
                                    <input type="text" class="form-control" name="notaFiscal" > 
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-empenho" role="tabpanel" aria-labelledby="pillsUfs-empenho-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Nº de Empenho:</label>
                                    <input type="text" class="form-control" name="empenho" > 
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-processo" role="tabpanel" aria-labelledby="pillsUfs-processo-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Nº do Processo:</label>
                                    <input type="text" class="form-control" name="processo" > 
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-dataEnt" role="tabpanel" aria-labelledby="pillsUfs-dataEnt-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Informe a Data de Entrada:</label>
                                    <div class="row">
                                        <div class="col px-md-1 col-md-4">                                    
                                            <input type="date" class="form-control" name="dataEnt" >     
                                        </div>  
                                    </div>                  
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-dataSai" role="tabpanel" aria-labelledby="pillsUfs-dataSai-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Informe a Data de Saída:</label>
                                    <div class="row">
                                        <div class="col px-md-1 col-md-4">                                    
                                            <input type="date" class="form-control" name="dataSai" >     
                                        </div>    
                                    </div>     
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div id="actions" class="row">
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-success">Pesquisar</button>
                            </div>

                            <div class="col-md-2">
                                <a href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>