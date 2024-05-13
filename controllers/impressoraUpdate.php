<?php
    session_start();
    include "../funcao/funcao.php";
    include "../dao/DAO-controleCir.php";
    include "../models/class-setor.php";
	include "../models/class-impressora.php";
    include "../models/class-historico.php";

    $idTipoTonerBd = array();
    //pegar ip do modelo e nao o nome
	
    $aux = 0;
    $auxLocal = 0;
    $hitorico = "";
    $idSetor = 0;

    //recebendo os novos valores da view sobre a impressora 
	$idHistorico = "";
    //$idImpressora = $_SESSION['idImpressora'];	
	$nomeImpAlt = $_POST['nomeImpressora'];
	$numSerieAlt =  converteMaiuscula($_POST['numSerie']);	
    $ipImpressoraAlt = $_POST['ipImpressora'];
    $numMacAlt = converteMaiuscula($_POST['numMac']);  
    $coloridaAlt =  $_POST['colorida'];
    //$tipoTonnerAlt = converteMaiuscula($_POST['tipoTonner']);   
    $tipoTonerAlt1 = $_POST['tonner1']; 
    $tipoTonerAlt2 = $_POST['tonner2']; 
    $tipoTonerAlt3 = $_POST['tonner3']; 
    $tipoTonerAlt4 = $_POST['tonner4'];    
    $impStatusAlt = $_POST['status'];
    $conexaoImpAlt = $_POST['conexaoImp'];
    $modeloAlt = $_POST['modelo'];   
    $divisaoAlt = $_POST['divisao'];
    $localAlt = $_POST['local'];
    $ramalAlt = $_POST['ramal'];
    $respSetCompAlt = $_POST['respSetComp'];
    $nomeLocalAlt = converteMaiuscula($_POST['nomeLocal']);
    $ObsImpAlt = converteMaiuscula($_POST['ObsImp']);    
        
    //recebendo os valores antigos do impressora
    $idImpressora = $_SESSION['idImpressora'];
    $nomeImpressoraAnt = $_SESSION['antNomeImp'];
    $numSerieAnt = $_SESSION['antNumSerie'];
    $ipImpressoraAnt = $_SESSION['antNumIp'];
    $macImpressoraAnt = $_SESSION['antNumMac'];
    $coloridaAnt = $_SESSION['antColorida'];
    //$tipoTonerAnt = $_SESSION['tipoTonerBd'];
    $tipoTonerAnt1 = $_SESSION['antToner1']; 
    $tipoTonerAnt2 = $_SESSION['antToner2']; 
    $tipoTonerAnt3 = $_SESSION['antToner3']; 
    $tipoTonerAnt4 = $_SESSION['antToner4']; 
    $statusImpressoraAnt = $_SESSION['antStatusImp'];
    $conexaoImpAnt = $_SESSION['antConexaoImp'];
    $modeloImpressoraAnt = $_SESSION['antModelImp'];
    $divisaoAnt = $_SESSION['antDivisao'];
    $localizacaoAnt = $_SESSION['antLocalizacao'];
    $ramalAnt = $_SESSION['antRamal'];
    $respSetCompAnt = $_SESSION['antRespSetComp'];
    $nomeLocalAnt = $_SESSION['antNomeLocal'];
    $obsImpressoraAnt = $_SESSION['antObsImp'];
    $dataCadastroA = $_SESSION['datacadastro'];
    $respCadastro = $_SESSION['respCadastro'];
    $dateAltCadastro = $_SESSION['data'];
    $funcionarioAltCadastro = $_SESSION['nomeFuncionario'];
    $hitorico = $ObsImpAlt . " - ";      
    echo "<br> tipoTonerAnt1 => " .  $tipoTonerAnt1;
    print_r( $_SESSION['antToner1']);
    //verificando quais valores que nao foram alterados/ou estao em branco
    //impressora
    if ($nomeImpAlt == "" || $nomeImpAlt == $nomeImpressoraAnt) 
        {
            $nomeImpressora = $nomeImpressoraAnt;
        }
    else
        {
            $nomeImpressora = $nomeImpAlt;  
            $aux++;
            $hitorico .= 'NOME DA IMPRESSORA ALTERADO DE: '. $nomeImpressoraAnt .' PARA => '. $nomeImpressora ;
        }

    if ($numSerieAlt == "" || $numSerieAlt == $numSerieAnt) 
        {
            $numSerie = $numSerieAnt;
        }   
     else
        {
            $numSerie = $numSerieAlt;  
            $aux++;
            $hitorico .= 'Nº DE SÉRIE ALTERADO DE: '. $numSerieAnt .' PARA => '. $numSerie ;
        }

    if ($ipImpressoraAlt == "" || $ipImpressoraAlt == $ipImpressoraAnt)
        {
            $ipImpressora = $ipImpressoraAnt;
        }
    else
        {
            $ipImpressora = $ipImpressoraAlt;  
            $aux++;
            $hitorico .= 'IP DA IMPRESSORA ALTERADO DE: '. $ipImpressoraAnt .' PARA => '. $ipImpressora ;
        }

    if ($numMacAlt == "" || $numMacAlt == $macImpressoraAnt)
        {
            $macImpressora = $macImpressoraAnt;
        }
    else
        {
            $macImpressora = $numMacAlt;  
            $aux++;
            $hitorico .= 'MAC DA IMPRESSORA ALTERADO DE: '. $macImpressoraAnt .' PARA => '. $macImpressora ;
        }

    if ($coloridaAlt == "" || $coloridaAlt == $coloridaAnt)
        {
            $colorida = $coloridaAnt;
        }
    else
        {
            $colorida = $coloridaAlt;  
            $aux++;
            if($colorida == "sim")
                {
                    $hitorico .= 'TIPO DE IMPRESSORA ALTERADO DE NÃO COLORIDA PARA COLORIDA \n';
                }
            else
                {
                    $hitorico .= 'TIPO DE IMPRESSORA ALTERADO DE COLORIDA PARA NÃO COLORIDA \n';
                }
        }
   
    if($colorida == "não")
		{	
			if ($tipoTonerAlt1 == "" || $tipoTonerAlt1 == $tipoTonerAnt1) 
                {
                    $tipoToner1 = $tipoTonerAnt1;
                }
            else
                {
                    $tipoToner1 = $tipoTonerAlt1; 

                    echo "<br>tipoTonerAlt1 => " . $tipoTonerAlt1 . " tipoTonerAnt1 => " . $tipoTonerAnt1;

                    $nomeTabela = "material";
                    $tipoOpcao = "idMaterial";
                    $tonerDAO = new ControleCirDAO(); 
                    foreach ($tonerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAnt1) as $res)
                        {
                            $descTonnerAnt1 = $res->descricao;
                        }
                    $toner1DAO = new ControleCirDAO();   
                    foreach ($toner1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAlt1) as $res)
                        {
                            $desTonnerAlt1 = $res->descricao;
                        }	
                    $aux++;
                    $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt1 .' PARA => '. $desTonnerAlt1 . "  " ;
                    echo "<br>hitorico 0 => " . $hitorico;
                }

            $tipoTonerBd[0] = $tipoToner1;   
            $tipoTonerBd = serialize($tipoTonerBd);
		}

	else
		{
            //tonner 1
			if ($tipoTonerAlt1 == "" || $tipoTonerAlt1 == $tipoTonerAnt1) 
                {
                    $tipoToner1 = $tipoTonerAnt1;
                }
            else
                {
                    $tipoToner1 = $tipoTonerAlt1; 
                    echo "<br>tipoTonerAlt 1 0  => " . $tipoTonerAlt1;
                    $nomeTabela = "material";
                    $tipoOpcao = "idMaterial";
                    $tonerDAO = new ControleCirDAO(); 
                    foreach ($tonerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAnt1) as $res)
                        {
                            $descTonnerAnt1 = $res->descricao;
                        }
                    $toner1DAO = new ControleCirDAO();   
                    foreach ($toner1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAlt1) as $res)
                        {
                            $desTonnerAlt1 = $res->descricao;
                        }	
                    $aux++;
                    $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt1 .' PARA => '. $desTonnerAlt1 ;
                }
            //tonner 2
            if ($tipoTonerAlt2 == "" || $tipoTonerAlt2 == $tipoTonerAnt2) 
                {
                    $tipoToner2 = $tipoTonerAnt2;
                }
            else
                {
                    $tipoToner2 = $tipoTonerAlt2; 
                    $nomeTabela = "material";
                    $tipoOpcao = "idMaterial";
                    $tonerDAO = new ControleCirDAO(); 
                    foreach ($tonerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAnt1) as $res)
                        {
                            $descTonnerAnt1 = $res->descricao;
                        }
                    $toner1DAO = new ControleCirDAO();   
                    foreach ($toner1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAlt1) as $res)
                        {
                            $desTonnerAlt1 = $res->descricao;
                        }	
                    $aux++;
                    $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt2 .' PARA => '. $desTonnerAlt2 ;
                }
            //tonner 3
            if ($tipoTonerAlt3 == "" || $tipoTonerAlt3 == $tipoTonerAnt3) 
                {
                    $tipoToner3 = $tipoTonerAnt3;
                }
            else
                {
                    $tipoToner3= $tipoTonerAlt3; 
                    $nomeTabela = "material";
                    $tipoOpcao = "idMaterial";
                    $tonerDAO = new ControleCirDAO(); 
                    foreach ($tonerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAnt1) as $res)
                        {
                            $descTonnerAnt1 = $res->descricao;
                        }
                    $toner1DAO = new ControleCirDAO();   
                    foreach ($toner1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAlt1) as $res)
                        {
                            $desTonnerAlt1 = $res->descricao;
                        }	
                    $aux++;
                    $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt3 .' PARA => '. $desTonnerAlt3;
                }
            //tonner 4
            if ($tipoTonerAlt4 == "" || $tipoTonerAlt4 == $tipoTonerAnt4) 
                {
                    $tipoToner4 = $tipoTonerAnt4;
                }
            else
                {
                    $tipoToner4 = $tipoTonerAlt4; 
                    $nomeTabela = "material";
                    $tipoOpcao = "idMaterial";
                    $tonerDAO = new ControleCirDAO(); 
                    foreach ($tonerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAnt1) as $res)
                        {
                            $descTonnerAnt1 = $res->descricao;
                        }
                    $toner1DAO = new ControleCirDAO();   
                    foreach ($toner1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoTonerAlt1) as $res)
                        {
                            $desTonnerAlt1 = $res->descricao;
                        }	
                    $aux++;
                    $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt4 .' PARA => '. $desTonnerAlt4;
                }

            $tipoTonerBd[0] = $tipoToner1;
            $tipoTonerBd[1] = $tipoToner2; 
            $tipoTonerBd[2] = $tipoToner3; 
            $tipoTonerBd[3] = $tipoToner4;

            $tipoTonerBd = serialize($tipoTonerBd);
		}    
       
    if ($impStatusAlt == "" || $impStatusAlt == $statusImpressoraAnt) 
        {
            $statusImpressora = $statusImpressoraAnt;
        }   
     else
        {
            $statusImpressora = $impStatusAlt;  
            $aux++;
            $hitorico .= 'STATUS ALTERADO DE: '. $statusImpressoraAnt .' PARA => '. $statusImpressora ;
        }

      if ($conexaoImpAlt == "" || $conexaoImpAlt == $conexaoImpAnt ) 
        {
            $conexaoImp = $conexaoImpAnt;
        }   
     else
        {
            $conexaoImp = $conexaoImpAlt;  
            $aux++;
            $hitorico .= 'TIPO DE CONEXÃO ALTERADA DE: '. $conexaoImpAnt  .' PARA => '. $conexaoImp ;
        }

    if ($modeloAlt == "" || $modeloAlt == $modeloImpressoraAnt)
        {
            $modeloImpressora = $modeloImpressoraAnt;
        }
    else
        {
            $modeloImpressora = $modeloAlt;                
            $nomeTabela = "modeloImpressora";
            $tipoOpcao = "idModelo";

            $modelo0DAO = new ControleCirDAO(); 
            foreach ($modelo0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $modeloImpressoraAnt) as $res)
                {
                    $descModelAnt = $res->modeloImpressora;
                }
            $modelo1DAO = new ControleCirDAO();   
            foreach ($modelo1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $modeloAlt) as $res)
                {
                    $desModelAlt = $res->modeloImpressora;
                }	
           
            $aux++;
            $hitorico .= 'MODELO DA IMPRESSORA ALTERADO DE: '. $descModelAnt .' PARA => '. $desModelAlt ;
        }
  
    //local
    if ($divisaoAlt == "" || $divisaoAlt == $divisaoAnt)
        {
            $divisaoBd = $divisaoAnt;
        }
    else
        {
            $divisaoBd = $divisaoAlt;  
            $divisao0DAO = new ControleCirDAO();   
            $nomeTabela = "divisao";
            $tipoOpcao = "idDivisao";
            foreach ($divisao0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoAnt) as $res)
                {
                    $descricaoAnt = $res->divisao;
                }
            $divisao1DAO = new ControleCirDAO();   
            foreach ($divisao1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
                {
                    $descricaoAlt = $res->divisao;
                }	

            $auxLocal++;
            $hitorico .= 'DIVSÃO DA IMPRESSORA ALTERADA DE: '. $descricaoAnt .' PARA => '. $descricaoAlt ;
        }
      
    if ($localAlt == "" || $localAlt == $localizacaoAnt) 
        {
            $localizacaoBd = $localizacaoAnt;
        }
    else
        {
            $localizacaoBd = $localAlt;  
            $auxLocal++;
            $hitorico .= 'LOCAL ALTERADO DE: '. $localizacaoAnt .' PARA => '. $localizacaoBd ;
        }

    if ($ramalAlt == "" || $ramalAlt == $ramalAnt) 
        {
            $ramalBd = $ramalAnt;
        }   
     else
        {
            $ramalBd = $ramalAlt;  
            $auxLocal++;
            $hitorico .= 'RAMAL ALTERADO DE: '. $ramalAnt .' PARA => '. $ramalBd ;
        }

    if ($respSetCompAlt == "" || $respSetCompAlt == $respSetCompAnt)
        {
            $respSetBd = $respSetCompAnt;
        }
    else
        {
            $respSetBd = $respSetCompAlt;  
            $auxLocal++;
            $hitorico .= 'RESPONSÁVEL PELO SETOR ALTERADO DE: '. $respSetCompAnt .' PARA => '. $respSetBd ;
        }

    if ($nomeLocalAlt == "" || $nomeLocalAlt == $nomeLocalAnt)
        {
            $nomeLocalBd = $nomeLocalAnt;
        }
    else
        {
            $nomeLocalBd = $nomeLocalAlt;  
            $auxLocal++;
            $hitorico .= 'NOME DO LOCAL ALTERADO DE: '. $nomeLocalAnt .' PARA => '. $nomeLocalBd ;
        }

    if ($conexaoImpAlt == "Usb")
        {
            $ipImpressora = NULL;
        }

 echo "<br>hitorico 1 => " . $hitorico;
 echo "<br>tipoTonerAlt 1 => " . $tipoTonerAlt1;
 echo "<br>tipoTonerAlt 2 => " . $tipoTonerAlt2;
 echo "<br>tipoTonerAlt 3 => " . $tipoTonerAlt3;
 echo "<br>tipoTonerAlt 4 => " . $tipoTonerAlt4;
 echo "<br> => " . print_r($$tipoTonerBd);

  /*
    //verificar setor e salvar update  
    $divisao2DAO = new ControleCirDAO();   
    $nomeTabela = "divisao";
    $tipoOpcao = "idDivisao";
    foreach ($divisao2DAO->ListarOpcao($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
        {
            $descricaoAnt = $res->divisao;
        }

    $setorExisteDAO = new ControleCirDAO();
    foreach ($setorExisteDAO->VerificarSetor($descricaoAnt,$localizacaoBd,$nomeLocalBd) as $local)
        { 
            $idSetor = $local->idSetor;				          
        }
    
    if( $aux != 0 || $auxLocal != 0)
        {
            if($auxLocal != 0)
                { 
                    if($idSetor == 0)
                        {
                            $local1 = new Setor($idSetor, $divisaoBd, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);	
                            //echo "<br>Setor";				
                            //$local1->exibir();
                            //echo "<br>";		
                            $local = new ControleCirDAO();	
                            $local->CadastrarSetor($local1);
                            $idSetor = $_SESSION['localid'];      
                        }

                    if($aux == 0)
                        {
                            $impressoraDAO = new ControleCirDAO();
                            $impressoraDAO->IpressoraUpdateSetor($idImpressora,$idSetor);
                            echo "<script type='text/javascript'>alert('valor(es)  alterado(s)');</script>";
                            echo "<script>location = '../views/impressorasListar.php';</script>";   
                        }
                    else
                        {
                            $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoTonerBd, $colorida,
                            $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $ObsImpAlt,
                            $_SESSION['idFuncionario'] , $idSetor);
                            //echo "<br>dados impressora 0 <br>";		
                            //$impressora->exibir();
                            //echo "<br>";
                            $impressoraDAO = new ControleCirDAO();
                            $impressoraDAO->UpdateImpre($impressora);
                        } 
                } 

             else
                {
                    $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoTonerBd, $colorida,
                    $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $ObsImpAlt,
                    $_SESSION['idFuncionario'] , $idSetor);
                    //echo "<br>dados impressora 1 <br>";		
                    //$impressora->exibir();
                    //echo "<br>";
                    $impressoraDAO = new ControleCirDAO();
                    $impressoraDAO->UpdateImpre($impressora);
                }

            //criar historico e salvar
            //nome dos arquivos historico
            $data2 = soNumero($dateAltCadastro);
            $hora = soNumero(date('H:i:s'));
            $nomeHist = "Imp" . $idImpressora . "D". $data2 . "h" . $hora ."F" . $_SESSION['idFuncionario'].".txt";
            $caminho = "../historico/";
            $desHist = $caminho . "hist-" . $nomeHist;
            
            $output2 = fopen($desHist, 'wb');
            //salva arquivo 
            fwrite($output2, $hitorico);
            fclose($output2); 

            $idComputador = null;
            $historicoBd = new Historico($idHistorico, $desHist, $dateAltCadastro, $funcionarioAltCadastro,  $idComputador,  $idNotebook, $idImpressora, $_SESSION['idFuncionario']);
            //echo "<br>dados  Historico<br>";		
            //$historicoBd->exibir();
            //echo "<br>"; 
            $historicoDAO = new ControleCirDAO();
            $historicoDAO->HitoricoCadastrar($historicoBd);

            echo "<script type='text/javascript'>alert('valor(es)  alterado(s)');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
        }
    else
        {
            echo "<script type='text/javascript'>alert('nenhum valor(es)  alterado(s), portanto nada a ser salvo');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
        }*/
?>