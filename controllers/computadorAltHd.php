<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-historico.php";

    $idImpressora = null;
    $dataAltCadastro = date('Y-m-d');

	//recebe dados da view
    $capHdBd = $_SESSION['capHdBd'];
    $tipoHD = serialize($capHdBd); 

    echo "<br>" . $_SESSION['action'];

    if($_SESSION['action'] == 1)
        {
            $hitorico = "FORAM ACRESCENTADOS HD's, E O COMPUTADOR FICOU COM OS SEGUINTES HD's => ";
            $t = sizeof($capHdBd);
            $nomeTabela = "hdTipos";
            $tipoOpcao = "id";                                 
            for ($i = 0; $i < $t; $i++) 
                {
                    $id = $capHdBd[$i];
                    $tipoHDDAO = new ControleCirDAO();
                    foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                        { 
                            $x = $i + 1;
                            $hitorico .=  " hd(" . $x .") =>" . $descricao = $resp->descricao;  
                        } 
                } 

            
			//criar historico e salvar
            //nome dos arquivos historico
            $data2 = soNumero($dataAltCadastro);
            $hora = soNumero(date('H:i:s'));
            $nomeHist = "Comp" . $_SESSION['idCompAlt'] . "D". $data2 . "h" . $hora ."F" . $_SESSION['idFuncionario'].".txt";
            $caminho = "../historico/";
            $desHist = $caminho . "hist-" . $nomeHist;
            
            //salva arquivo 
            $output2 = fopen($desHist, 'wb');            
            fwrite($output2, $hitorico);
            fclose($output2); 

            //salva histórico 
            $idComputador = null;
            $historicoBd = new Historico($idHistorico, $desHist, $dataAltCadastro, $_SESSION['nomeFuncionario'], $_SESSION['idCompAlt'],  $idNotebook, $idImpressora, $_SESSION['idFuncionario']);
            //echo "<br>dados  Historico<br>";		
            //$historicoBd->exibir();			
            //echo "<br>"; 
            $historicoDAO = new ControleCirDAO();
            $historicoDAO->HitoricoCadastrar($historicoBd);

            //update dados
            $computadorDAO = new ControleCirDAO();
            $computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$tipoHD);

            echo "<script type='text/javascript'>alert('ALTERAÇÃO(ÕES)  EFETUADA(S)');</script>";
			echo "<script>location = '../views/computadorListar.php';</script>";    
        }         

        else
            {
                echo "<br>";
                print_r($_SESSION['antTipoHD']);
                //hd antigo
                $hdAntigo = $_SESSION['antTipoHD'];
                 $t = sizeof($hdAntigo);
                $nomeTabela = "hdTipos";
                $tipoOpcao = "id";                                 
                for ($i = 0; $i < $t; $i++) 
                    {
                        $id = $hdAntigo[$i];
                        $tipoHDDAO = new ControleCirDAO();
                        foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                            { 
                                $x = $i + 1;
                                //$hdAnt .= $descricao = $resp->descricao;
                                $historico1 .= "hd(" . $x .") => " . $descricao = $resp->descricao;  
                            }
                    } 


                //hd novo
                $t = sizeof($capHdBd);
                $nomeTabela = "hdTipos";
                $tipoOpcao = "id";                                 
                for ($i = 0; $i < $t; $i++) 
                    {
                        $id = $capHdBd[$i];
                        $tipoHDDAO = new ControleCirDAO();
                        foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                            { 
                                $x = $i + 1;
                                //$hdNovo .= $descricao = $resp->descricao;
                                $historico2 .=  "hd(" . $x .") => " . $descricao = $resp->descricao;  
                            } 
                    } 

            //echo "<br>HD(s) ANTIGO(s) => " .  $historico1;
            //echo "<br>HD(s) NOVO(s) => " .  $historico2;

            $hdNovo = serialize($capHdBd); 
            //echo "<br>HD(s) NOVO(s) => " .  $hdNovo;

            //criar historico e salvar
            $hitorico = "HD('s) ALTERADO(S) DE: " .  $historico1 . " PARA: " . $historico2;
            //nome dos arquivos historico
            $data2 = soNumero($dataAltCadastro);
            $hora = soNumero(date('H:i:s'));
            $nomeHist = "Comp" . $_SESSION['idCompAlt'] . "D". $data2 . "h" . $hora ."F" . $_SESSION['idFuncionario'].".txt";
            $caminho = "../historico/";
            $desHist = $caminho . "hist-" . $nomeHist;
            
            //echo "<br>hitorico => " .  $hitorico;
            //salva arquivo 
            $output2 = fopen($desHist, 'wb');            
            fwrite($output2, $hitorico);
            fclose($output2); 

            $computadorDAO = new ControleCirDAO();
            $computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$hdNovo);

            echo "<script type='text/javascript'>alert('ALTERAÇÃO(ÕES)  EFETUADA(S)');</script>";
			echo "<script>location = '../views/computadorListar.php';</script>";    
            }
?>