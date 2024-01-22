<?php	
	//session_start();	
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
			$_SESSION['resultado'] = "todos os materiais";
		}
	elseif($geral != "" && $codigoMat != "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $codigoMat;
			$_SESSION['tipoPesquisa'] = "codigo";
			$_SESSION['resultado'] = "código do material";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat != "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $nomeMat;
			$_SESSION['tipoPesquisa'] = "descricao";
			$_SESSION['resultado'] = "descricao do material";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa != "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $empresa;
			$_SESSION['tipoPesquisa'] = "nomeEmpresa";
			$_SESSION['resultado'] = "nome da Empresa";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj != "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $cnpj;
			$_SESSION['tipoPesquisa'] = "cnpj";
			$_SESSION['resultado'] = "cnpj";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal != "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $notaFiscal;
			$_SESSION['tipoPesquisa'] = "numNota";
			$_SESSION['resultado'] = "Nº da Nota";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho != "" && $processo== "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $empenho;
			$_SESSION['tipoPesquisa'] = "numEmpenho";
			$_SESSION['resultado'] = "Nº de Empenho";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo!= "" && $dataEnt == "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $processo;
			$_SESSION['tipoPesquisa'] = "numProcesso";
			$_SESSION['resultado'] = "Nº de Processo";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt != "" && $dataSai == "")
		{
			$_SESSION['valorPesquisa'] = $dataEnt;
			$_SESSION['tipoPesquisa'] = "dataEntrada";
			$_SESSION['resultado'] = "data de Entrada";
		}
	elseif($geral != "" && $codigoMat == "" && $nomeMat == "" && $empresa == "" && $cnpj == "" &&  $notaFiscal == "" && $empenho == "" && $processo== "" && $dataEnt == "" && $dataSai != "")
		{
			$_SESSION['valorPesquisa'] = $dataSai;
			$_SESSION['tipoPesquisa'] = "dataSaida";
			$_SESSION['resultado'] = "data de saísda";
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>