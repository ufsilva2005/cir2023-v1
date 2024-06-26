  <?php
    session_start();
    include "../template/menuPrincipal.php";

    if ($_SESSION['saiMaterial'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    include "../scripts/validarNumImpOut.php";
    include "../scripts/validarNumCirOut.php"; 
    //include "../scripts/validarNomeCir.php";
    //include "../scripts/validarMac.php"; 
    include "../scripts/mascara.php";
    include_once("../dao/conexao.php"); 
?>
    <script src="../js/jquery.min.3-1.js"></script>
    <script src="../js/bootstrap3-typeahead.min.js"></script>  
    <script src="../js/jquery-latest.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#termo_busca').keyup(function() {
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
    <script src="../js/codigoMat.js"></script>
    

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastrar Saídas de Materiais</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <form name="cadastro" id="cadastro" method="post" action="../controllers/saidaMaterial.php">
                            <fieldset>	                                
                               <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Pesquisar Material:</label>
                                        <input type="text" class="form-control" id="termo_busca" name="termo_busca">               
                                    </div>
                                                                                
                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Descrição do Material:</label>
                                        <select class="form-control" name="listaMaterial" id="listaMaterial" onclick="if( $('#listaMaterial').html() == '' ){ alert('Material Não encontrado.\n Comunique ao Administrador do Sistema.');}" required></select>
                                    </div>     

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Código:</label>
                                        <input type="text" class="form-control"  name="codigo" id="codigo" value =" " readonly tabindex="-1">
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Quantidade:</label>
                                        <input type="number" class="form-control" name="quantidadeMat" id="quantidadeMat" pattern="\d*"  min="1" required/>
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Selecione:</label> <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="compImp" id="compImp1" value="computador" checked>
                                            <label class="form-check-label" for="compImp1">Computador</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="compImp" id="compImp2" value="impressora" >
                                            <label class="form-check-label" for="compImp2">Impressora</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Nº do Computador:</label>
                                        <input type="text" class="form-control" name = "numCir" id = "numCir" pattern="[0-9]+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000000000" >
                                    </div>  

                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Nº de Série da Impressora:</label>
                                        <input type="text" class="form-control" name="numSerie" id="numSerie" pattern=".{5,}" placeholder="000000000000" oninvalid="setCustomValidity('O Número de Série deve ter no Minimo 12 digitos !')" onchange="try{setCustomValidity('')}catch(e){}" >
                                    </div>
                                                                                
                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Nome do Técnico:</label>
                                        <select class="form-control" name="nomeTecnico" required>
                                            <option> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $funcionarioDAO = new ControleCirDAO();
                                            $nomeTabela = "funcionario";
                                            foreach ($funcionarioDAO->ListarTudo($nomeTabela) as $res) {
                                            ?>
                                                <option value="<?php echo $res->idFuncionario; ?>"> <?php echo $res->nomeFuncionario; ?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>  

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Data da Saída do Material:</label>
                                        <input type="date" class="form-control"  name="dataSaida" > 
                                    </div>  
                                </div>  

                                <div class="row">
                                    <div class="col px-md-1  col-md-12">
                                        <label for="inputSuccess" class="control-label">OBS:</label>
                                        <input type="text" class="form-control" name = "obs" required >
                                    </div>  
                                </div>

                                <hr>

                                <div class="row">	
                                    <label>
                                        <h5 class="text-primary">Responsavel pelas Informações</h5>
                                    </label>	
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Data:</label>
                                        <input type="text" class="form-control" value="<?php $date = date('d/m/Y'); echo $date; $_SESSION['data'] = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-10">
                                        <label for="inputSuccess" class="control-label">Nome:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
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
                            </fieldset>
                        </form>  
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE COMPUTADORES</a></p>
                    </footer>
                </div>
            </div>
        </nav>
    </body>
</html>
        <