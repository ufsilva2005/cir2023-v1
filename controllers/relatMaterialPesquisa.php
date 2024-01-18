<?php	
	session_start();	
	//include "../funcao/funcao.php";
	//echo "<br> teste de variaveis 1 => ";
	//recebe dados da view
	$geral = $_POST['geral'];   
	$codigoMat = $_POST['codigoMat'];
	$nomeMat = $_POST['nomeMat'];
	$empresa = $_POST['empresa'];
	$cnpj = $_POST['cnpj']; 
	$notaFiscal = $_POST['notaFiscal'];   
	$empenho = $_POST['empenho'];
	$processo = $_POST['processo'];
	$dataEnt = $_POST['dataEnt'];
	$dataSai = $_POST['dataSai']; 
	
	//echo "<br> teste de variaveis => " . $geral . " - " . $codigoMat . " - " . $nomeMat . " - " . $empresa . " - " . $cnpj . " - " . $notaFiscal . " - " . $empenho . " - " . $processo . " - " . $dataEnt . " - " . $dataSai;

	if($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $geral;
			$_SESSION['tipoPesquisa'] = "todos";
		}
	elseif($geral != "" && $codigoMat != "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $codigoMat;
			$_SESSION['tipoPesquisa'] = "codigo";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat != "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $nomeMat;
			$_SESSION['tipoPesquisa'] = "descricao";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa != "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $empresa;
			$_SESSION['tipoPesquisa'] = "nomeEmpresa";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj != "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $cnpj;
			$_SESSION['tipoPesquisa'] = "cnpj";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal != "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $notaFiscal;
			$_SESSION['tipoPesquisa'] = "numNota";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho != "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $empenho;
			$_SESSION['tipoPesquisa'] = "numEmpenho";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo!= "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $processo;
			$_SESSION['tipoPesquisa'] = "numProcesso";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt != "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $dataEnt;
			$_SESSION['tipoPesquisa'] = "dataEntrada";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai != "")
		{
			$_SESSION['valorPesquisa'] = $dataSai;
			$_SESSION['tipoPesquisa'] = "dataSaida";
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>