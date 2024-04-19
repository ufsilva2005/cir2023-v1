<?php
    session_start();
	include "../funcao/funcao.php";	
	include "../models/class-saiMaterial.php";
	include "../dao/DAO-controleCir.php";	

    $listaMaterial = $_POST['listaMaterial'];
    $codigoMat = $_POST['codigo'];
    $quantidadeMat = $_POST['quantidadeMat'];
    $compImp = $_POST['compImp'];
    $numCir = $_POST['numCir'];
    $numSerie = $_POST['numSerie'];
    $idFuncionario = $_POST['nomeTecnico'];
    $dataSaida = $_POST['dataSaida'];
    $obs = $_POST['obs'];
    $_SESSION['nomeFuncionario'];
    $_SESSION['data']; 

    if($numCir == "" && $numSerie == "")
        {
            echo "<script type='text/javascript'>alert('Nº DO COMPUTADOR OU Nº DE SÉRIE DE IMPRESSORA NÃO PODE SER EM BRANCO');</script>";
            echo "<script>location = '../views/materialSaidas.php';</script>";   
        }

     if($numCir != "" && $numSerie != "")
        {
            echo "<script type='text/javascript'>alert('FAVOR PRENCHER OU Nº DO COMPUTADOR OU Nº DE SÉRIE DE IMPRESSORA NÃO PODE PREENCHER OS DOIS');</script>";
            echo "<script>location = '../views/materialSaidas.php';</script>";   
        }

    if($compImp == "computador" && $numCir == "" && $numSerie != "")
        {
            echo "<script type='text/javascript'>alert('OPÇÃO SELECIONADA É COMPUTADOR E NÃO IMPRESSORA');</script>";
            echo "<script>location = '../views/materialSaidas.php';</script>";   
        }
  
    if($compImp == "impressora" && $numCir != "" && $numSerie == "")
        {
            echo "<script type='text/javascript'>alert('OPÇÃO SELECIONADA É IMPRESSORA NÃO COMPUTADOR');</script>";
            echo "<script>location = '../views/materialSaidas.php';</script>";   
        }


    if($compImp == "computador" && $numCir != "" && $numSerie == "")
        {
            echo "<br>listaMaterial => " . $listaMaterial;
            echo "<br>codigoMat => " . $codigoMat;
            echo "<br>quantidadeMat => " . $quantidadeMat;
            echo "<br>compImp => " . $compImp;
            echo "<br>numCir => " . $numCir;
            //echo "<br>numSerie => " . $numSerie;
            echo "<br>nomeTecnico => " . $idFuncionario;
            echo "<br>dataSaida => " . $dataSaida;
            echo "<br>obs => " . $obs;
            echo "<br>nomeFuncionario => " . $_SESSION['nomeFuncionario'];
            echo "<br>data => " . formatarData($_SESSION['data']); 
        }

     if($compImp == "impressora" && $numCir == "" && $numSerie != "")
        {
            echo "<br>listaMaterial => " . $listaMaterial;
            echo "<br>codigoMat => " . $codigoMat;
            echo "<br>quantidadeMat => " . $quantidadeMat;
            echo "<br>compImp => " . $compImp;
            //echo "<br>numCir => " . $numCir;
            echo "<br>numSerie => " . $numSerie;
            echo "<br>nomeTecnico => " . $idFuncionario;
            echo "<br>dataSaida => " . $dataSaida;
            echo "<br>obs => " . $obs;
            echo "<br>nomeFuncionario => " . $_SESSION['nomeFuncionario'];
            echo "<br>data => " . formatarData($_SESSION['data']);
        }

    //buscar id funcionário
    $nomeTabela = "funcionario";
    $tipoOpcao = "nomeFuncionario";
    $funcionarioDAO = new ControleCirDAO();
	foreach ($funcionarioDAO->Verificar($nomeTabela, $tipoOpcao, $_SESSION['nomeFuncionario']) as $func)
		{ 
			$idFuncionario = $func->idFuncionario;				          
		}

    //buscar nome do técnico 
    $nomeTabela = "funcionario";
    $tipoOpcao = "nomeFuncionario";
    $funcionarioDAO = new ControleCirDAO();
	foreach ($funcionarioDAO->Verificar($nomeTabela, $tipoOpcao, $_SESSION['nomeFuncionario']) as $func)
		{ 
			$idFuncionario = $func->idFuncionario;				          
		}

   
/*
    //savar dados no banco
    $entradaMat = new EntMaterial( $idEntMat,formatarData($_SESSION['data']),$quantidadeMat,$listaMaterial,$codigoMat,$idFuncionario);
    //echo "<br><== entradaMat ==><br>";
    //$entradaMat->exibir();
    $entradaMatDAO = new ControleCirDAO(); 
    $entradaMatDAO->CadastrarEntMaterial($entradaMat);

    //atualizar tabela material
    $nomeTabela = "material";
    $tipoOpcao = "idMaterial";
    $materialDAO = new ControleCirDAO();
	foreach ($materialDAO->Verificar($nomeTabela, $tipoOpcao, $listaMaterial) as $mat)
		{ 
			$quantidade = $mat->quantidade;				          
		}

    $quantidadeBd = $quantidade+$quantidadeMat;
    //echo "<br>quantiadeBd ==> " . $quantidadeBd;
             
    $updateMaterialDAO = new ControleCirDAO();  
    $updateMaterialDAO->UpdateMaterial($listaMaterial,$quantidadeBd);

    echo "<script type='text/javascript'>alert('ENTRADA DE MATERIAL CADASTRADA COM SUCESSO');</script>";
    echo "<script>location = '../views/materialEntradas.php';</script>";   
    */
?>
