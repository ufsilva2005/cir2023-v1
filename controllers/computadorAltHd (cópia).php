<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	//include "../models/class-setor.php";
	//include "../models/class-computador.php";	
	include "../models/class-historico.php";

    $idImpressora = null;
    $dataAltCadastro = date('Y-m-d');

	//recebe dados da view
    //echo"<br> dados do hd <br>";
    //print_r($_SESSION['capHdBd']); 

    //echo"<br> dados <br>";
    $capHdBd = $_SESSION['capHdBd'];
    $tipoHD = serialize($capHdBd); 
    //print_r($tipoHD);

    //echo"<br> dados ip <br>";
    //echo $_SESSION['idCompAlt'];

    echo "<br>" . $_SESSION['action'];

    if($_SESSION['action'] == 1)
        {
            $hitorico = "FORAM ACRESCENTADOS HD's E O COMPUTADOR FICOU COM OS SEGUINTES HD's => ";
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
                            //$hitorico .= $descricao = $resp->descricao;
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

              //echo "<br>desHist => " . $desHist ."<br>";	
              //echo "<br>hitorico => " . $hitorico ."<br>";  
              //echo "<br>dataAltCadastro => " . $dataAltCadastro . "<br>";	  
              //echo "<br>nomeFuncionario => " . $_SESSION['nomeFuncionario'] . "<br>";	  
              //echo "<br>idCompAlt => " .  $_SESSION['idCompAlt'] . "<br>";	  
              //echo "<br>idFuncionario => " . $_SESSION['idFuncionario'] . "<br>";	
            
            $output2 = fopen($desHist, 'wb');
            //salva arquivo 
            fwrite($output2, $hitorico);
            fclose($output2); 

            $idComputador = null;
            $historicoBd = new Historico($idHistorico, $desHist, $dataAltCadastro, $_SESSION['nomeFuncionario'], $_SESSION['idCompAlt'],  $idImpressora, $_SESSION['idFuncionario']);
            echo "<br>dados  Historico<br>";		
            $historicoBd->exibir();			
            echo "<br>"; 
            $historicoDAO = new ControleCirDAO();
            $historicoDAO->HitoricoCadastrar($historicoBd);

            //$hdNovo = serialize($hdNovo); 
            //echo "<br>HD(s) NOVO(s)" ;
            //print_r($hdNovo);
            $computadorDAO = new ControleCirDAO();
            $computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$tipoHD);


        }         

        else
            {
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
                                $hdAnt .= "&emsp; hd(" . $x .") =>" . $descricao = $resp->descricao;  
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
                                $hdNovo .=  "&emsp; hd(" . $x .") =>" . $descricao = $resp->descricao;  
                            } 
                    } 

            echo "<br>HD(s) ANTIGO(s)" .  $hdAnt;
            echo "<br>HD(s) NOVO(s)" .  $hdNovo;

            $hdNovo = serialize($hdNovo); 
            echo "<br>HD(s) NOVO(s)" .  $hdNovo;
            $computadorDAO = new ControleCirDAO();
            $computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$hdNovo);
            }
        $computadorDAO = new ControleCirDAO();
    //$computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$tipoHD); 
?>