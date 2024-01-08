<?php
    session_start();
	include "../funcao/funcao.php";	
	include "../models/class-entMaterial.php";
	include "../dao/DAO-controleCir.php";	

    $listaMaterial = $_POST['listaMaterial'];
    $codigoMat = $_POST['codigo'];
    $quantidadeMat = $_POST['quantidadeMat'];
    $_SESSION['nomeFuncionario'];
    $_SESSION['data']; 

    //buscar id funcionário
    $nomeTabela = "funcionario";
    $tipoOpcao = "nomeFuncionario";
    $funcionarioDAO = new ControleCirDAO();
	foreach ($funcionarioDAO->Verificar($nomeTabela, $tipoOpcao, $_SESSION['nomeFuncionario']) as $func)
		{ 
			$idFuncionario = $func->idFuncionario;				          
		}

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
?>
