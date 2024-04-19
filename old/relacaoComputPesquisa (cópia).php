<?php	
	session_start();	
	//include "../funcao/funcao.php";
	
	//recebe dados da view
	$andarComp = $_POST['andar'];   
	$divisaoComp = $_POST['divisao'];
	$setorComp = $_POST['setor'];
	$statusComp = $_POST['status'];    
	$sistemaComp = $_POST['sistema'];	
	$dataInComp = $_POST['dataIn']; 
	$dataOutComp = $_POST['dataOut']; 
	$processadorComp = $_POST['processador']; 

	

    //echo "<br>andarComp => " . $andarComp;
    //echo "<br>divisaoComp => " . $divisaoComp;
    //echo "<br>setorComp => " . $setorComp;
    //echo "<br>statusComp => " . $statusComp;
    //echo "<br>sistemaComp => " . $sistemaComp;
	//echo "<br>dataIn => " . $dataInComp;
    //echo "<br>dataOut => " . $dataOutComp;
	//echo "<br>processador => " . $processador;
	
	if($andarComp == "" && $divisaoComp == "" && $setorComp == "" && $statusComp == "" && $sistemaComp == ""  && $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			echo "<br>Dados em branco";
		}
	elseif($andarComp != "" && $divisaoComp == "" && $setorComp == "" && $statusComp == "" && $sistemaComp == ""&& $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			$_SESSION['valorPesquisa'] = $andarComp;
			$_SESSION['tipoPesquisa'] = "andar";
		}
	elseif($andarComp == "" && $divisaoComp != "" && $setorComp == "" && $statusComp == "" && $sistemaComp == ""&& $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			$_SESSION['valorPesquisa'] = $divisaoComp;
			$_SESSION['tipoPesquisa'] = "divisao";
		}
	elseif($andarComp == "" && $divisaoComp == "" && $setorComp != "" && $statusComp == "" && $sistemaComp == ""&& $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			$_SESSION['valorPesquisa'] = $setorComp;
			$_SESSION['tipoPesquisa'] = "setor";
		}
	elseif($andarComp == "" && $divisaoComp == "" && $setorComp == "" && $statusComp != "" && $sistemaComp == "" && $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			if($statusComp == "Ativos")
				{
					$_SESSION['valorPesquisa'] = "ativo";
				}
			else
				{
					$_SESSION['valorPesquisa'] = "inativo";
				}
			$_SESSION['tipoPesquisa'] = "status";			
		}
	elseif($andarComp == "" && $divisaoComp == "" && $setorComp == "" && $statusComp == "" && $sistemaComp != ""&& $dataInComp == "" && $dataOutComp == "" && $processadorComp =="")
		{
			//echo "<br>sistema => " . $sistemaComp;
			$_SESSION['valorPesquisa'] = $sistemaComp;
			$_SESSION['tipoPesquisa'] = "sistema";
			
		}
	elseif($andarComp == "" && $divisaoComp == "" && $setorComp == "" && $statusComp == "" && $sistemaComp == ""&& $dataInComp != "" && $dataOutComp != "" && $processadorComp =="")
		{
			//echo "<br>sistema => " . $sistemaComp;
			$_SESSION['valorPesquisa'] = $dataInComp;
			$_SESSION['tipoPesquisa'] = "data";
			
			$_SESSION['dataInComp'] = $dataInComp;
			$_SESSION['dataOutComp'] = $dataOutComp;
		}
	elseif($andarComp == "" && $divisaoComp == "" && $setorComp == "" && $statusComp == "" && $sistemaComp == ""&& $dataInComp == "" && $dataOutComp == "" && $processadorComp !="")
		{
			//echo "<br>sistema => " . $sistemaComp;
			$_SESSION['valorPesquisa'] = $processadorComp;
			$_SESSION['tipoPesquisa'] = "processador";
			
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>