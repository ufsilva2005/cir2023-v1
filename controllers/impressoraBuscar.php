<?php
	session_start();
	include "../dao/DAO-controleCir.php";
	include "../funcao/funcao.php";

	//$tipoToner = array();
	//$tipoToner = 'a:4:{i:0;s:1:"44";i:1;s:1:"45";i:2;s:2:"46";i:3;s:1:"47";}';

	$op1 =  $_GET['action'];
	if ($op1 != 1 )  
		{
            header("Location: ../index.php");
		}
    $idImpressora =  $_GET['id'];
    //$idImpressora;
	$_SESSION['idImpAlt'] = $idImpressora;     
    $nomeTabela = "impressoras";
    $opcao1 = "idImpressora";
    $valor1 = $idImpressora;

	$impAltDAO = new ControleCirDAO();
	foreach($impAltDAO->Verificar($nomeTabela, $opcao1, $valor1) as $imp)
		{ 	
			$idImpressora = $imp->idImpressora;
			$nomeImpressora = $imp->nomeImpressora;
			$numSerie = $imp->numSerie;
            $ipImpressora = $imp->ipImpressora;
			$macImpressora = $imp->macImpressora;
			$tipoToner = $imp->tipoToner; 
			$tipoToner = unserialize($tipoToner); 
			$colorida = $imp->colorida; 
			$statusImpressora = $imp->statusImpressora;			
			$conexaoImp = $imp->conexaoImp;
			$modeloImpressoraBd = $imp->modeloImpressora;
			$modeloDAO = new ControleCirDAO();   
			$nomeTabela = "modeloImpressora";
			$tipoOpcao = "idModelo";								
			foreach ($modeloDAO->ListarOpcao($nomeTabela, $tipoOpcao, $modeloImpressoraBd) as $res)
				{
					$idModelo = $res->idModelo;
					$modeloImpressora = $res->modeloImpressora;
				}       
			$dataCadastroA = $imp->dataCadastro;	
			$respCadastro = $imp->respCadastro;
			$idFuncionario = $imp->idFuncionario;
			$obsImpressora = $imp->obsImpressora;
			$respAltCadastro = $imp->respAltCadastro;							
			$dataAltCadastro = $imp->dataAltCadastro;
            $idSetor = $imp->idSetor; 

			$setorDAO = new ControleCirDAO();
			foreach($setorDAO->Buscalocal($idSetor) as $Setor)
				{ 	
					$divisao1 = $Setor->divisao;
					$idDivisao1 = $Setor->idDivisao;
					$localizacao1 = $Setor->localizacao;
					$nomeLocal1 = $Setor->nomeLocal;
					$ramal1 = $Setor->ramal;
					$respSetComp1 = $Setor->respSetor;	
				}
		}
?>