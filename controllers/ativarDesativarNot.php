<?php
	session_start();
	$tipoP = $_SESSION['tipoP'];
	$valorP = $_SESSION['valorP'];
	$atiDes = $_SESSION['atiDes'];
	$texto = "ALTERAÇÃO DE STATUS - ";

	include "../dao/DAO-controleCir.php";
	include "../funcao/funcao.php";
	include "../models/class-historico.php";

	$op1 = $_GET['action'];
	$idNotebook = $_GET['id'];
	$dateAltCadastro = date('Y-m-d');

	if($op1 == 1 || $op1 == 3 || $op1 == 5)  
		{
            $op2 = $op1;
			$statusComp = "ativo";
            $statusComp1 = "ATIVO";
			$hitorico1 = $texto . "STATUS ALTERADO DE INATIVO PARA => " . $statusComp1 . " \n";
		}
	elseif($op1 == 2 || $op1 == 4 || $op1 == 6)  
		{
            $op2 = $op1;
			$statusComp = "inativo";
            $statusComp1 = "INATIVO";
			$hitorico1 = $texto . "STATUS ALTERADO DE ATIVO PARA => ". $statusComp1 . " \n";
		}
	else  
		{
            header("Location: ../template/menuPrincipal.php");  
		}


    //echo "<br>tipoP => " . $tipoP; 
    //echo "<br>valorP => " . $valorP; 
    //echo "<br>atiDes => " . $atiDes;  
    //echo "<br>texto => " . $texto;  
    //echo "<br>op1 => " . $op1;  
    //echo "<br>idNotebook => " . $idNotebook;  
    //echo "<br>dateAltCadastro => " . $dateAltCadastro; 
    //echo "<br>hitorico1 => " . $hitorico1; 

         
	//criar historico e salvar
    //nome dos arquivos historico
    $data2 = soNumero($dateAltCadastro);
    $hora = soNumero(date('H:i:s'));
    $nomeHist = "Note" . $idNotebook . "D". $data2 . "h" . $hora ."F" . $_SESSION['idFuncionario'].".txt";
    $caminho = "../historico/";
    $desHist = $caminho . "hist-" . $nomeHist;
            
    $output2 = fopen($desHist, 'wb');
    //salva arquivo 
    fwrite($output2, $hitorico1);
    fclose($output2); 
	
	$idImpressora = null;
	$idComputador = null;
    $historico = new Historico($idHistorico, $desHist, $dateAltCadastro, $_SESSION['nomeFuncionario'],  $idComputador, $idNotebook,  $idImpressora, 
	$_SESSION['idFuncionario']);
    //echo "<br>dados  Historico<br>";		
    //$historico->exibir();
    //echo "<br>"; 
    $historicoDAO = new ControleCirDAO();
    $historicoDAO->HitoricoCadastrar($historico);
            
    $ativaDeativaDAO = new ControleCirDAO();  
    $ativaDeativaDAO->AtivaDesativaNot($idNotebook,$statusComp);

	if($op2 == 1 || $op2 == 2)
		{
			//echo "<br>op2 3 => " . $op2;
			$_SESSION['tipoP'] = $tipoP;
			$_SESSION['valorP'] = $valorP;
			header("Location: ../views/notebooksListar.php");     
		} 

	elseif($op2 == 3 || $op2 == 4)
		{
			//echo "<br>op2 4 => " . $op2;
			$_SESSION['tipoP1'] = $tipoP;
			$_SESSION['valorP1'] = $valorP;			
			header("Location: ../views/notebooksPesquisarResultado.php");
		}
	else
		{	
			header("Location: ../views/noteListarAtivoInativo.php?action=$atiDes");
		}
?>