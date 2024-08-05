<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-impressora.php";

	$idTipoTonerBd = array();

	//recebe dados da view
    $nomeImpressora =  converteMaiuscula($_POST['nomeImpressora']);
	$numSerie = converteMaiuscula($_POST['numSerie']);     
	$ipImpressora = $_POST['numIp'];
	$macImpressora =  converteMaiuscula($_POST['numMac']);  
	$colorida = $_POST['colorida0'];   
	$tipoToner1 = $_POST['tonner1'];  
	$tipoToner2 = $_POST['tonner2'];  
	$tipoToner3 = $_POST['tonner3'];  
	$tipoToner4 = $_POST['tonner4'];  
	$statusImpressora = $_POST['statusImp'];
	$conexaoImp = $_POST['conexaoImp'];
	$modeloImpressora = $_POST['modelo'];
	$dataCadastro = $dataCadastro = formatarData($_SESSION['data']);
	$idFuncionario = $_SESSION['idFuncionario'] ;
	$dataAltCadastro = "0000-00-00";
	$respAltCadastro = "";

	//echo "<br>conexaoImp => " . $conexaoImp;
	//echo "<br>ipImpressora => " . $ipImpressora;

	
	//Informações do Local da Impressora
	$dadosLocImp = $_POST['localImpressora']; 
	$nomeDivisao =  $dadosLocImp[0];
	$localizacao =  $dadosLocImp[1];
	$ramal =  $dadosLocImp[2];
	$respSetor =  converteMaiuscula($dadosLocImp[3]);
	$idSetor = $_POST['nomLocImpressora'];
	$obsImpressora =  $dadosLocImp[4];

	if($colorida == "não")
		{	
			$idTipoTonerBd = serialize($tipoToner1);
			//echo "<br>tipo toner => ";
			//print_r ($idTipoTonerBd);
		}

	else
		{
			$idTipoTonerBd = serialize(array_merge($tipoToner1,$tipoToner2,$tipoToner3,$tipoToner4));
			//echo "<br>tipo toner => ";
			//print_r ($idTipoTonerBd);
		}
	

	
    //$idSetor = $verificaSetor;
	//echo "<br>idSetor => " . $idSetor . "<br>";
            
    $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $idTipoTonerBd, 
	$colorida, $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastro, $_SESSION['nomeFuncionario'], $dataAltCadastro, 
	$respAltCadastro, $obsImpressora, $idFuncionario, $idSetor);
	//echo "<br>dados impressora <br>";		
	//$impressora->exibir();
	//echo "<br>";
	$impressoraDAO = new ControleCirDAO();
	$impressoraDAO->CadastrarImpre($impressora);
	
	header("Location: ../views/impressorasCadastrar.php");    
?>