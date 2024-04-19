<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Selecione o Tipo de Pesquisa:</h3>
                <div class="panel-header">
                    <form class="form-horizontal" action="./relacaoNotPesquisaResult.php" method="POST">
                        <ul class="nav nav-pillsUfs mb-3" id="pillsUfs-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pillsUfs-andar-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-andar" type="button" role="tab" aria-controls="pillsUfs-andar" aria-selected="true">Andar</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-divisao-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-divisao" type="button" role="tab" aria-controls="pillsUfs-divisao" aria-selected="false">Divisão</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-setor-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-setor" type="button" role="tab" aria-controls="pillsUfs-setor" aria-selected="false">Setor</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-ativos-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-ativos" type="button" role="tab" aria-controls="pillsUfs-ativos" aria-selected="false">Status</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-sistema-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-sistema" type="button" role="tab" aria-controls="pillsUfs-sistema" aria-selected="false">Sistema</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-data-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-data" type="button" role="tab" aria-controls="pillsUfs-data" aria-selected="false">Data de Cadastro</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-processador-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-processador" type="button" role="tab" aria-controls="pillsUfs-processador" aria-selected="false">Tipo de Processador</button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pillsUfs-tabContent">
                            <div class="tab-pane fade show active" id="pillsUfs-andar" role="tabpanel" aria-labelledby="pillsUfs-andar-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Selecione o Andar:</label>
                                     <select class="form-control" name = "andar">
                                            <option> </option>
                                            <option>subsolo</option>
                                            <option>1° andar</option>
                                            <option>2° andar</option>
                                            <option>3° andar</option>
                                            <option>4° andar</option>
                                            <option>5° andar</option>
                                            <option>6° andar</option>
                                            <option>7° andar</option>
                                            <option>8° andar</option>
                                            <option>9° andar</option>
                                            <option>10° andar</option>
                                            <option>11° andar</option>
                                            <option>12° andar</option>
                                            <option>13° andar</option>
                                        </select>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-divisao" role="tabpanel" aria-labelledby="pillsUfs-divisao-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Divisão:</label>
                                    <select class="form-control" id="divisao" name="divisao">
                                        <option value=""> </option>
                                        <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $divisaoDAO = new ControleCirDAO();
                                            $nomeTabela = "divisao";
                                            foreach ($divisaoDAO->ListarTudo($nomeTabela) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idDivisao; ?>"> <?php echo $res->divisao; $_SESSION['nomeDivisão'] = $res->divisao;?> </option>
                                                    <?php
                                                }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-setor" role="tabpanel" aria-labelledby="pillsUfs-setor-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Selecione o Setor:</label>
                                    <select class="form-control" name="setor" >
                                        <option value=""> </option>
                                        <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $setorDAO = new ControleCirDAO();
                                            $nomeTabela = "setor";
                                            foreach ($setorDAO->ListarTudo($nomeTabela) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idSetor; ?>"> <?php echo $res->nomeLocal;  $_SESSION['nomeLocal'] = $res->nomeLocal;?> </option>
                                                    <?php
                                                }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-ativos" role="tabpanel" aria-labelledby="pillsUfs-ativos-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Selecione o Status:</label>
                                    <select class="form-control" name="status">
                                        <option> </option>
                                        <option>Ativos</option>
                                        <option>Desativados</option>
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-sistema" role="tabpanel" aria-labelledby="pillsUfs-sistema-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Selecione  o Sistema Operacional:</label>
                                    <select class="form-control"  name = "sistema" >
                                        <option> </option>
                                        <option>WINDOWS XP</option>
                                        <option>WINDOWS VISTA</option>
                                        <option>WINDOWS 7</option>
                                        <option>WINDOWS 8</option>
                                        <option>WINDOWS 10</option>
                                        <option>WINDOWS 11</option>
                                        <option>MAC OS</option>
                                        <option>LINUX</option>
                                        <option>OPEN BSD</option>
                                        <option>NOVELL</option>
                                    </select>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-data" role="tabpanel" aria-labelledby="pillsUfs-data-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Informe a Data Inicial e Final:</label>
                                    <div class="row">
                                        <div class="col px-md-1 col-md-4">                                    
                                            <input type="date" class="form-control" name="dataIn" >     
                                        </div>    
                                        <div class="col px-md-1 col-md-4">                                    
                                            <input type="date" class="form-control" name="dataOut" >     
                                        </div>    
                                     </div>                  
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-processador" role="tabpanel" aria-labelledby="pillsUfs-processador-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Informe o Processador:</label>
                                    <input type="text" class="form-control" name="processador" >  
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