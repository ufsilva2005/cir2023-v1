<?php
include "../template/menuPrincipal.php";
include "../scripts/mascara.php";

if ($_SESSION['impressora'] != "sim") {
    echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
    echo "<script>location = '../template/menuPrincipal.php';</script>";
}

include "../scripts/validarNumImp.php";
include "../scripts/validarNomeImp.php";
include "../scripts/validarMacImp.php";
include "../scripts/mascara.php";
require_once '../controllers/impressoraBuscar.php';
?>
<script type="text/javascript" src="../javaScripts/typeahead.js"></script>

<script>
  $(function ufs() {
    ipImpressora.disabled = false;    
  });
</script>

        <hr>
        <nav class="navbar navbar-dark" >
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Informações da Impressora</h3>
                <form name="cadastro" id="cadastro" method="post" action="../controllers/impressoraUpdate.php">
                    <fieldset>
                        <div class="row">
                            <label>
                                <h5 class="text-primary">1-> Informações Sobre a Impressora</h5>
                            </label>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-1">
                                <label for="inputSuccess" class="control-label">Id:</label>
                                <input type="text" class="form-control" value="<?= $idImpressora;
                                                                                $_SESSION['idImpressora'] = $idImpressora; ?>" disabled>
                            </div>

                            <div class="col px-md-1  col-md-3">
                                <label for="inputSuccess" class="control-label">Nome da Impressora:</label>
                                <input type="text" class="form-control" value="<?= $nomeImpressora;
                                                                                $_SESSION['antNomeImp'] = $nomeImpressora; ?>" name="nomeImpressora" id="nomeImpressora">
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Nº de Série: </label>
                                <input type="text" class="form-control" value="<?= $numSerie;
                                                                                $_SESSION['antNumSerie'] = $numSerie ?>" name="numSerie" id="numSerie">
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <div class="custom-control custom-radio">
                                    <label for="inputSuccess" class="control-label">Conexão:</label>
                                    <select class="form-control" name="conexaoImp" id="conexaoImp" onchange="verifica(this.value)">
                                        <option value="<?php echo $conexaoImp; $_SESSION['antConexaoImp'] = $conexaoImp ?>"><?php echo $conexaoImp; ?></option> 
                                        <option value=""></option>
                                        <option value="Rede">Rede</option>
                                        <option value="Usb">Usb</option>
                                    </select>                                    
                                </div>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">IP: </label>
                                <input type="text" class="form-control" value="<?= $ipImpressora;
                                                                            $_SESSION['antNumIp'] = $ipImpressora ?>" id = "ipImpressora" name="ipImpressora" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}" disabled>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">MAC:</label>
                                <input type="text" class="form-control" value="<?= $macImpressora;
                                                                                $_SESSION['antNumMac'] = $macImpressora ?>" name="numMac" id="numMac" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}">
                            </div>                           
                        </div>

                        <hr>
