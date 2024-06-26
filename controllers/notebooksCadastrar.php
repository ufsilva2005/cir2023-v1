<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-notebook.php";	
		
	$capHd = array();    
    $i=0;
    $_SESSION['i'] = $i;
    $_SESSION['capHd'] = $capHd;

	//recebe dados da view
	$action =  $_GET['action'];
	$dadosNotebook = $_POST['dadosNotebook'];
	$localNotebook = $_POST['localNotebook'];
	$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	$respCadastro = $_SESSION['respCadastro'];

	//informaçoes do local	
	$idSetor = "";
	$nomeDivisao = $localNotebook[0];
	$localizacao = $localNotebook[1];
	$ramalComp = $localNotebook[2];
	$respSetor = converteMaiuscula($localNotebook[3]);
	$nomeLocal = converteMaiuscula($_POST['localNotebook1']);

	//informacoes da maquina
	$idNotebook = "";
	$numCir  = $_POST['numCir'];		
	$numPatReitoria  = $dadosNotebook[1];
	$numPatrimonio  = $dadosNotebook[2];
	$nomeNotebook  = $_POST['nomeCir'];
	$sistemaOpera  = $dadosNotebook[3];
	$modelMaquina =  converteMaiuscula($_POST['modelo']);
	$idTipoProcessador = $_POST['listaProcessador'];
	$memoria  = $dadosNotebook[4];
	$numIp  = $dadosNotebook[5];
	$numMac  = converteMaiuscula($_POST['numMac']);
	$statusComp  = "ativo";
	$nomeUsuario =  converteMaiuscula($_POST['nomeUsuario']);
	$obs  = converteMaiuscula($dadosNotebook[0]);
	$respAltCadastro = "";
    $dataAltCadastro = "0000-00-00";

	//echo $action;
	
	if($action == 1)
		{
			$_SESSION['nomeDivisao'] = $nomeDivisao;
			$_SESSION['localizacao'] = $localizacao;
			$_SESSION['ramalComp'] = $ramalComp;
			$_SESSION['respSetor'] = $respSetor;
			$_SESSION['nomeLocal'] = $nomeLocal;
			$_SESSION['numCir'] = $numCir;
			$_SESSION['numPatReitoria'] = $numPatReitoria;
			$_SESSION['numPatrimonio'] = $numPatrimonio;
			$_SESSION['nomeNotebook'] = $nomeNotebook;
			$_SESSION['sistemaOpera'] = $sistemaOpera;
			$_SESSION['modelMaquina'] = $modelMaquina;
			$_SESSION['idTipoProcessador'] = $idTipoProcessador;
			$_SESSION['memoria'] = $memoria;
			$_SESSION['numIp'] = $numIp;
			$_SESSION['numMac'] = $numMac;
			$_SESSION['statusComp'] = $statusComp;
			$_SESSION['nomeUsuario'] = $nomeUsuario;
			$_SESSION['obs'] = $obs;

			header("Location: ../views/notebooksCadastrar2.php");
		}
	else
		{
			//echo "<br>nomeDivisao => ". $_SESSION['nomeDivisao'];
			$capHd2 = $_SESSION['capHd1'];
            array_shift($capHd2);
            //print_r($capHd2); 

			$tipoHD = serialize($capHd2); 
			
			//informaçoes do local	
			$idSetor = "";
			$nomeDivisao = 	$_SESSION['nomeDivisao'];
			$localizacao = $_SESSION['localizacao'];
			$ramalComp = $_SESSION['ramalComp'];
			$respSetor = $_SESSION['respSetor'];
			$nomeLocal = $_SESSION['nomeLocal'];

			//informações do Notebook
			$numCir = $_SESSION['numCir'];
			$numPatrimonio = $_SESSION['numPatrimonio']; 
			$numPatReitoria = $_SESSION['numPatReitoria']; 
			$nomeNotebook = $_SESSION['nomeNotebook']; 
			$dataAltCadastro = "0000-00-00"; 
			$respAltCadastro = ""; 
			$sistemaOpera = $_SESSION['sistemaOpera']; 
			$modelMaquina = $_SESSION['modelMaquina']; 
			$memoria = $_SESSION['memoria']; 
			$numIp = $_SESSION['numIp']; 
			$numMac = $_SESSION['numMac']; 
			$nomeUsuario = $_SESSION['nomeUsuario'];
			$statusComp = $_SESSION['statusComp']; 
			$obs = $_SESSION['obs']; 			
			$idFuncionario = $_SESSION['idFuncionario'] ;
			//$idSetor = $_SESSION['numCir']; 
			$idTipoProcessador = $_SESSION['idTipoProcessador']; 

			if($numPatReitoria  == "")
				{
					$numPatReitoria  = null;
				}
					
			if($numPatrimonio == "")
				{
					$numPatrimonio = null;
				}


			//verificar se local existe
			$setorExisteDAO = new ControleCirDAO();
			foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
				{ 
					$verificaSetor = $local->idSetor;				          
				}
				
			//echo "<br>verificaSetor => " . $verificaSetor . "<br>";

			if ($verificaSetor != 0)
				{	
					$idSetor = $verificaSetor;
					//echo "<br>idSetor 01 => " . $idSetor . "<br>";
					$notebook = new Notebook($idNotebook, $numCir, $numPatrimonio, $numPatReitoria, $nomeNotebook, $dataCadastro,
					$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, 
					$tipoHD, $nomeUsuario, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);					
					$notebook->exibir();			
					$notebookDAO = new ControleCirDAO();
					$notebookDAO->CadastrarNotebook($notebook);	

					echo "<br>idSetor 001 => " . $idSetor . "<br>";

					//echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
					//echo "<script>location = '../views/notebooksCadastrar.php';</script>";   
				}
			else 
				{
					//PEGAR ID DA DIVISÃO
					$nomeTabela = "divisao"; 
					$opcao1 = "divisao"; 
					$valor1 = $nomeDivisao; 
					$divisaoDAO = new ControleCirDAO();
					foreach ($divisaoDAO->Verificar($nomeTabela, $opcao1, $valor1) as $divisao)
						{ 
							$idDivisao = $divisao->idDivisao;				          
						}	

					//echo "<br>verificaDivisao => " . $idDivisao . "<br>";

					$local1 = new Setor($idSetor, $idDivisao, $localizacao, $ramalComp, $respSetor, $nomeLocal);			
					$local1->exibir();
					$local = new ControleCirDAO();	
					$local->CadastrarSetor($local1);

					echo "<br>idSetor 02 => " . $idSetor . "<br>";
					
					//session_start();
					$idSetor = $_SESSION['localid'];
					//$idSetor = 1;
					//echo "<br>";
					$notebook = new Notebook($idNotebook, $numCir, $numPatrimonio, $numPatReitoria, $nomeNotebook, $dataCadastro,
					$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, 
					$tipoHD, $nomeUsuario, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);
					$notebook->exibir();
					
					$notebookDAO = new ControleCirDAO();
					$notebookDAO->CadastrarNotebook($notebook);		
					//echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
					//echo "<script>location = '../views/NotebooksCadastrar.php';</script>";   
				}

			//echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
			//echo "<script>location = '../views/NotebooksCadastrar.php';</script>";   
		}

	//header("Location: ../views/NotebooksCadastrar.php");
?>
 
