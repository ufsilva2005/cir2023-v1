<?php
    session_start();
	include "../funcao/funcao.php";	
	include "../models/class-entMaterial.php";
    include "../models/class-empresaMaterial.php";
	include "../dao/DAO-controleCir.php";	

    $listaMaterial = $_POST['listaMaterial'];
    $codigoMat = $_POST['codigo'];
    $quantidadeMat = $_POST['quantidadeMat'];
    $_SESSION['nomeFuncionario'];
    $_SESSION['data'];
    $nomeEmpresa = $_POST['nomeEmpresa'];
    $cnpj = $_POST['dadosCnpj'];
    $notaFiscal = $_POST['notaFiscal'];
    $numProcesso = $_POST['numProcesso'];
    $numEmpenho = $_POST['numEmpenho'];
    $obsMaterial = $_POST['obsMaterial'];

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

    $empresaMat = new EmpresaMaterial($idEmpresa,$nomeEmpresa,$cnpj,$notaFiscal,$numProcesso,$numEmpenho,$obsMaterial,$_SESSION['idEntMat']);
    //echo "<br><== empresaMat ==><br>";
    //$empresaMat->exibir();
    $empresaMatDAO = new ControleCirDAO(); 
    $empresaMatDAO->CadastrarEnpresaMaterial($empresaMat);

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
