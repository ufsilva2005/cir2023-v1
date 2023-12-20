<?php	
	session_start();	
	//include "../funcao/funcao.php";
	
	//recebe dados da view
	$andarImp = $_POST['andar'];   
	$divisaoImp = $_POST['divisao'];
	$setorImp = $_POST['setor'];
	$modeloImp = $_POST['modelo'];
	$statusImp = $_POST['status'];  
	
	if($andarImp == "" && $divisaoImp == "" && $setorImp == "" && $modeloImp == "" && $statusImp == "")
		{
			echo "<br>Dados em branco";
		}
	elseif($andarImp != "" && $divisaoImp == "" && $setorImp == "" && $modeloImp == "" && $statusImp == "")
		{
			$_SESSION['valorPesquisa'] = $andarImp;
			$_SESSION['tipoPesquisa'] = "andar";
		}
	elseif($andarImp == "" && $divisaoImp != "" && $setorImp == "" && $modeloImp == "" && $statusImp == "")
		{
			$_SESSION['valorPesquisa'] = $divisaoImp;
			$_SESSION['tipoPesquisa'] = "divisao";
		}
	elseif($andarImp == "" && $divisaoImp == "" && $setorImp != "" && $modeloImp == "" && $statusImp == "")
		{
			$_SESSION['valorPesquisa'] = $setorImp;
			$_SESSION['tipoPesquisa'] = "setor";
		}
	elseif($andarImp == "" && $divisaoImp == "" && $setorImp == "" && $modeloImp != "" && $statusImp == "")
		{
			$_SESSION['valorPesquisa'] = $modeloImp;
			$_SESSION['tipoPesquisa'] = "modelo";
		}
	elseif($andarImp == "" && $divisaoImp == "" && $setorImp == "" && $modeloImp == "" && $statusImp != "")
		{
			if($statusImp == "Ativas")
				{
					$_SESSION['valorPesquisa'] = "ativo";
				}
			else
				{
					$_SESSION['valorPesquisa'] = "inativo";
				}
			$_SESSION['tipoPesquisa'] = "status";	
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>