<?php
	session_start();
	include "../dao/DAO-controleCir.php";
	include "../funcao/funcao.php";

	$op1 =  $_GET['action'];
	if ($op1 != 1 )  
		{
            header("Location: ../index.php");
		}
	$altHd = 0;
	$_SESSION['altHd'] = $altHd;
	//$_SESSION['capHd'] == "";
	//$capHd = array();    
    //$i=0;
    //$_SESSION['i'] = $i;
    //$_SESSION['antTipoHD'] = $capHd;

    $idNotebook =  $_GET['id'];
    //$idNotebook;
	$_SESSION['idCompAlt'] = $idNotebook;     
    $nomeTabela = "notebook";
    $opcao1 = "idNotebook";
    $valor1 = $idNotebook;

    //echo $idNotebook;

	$compAltDAO = new ControleCirDAO();
	foreach($compAltDAO->Verificar($nomeTabela, $opcao1, $valor1) as $comp)
		{ 	
			//$idNotebook = $comp->idNotebook;
			$numCir = $comp->numCir;
			$numPatrimonio = $comp->numPatrimonio;
            $numPatReitoria = $comp->numPatReitoria;
			$nomenotebook = $comp->nomenotebook;
			$dataCadastro = formatarData2($comp->dataCadastro);   
            $respCadastro = $comp->respCadastro;
			$dataAltCadastro = $comp->dataAltCadastro;
			$respAltCadastro = $comp->respAltCadastro;
            $sistemaOpera = $comp->sistemaOpera;
			$modelMaquina = $comp->modelMaquina;
			$memoria = $comp->memoria;    
            $numIp = $comp->numIp;
			$numMac = $comp->numMac;
			$tipoHD = $comp->tipoHD;
			$tipoHD =  unserialize($tipoHD);           
            $nomeUsuario = $comp->nomeUsuario;
			//$_SESSION['nomeUsuario'] = $nomeUsuario;
			$statusComp = $comp->statusComp;
			$_SESSION['statusComp'] = $statusComp;
			$obs = $comp->obs;   			
            $idFuncionario = $comp->idFuncionario;
			$respCadastro = $comp->respCadastro;
			$idSetor = $comp->idSetor;
			$idTipoProcessador = $comp->idTipoProcessador;
			$setorDAO = new ControleCirDAO();
			foreach($setorDAO->Buscalocal($idSetor) as $Setor)
				{ 	
					$idDivisao = $Setor->idDivisao;
					$localizacao = $Setor->localizacao;
					$nomeLocal = $Setor->nomeLocal;
					$ramal = $Setor->ramal;
					$respSetor = $Setor->respSetor;	
				}

			$nomeTabela = "tipoProcessadores";
			$opcao1 = "idTipoProcessador";
			$processDAO = new ControleCirDAO();
			foreach($processDAO->Verificar($nomeTabela, $opcao1, $idTipoProcessador) as $proc)
				{ 	
					$desProcessador = $proc->descricao;
				}

			$nomeTabela = "divisao";
			$opcao1 = "idDivisao";
			$divisaoDAO = new ControleCirDAO();
			foreach($divisaoDAO->Verificar($nomeTabela, $opcao1, $idDivisao) as $div)
				{ 	
					$nomeDivisao = $div->divisao;
				}
		}
        
?>