<div class="row">                        
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">TONERS:</label>
                                <?php
                                    $t = sizeof($tipoToner);
                                    $nomeTabela = "material";
                                    $tipoOpcao = "idMaterial";                                 
                                    for ($i = 0; $i < $t; $i++) 
                                        {
                                            $idTp = $tipoToner[$i];
                                            $tipoTonerBdDAO = new ControleCirDAO();
                                            foreach ($tipoTonerBdDAO->ListarOpcao($nomeTabela, $tipoOpcao, $idTp)as $resp)
                                                { 
                                                    $x = $i + 1;
                                                    $tp[$x] = $descricao = $resp->descricao;  
                                                } 
                                        }       
                                ?> 
                            </div>
                        </div>

                        <div class="row">
                             <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Colorida:</label> <br>
                                <select class="form-control" id="colorida" name="colorida">
                                    <option value="<?php echo $colorida; $_SESSION['antColorida'] = $colorida ?>"><?php echo $colorida; ?></option> 
                                    <option value=""></option>
                                    <option value="sim">SIM</option>
                                    <option value="não">NÂO</option>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label class="control-label">Tipo do Tonner 1:</label>
                                <select class="form-control" name="tonner1">
                                    <option value="<?php echo $tipoToner[0]; $_SESSION['antToner1'] = $tipoToner[0] ?>"><?php echo $tp[1]; ?></option> 
                                    <option value=""></option>
                                    <?php
                                        include_once "../dao/DAO-controleCir.php";
                                        $tonnerDAO = new ControleCirDAO();                                               
                                        foreach ($tonnerDAO->ListarTonner() as $res) 
                                            {
                                                ?>
                                                    <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                <?php
                                            }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label class="control-label">Tipo do Tonner 2:</label>
                                <select class="form-control" name="tonner2" >
                                    <option value="<?php echo $tipoToner[1]; $_SESSION['antToner2'] = $tipoToner[1] ?>"><?php echo $tp[2]; ?></option>
                                    <option value=""> </option>
                                    <?php
                                        include_once "../dao/DAO-controleCir.php";
                                        $tonnerDAO = new ControleCirDAO();
                                        $nomeTabela = "material";
                                        $tipoOpcao = "descricao";
                                        $status = "statusMat";
                                        $valorStatus = "ativo";
                                            $valorOpcao = "TONNER";
                                            $valorOpcao2 = "CARTUCHO DE TINTA";
                                            foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                    <?php
                                                }
                                    ?>
                                </select>
                            </div>
                             
                            <div class="col px-md-1 col-md-2">
                                <label class="control-label">Tipo do Tonner 3:</label>
                                <select class="form-control" name="tonner3" >
                                    <option value="<?php echo $tipoToner[2]; $_SESSION['antToner3'] = $tipoToner[2] ?>"><?php echo $tp[3]; ?></option>
                                    <option value=""> </option>
                                    <?php
                                        include_once "../dao/DAO-controleCir.php";
                                        $tonnerDAO = new ControleCirDAO();
                                        $nomeTabela = "material";
                                        $tipoOpcao = "descricao";
                                        $status = "statusMat";
                                        $valorStatus = "ativo";
                                        $valorOpcao = "TONNER";
                                        $valorOpcao2 = "CARTUCHO DE TINTA";
                                        foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                            {
                                                ?>
                                                    <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                <?php
                                            }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label class="control-label">Tipo do Tonner 4:</label>
                                <select class="form-control" name="tonner4" >
                                    <option value="<?php echo $tipoToner[3]; $_SESSION['antToner4'] = $tipoToner[3] ?>"><?php echo $tp[4]; ?></option>
                                    <option value=""> </option>
                                    <?php
                                        include_once "../dao/DAO-controleCir.php";
                                        $tonnerDAO = new ControleCirDAO();
                                        $nomeTabela = "material";
                                        $tipoOpcao = "descricao";
                                        $status = "statusMat";
                                        $valorStatus = "ativo";
                                        $valorOpcao = "TONNER";
                                        $valorOpcao2 = "CARTUCHO DE TINTA";
                                        foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                            {
                                                ?>
                                                    <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                <?php
                                            }
                                    ?>
                                </select>
                            </div>
                        </div>

                        <hr>

                        <div class="row">
                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">Modelo: </label>
                                <select class="form-control" id="modelo" name="modelo">
                                    <option value="<?php echo $idModelo;
                                                    $_SESSION['antModelImp'] = $idModelo; ?>"> <?php echo $modeloImpressora; ?></option>
                                    <option value=""> </option>
                                    <?php
                                    include_once "../dao/DAO-controleCir.php";
                                    $impreDAO = new ControleCirDAO();
                                    $nomeTabela = "modeloImpressora";
                                    $tipoOpcao = "statusModelo";
                                    $valorOpcao = "ativo";
                                    foreach ($impreDAO->ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao) as $res) {
                                    ?>
                                        <option value="<?php echo $res->idModelo; ?>"> <?php echo $res->modeloImpressora; ?> </option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <div class="custom-control custom-radio">
                                    <label for="inputSuccess" class="control-label">Status:</label>
                                    <select class="form-control" id="status" name="status">
                                        <option value="<?php echo $statusImpressora; $_SESSION['antStatusImp'] = $statusImpressora ?>"><?php echo $statusImpressora; ?></option> 
                                        <option value=""></option>
                                        <option value="ativo">ativa</option>
                                        <option value="inativo">inativa</option>
                                    </select>
                                </div>
                            </div>                            
                        </div>

                       <div class="row">                        
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">TONERS:</label>
                                <?php
                                    $t = sizeof($tipoToner);
                                    $nomeTabela = "material";
                                    $tipoOpcao = "idMaterial";                                 
                                    for ($i = 0; $i < $t; $i++) 
                                        {
                                            $id = $tipoToner[$i];
                                            $tipoTonerBdDAO = new ControleCirDAO();
                                            foreach ($tipoTonerBdDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                                                { 
                                                    $x = $i + 1;
                                                    $tp[$x] = $resp->descricao;  
                                                    $idTp[$x] = $resp->idMaterial;  
                                                } 
                                        }       
                                ?> 
                            </div>
                        </div>

                        <hr>

                        <div class="row">
                            <label>
                                <h5 class="text-primary">2-> Informações do local onde esta a máquina</h5>
                            </label>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Divisão:</label>
                                <select class="form-control" id="divisao" name="divisao">
                                    <option value="<?php echo $idDivisao1;
                                                    $_SESSION['antDivisao'] = $idDivisao1; ?>"> <?php echo $divisao1; ?></option>
                                    <option> </option>
                                    <?php
                                    include_once "../dao/DAO-controleCir.php";
                                    $divisaoDAO = new ControleCirDAO();
                                    $nomeTabela = "divisao";
                                    foreach ($divisaoDAO->ListarTudo($nomeTabela) as $res) {
                                    ?>
                                        <option value="<?php echo $res->idDivisao; ?>"> <?php echo $res->divisao; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">Localização:</label>
                                <select class="form-control" id="local" name="local">
                                    <option><?= $localizacao1;
                                            $_SESSION['antLocalizacao'] = $localizacao1 ?></option>
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

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Ramal: </label>
                                <input type="text" class="form-control" value="<?= $ramal1;
                                                                                $_SESSION['antRamal'] = $ramal1 ?>" name="ramal" pattern="[0-9]{4}+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000" maxlength="4">
                            </div>

                            <div class="col px-md-1 col-md-5">
                                <label for="inputSuccess" class="control-label">Responsável: </label>
                                <input type="text" class="form-control" value="<?= $respSetComp1;
                                                                                $_SESSION['antRespSetComp'] = $respSetComp1 ?>" name="respSetComp">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">Local da Máquina: </label>
                                <input type="text" class="form-control" value="<?= $nomeLocal1;
                                                                                $_SESSION['antNomeLocal'] = $nomeLocal1 ?>" name="nomeLocal" id="nomeLocal" class="typeahead" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">Observação: <?= $obsImpressora;
                                                                                            $_SESSION['antObsImp'] = $obsImpressora ?></label>
                                <input type="text" class="form-control" name="ObsImp" required>
                            </div>
                        </div>

                        <hr>
                        </hr>

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

                        <hr>
                        </hr>
                        <div class="row">
                            <label>
                                <h5 class="text-primary">3-> Informações Restritas</h5>
                            </label>
                        </div>
                        <div class="row">
                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                <input type="date" class="form-control" value="<?= $dataCadastroA;
                                                                                $_SESSION['datacadastro'] = $dataCadastroA ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-4">
                                <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                <input type="text" class="form-control" value="<?= $respCadastro;
                                                                                $_SESSION['respCadastro'] = $respCadastro ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Data da alteração:</label>
                                <input type="date" class="form-control" value="<?php $date = date('Y-m-d');
                                                                                echo $date;
                                                                                $_SESSION['data'] = $date ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-4">
                                <label for="inputSuccess" class="control-label">Responsável pela alteração:</label>
                                <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </nav>
    </body>
</html>

<script type="text/javascript">
     function verifica(value){
        var input = document.getElementById("conexaoImp");
        if(value != "Usb"){
            ipImpressora.disabled = false;
        }else if(value == "Usb"){
            ipImpressora.disabled = true;
        }
        };
</script>



