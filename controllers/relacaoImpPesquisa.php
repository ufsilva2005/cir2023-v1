<?php	
	session_start();	
	//include "../funcao/funcao.php";
	
	//recebe dados da view
	$andarImp = $_POST['andar'];   
	$divisaoImp = $_POST['divisao'];
	$setorImp = $_POST['setor'];
	$modeloImp = $_POST['modelo']; 
	
	if($andarImp == "" && $divisaoImp == "" && $setorImp == "" && $modeloImp == "")
		{
			echo "<br>Dados em branco";
		}
	elseif($andarImp != "" && $divisaoImp == "" && $setorImp == "" && $modeloImp == "")
		{
			$_SESSION['valorPesquisa'] = $andarImp;
			$_SESSION['tipoPesquisa'] = "andar";
		}
	elseif($andarImp == "" && $divisaoImp != "" && $setorImp == "" && $modeloImp == "")
		{
			$_SESSION['valorPesquisa'] = $divisaoImp;
			$_SESSION['tipoPesquisa'] = "divisao";
		}
	elseif($andarImp == "" && $divisaoImp == "" && $setorImp != "" && $modeloImp == "")
		{
			$_SESSION['valorPesquisa'] = $setorImp;
			$_SESSION['tipoPesquisa'] = "setor";
		}
	elseif($andarImp == "" && $divisaoImp == "" && $setorImp == "" && $modeloImp != "")
		{
			$_SESSION['valorPesquisa'] = $modeloImp;
			$_SESSION['tipoPesquisa'] = "modelo";
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>