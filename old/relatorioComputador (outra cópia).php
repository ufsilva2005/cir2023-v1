<?php	
	session_start();
    include "../dao/DAO-controleCir.php";
    include "../funcao/funcao.php";

    //$numCir = array();
    //echo "<br>tipoPesquisa => " . $_SESSION['tipoPesquisa'];	
   
    if($_SESSION['tipoPesquisa'] == "setor")
        {
            $compAltDAO = new ControleCirDAO();
            foreach($compAltDAO->RelatSetor($_SESSION['valorPesquisa']) as $comp)                                             
                {  
				    $idComputador .= $comp->idComputador;											
					$numCir[] = $comp->numCir;															
					$numPatrimonio[] = $comp->numPatrimonio; 
                    $numPatReitoria[] = $comp->numPatReitoria;
                    $idTipoProcessador = $comp->idTipoProcessador;
                    $procDAO = new ControleCirDAO();
					foreach($procDAO->BuscaProc($idTipoProcessador) as $proc)
						{ 	
							$descricaoProc[] = converteMinuscula($proc->descricao);
						}	
                    $tipoHD1 = $comp->tipoHD;
                    $tipoHD[] = unserialize($tipoHD1);                   
                    $memoria[] = $comp->memoria;	
                    $sistemaOpera[] = converteMinuscula($comp->sistemaOpera);
                    $idSetor = $comp->idSetor; 
					$setorDAO = new ControleCirDAO();
					foreach($setorDAO->Buscalocal($idSetor) as $Setor)
						{ 	
							$divisao[] = converteMinuscula($Setor->divisao);
				            $nomeLocal[] = converteMinuscula($Setor->nomeLocal);
                            $ramal[] = $Setor->ramal;
							$localizacao[] = $Setor->localizacao;
						}		
					$statusComp[] = $comp->statusComp;
                    $modelMaquina[] = converteMinuscula($comp->modelMaquina);
                }
            $numRows = $_SESSION['numRows'];
        }
    elseif($_SESSION['tipoPesquisa'] == "divisao")
        {
            $compAltDAO = new ControleCirDAO();
            foreach($compAltDAO->RelatDivisao($_SESSION['valorPesquisa']) as $comp)                                             
                {  
				    $idComputador .= $comp->idComputador;											
					$numCir[] = $comp->numCir;															
					$numPatrimonio[] = $comp->numPatrimonio; 
                    $numPatReitoria[] = $comp->numPatReitoria;
                    $idTipoProcessador = $comp->idTipoProcessador;
                    $procDAO = new ControleCirDAO();
					foreach($procDAO->BuscaProc($idTipoProcessador) as $proc)
						{ 	
							$descricaoProc[] = converteMinuscula($proc->descricao);
						}	
                    $tipoHD1 = $comp->tipoHD;
                    $tipoHD[] = unserialize($tipoHD1);                   
                    $memoria[] = $comp->memoria;	
                    $sistemaOpera[] = converteMinuscula($comp->sistemaOpera);
                    $idSetor = $comp->idSetor; 
					$setorDAO = new ControleCirDAO();
					foreach($setorDAO->Buscalocal($idSetor) as $Setor)
						{ 	
							$divisao[] = converteMinuscula($Setor->divisao);
				            $nomeLocal[] = converteMinuscula($Setor->nomeLocal);
                            $ramal[] = $Setor->ramal;
							$localizacao[] = $Setor->localizacao;
						}		
					$statusComp[] = $comp->statusComp;
                    $modelMaquina[] = converteMinuscula($comp->modelMaquina);
                }
            $numRows = $_SESSION['numRows'];
        }
    elseif($_SESSION['tipoPesquisa'] == "andar")
        {
            $compAltDAO = new ControleCirDAO();
            foreach($compAltDAO->RelatAndar($_SESSION['valorPesquisa']) as $comp)                                             
                {  
				    $idComputador .= $comp->idComputador;											
					$numCir[] = $comp->numCir;															
					$numPatrimonio[] = $comp->numPatrimonio; 
                    $numPatReitoria[] = $comp->numPatReitoria;
                    $idTipoProcessador = $comp->idTipoProcessador;
                    $procDAO = new ControleCirDAO();
					foreach($procDAO->BuscaProc($idTipoProcessador) as $proc)
						{ 	
							$descricaoProc[] = converteMinuscula($proc->descricao);
						}	
                    $tipoHD1 = $comp->tipoHD;
                    $tipoHD[] = unserialize($tipoHD1);                   
                    $memoria[] = $comp->memoria;	
                    $sistemaOpera[] = converteMinuscula($comp->sistemaOpera);
                    $idSetor = $comp->idSetor; 
					$setorDAO = new ControleCirDAO();
					foreach($setorDAO->Buscalocal($idSetor) as $Setor)
						{ 	
							$divisao[] = converteMinuscula($Setor->divisao);
				            $nomeLocal[] = converteMinuscula($Setor->nomeLocal);
                            $ramal[] = $Setor->ramal;
							$localizacao[] = $Setor->localizacao;
						}		
					$statusComp[] = $comp->statusComp;
                    $modelMaquina[] = converteMinuscula($comp->modelMaquina);
                }
            $numRows = $_SESSION['numRows'];
        }
    else
        {
            //echo "<br>valorPesquisa => " . $_SESSION['valorPesquisa'];
            //echo "<br>tipoPesquisa => " . $_SESSION['tipoPesquisa'];			
            //echo "<br>dataInComp => " . $_SESSION['dataInComp'];
            //echo "<br>dataOutComp => " . $_SESSION['dataOutComp'];
            //echo "<br>total => " . $_SESSION['numRows'];
        }

    //echo "<br>total => 0 <br>";
    //print_r($tipoHD);
    //echo "<br>total => 1";
    //echo "<br>"; echo "<br>"; echo "<br>";

    //print_r($tipoHD[1][0]); 

    /*for ($i=0; $i < $numRows; $i++)
        { 
            print_r($tipoHD[$i]);  
            $teste[$i] = $tipoHD[$i];
            echo "<br>";echo "<br>";echo "<br>";
            /*echo "<br>teste1";                 
        }*/

    for ($i=0; $i < $numRows; $i++)
        { 
            //print_r($tipoHD[$i]); 
            //echo "<br>";
            $t = sizeof($tipoHD[$i]);
            //echo "tamanho => " . $t . "<br>";
            $nomeTabela = 'hdTipos';
            $tipoOpcao = 'id';                                 
            for ($x = 0; $x < $t; $x++) 
                {
                    $id = $tipoHD[$i][$x];
                    $tipoHDDAO = new ControleCirDAO();
                    foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                        { 
                            $hd .= $resp->descricao . " ";  
                        } 
                }
            //echo "<br>hd " . $x . " - " . $i . " => " . $hd . "<br>";
            $thd[$i] = $hd;
            $hd = "";

        }
         //echo "<br>"; echo "<br>"; echo "<br>";

        //print_r($thd[0]);
    /*$t = sizeof($teste[0]);
    $nomeTabela = 'hdTipos';
    $tipoOpcao = 'id';                                 
    for ($x = 0; $x < $t; $x++) 
        {
            $id = $teste[$x];
            $tipoHDDAO = new ControleCirDAO();
            foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                { 
                    print_r($hd[] .= $resp->descricao);  
                    echo "<br>teste2";
                } 
        }*/

	$html1 ='<!DOCTYPE html>
                <html lang="PT-BR">
                    <head>
                        <meta charset="utf-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">   <head>
                        <style type="text/css"> 
                            *{
                                padding: 0;
                                margin: 0;
                                margin-right: 20px;
                            margin-left: 10px;
                            }

                        table{
                            width: 100%;
                            border-collapse: separate;
                            border-spacing: 0;
                            margin-top: 2px;
                            margin-bottom: 1px;
                            margin-right: 0px;
                            margin-left: 20px;

                            border-top: 1px solid;
                            border-bottom: 1px solid;
                            border-right: 1px solid;
                            border-left: 1px solid;
                            text-align: center;
                            padding: 2px;
                            background-color: #efefef;
                        }

                        .table1{
                            margin-top: 40px;
                            margin-bottom: 1px;
                            margin-right: 0px;
                            margin-left: 20px;

                            border-top: 1px solid;
                            border-bottom: 1px solid;
                            border-right: 1px solid;
                            border-left: 1px solid;
                            text-align: center;
                            padding: 2px;
                            background-color: #efefef;
                        }

                        .tableUfs{
                            width: 100%;
                            border-spacing: 1;
                            margin-top: 5px;
                            margin-right: 0px;
                            margin-left: -30px;
                            margin-bottom: 1px;

                            border-top: 1px solid;
                            border-bottom: 1px solid;
                            border-right: 1px solid;
                            border-left: 1px solid;
                            text-align: center;
                            padding: 2px;
                            background-color: #ffffff;
                        }

                        thead th{
                            position: sticky;
                            top: 10;
                            background-color: #ffffff;
                        }

                        th{
                            border-top: 0px solid;
                            border-bottom: 0px solid;
                            border-right: 0px solid;
                            text-align: center;
                            padding: 2px;
                        }

                        tbody tr:nth-child(even){
                            background: #ffff;
                            overflow: hidden;
                        }

                        td{
                            border-top: 1px solid;
                            border-bottom: 1px solid;
                            border-right: 1px solid;
                            border-left: 1px solid;
                            padding: 0px;
                            text-align: left;
                        }

                        tfoot td{
                            background: blue;  
                            position: sticky;
                            bottom: 0;
                        }
                        .ufs {
                                width:5px;
                        }
                    </style>
                </head>

                <body>
                    <nav class="fixed  navbar navbar-dark">
                        <div class="line col-md-12 position-absolute top-100 bottom-150">
                            <div class="col-md-12 py-5 px-2">	  
                                <table class = "table1">
                                    <thead>
                                        <tr>
                                            <th>   
                                                <img id="profile-img" class="profile-img-card" src="../img/cir.jpg" height="10%" width="10%">                   
                                            </th> 
                                        <tr>

                                        </tr>    
                                            <th>               
                                                <h5><strong>CIR - Coordenção de Informática e Redes</strong></h5>
                                                <h5></h5>
                                            </th>
                                        </tr>
                                    </thead>            
                                </table>

                                <table>
                                    <thead>
                                        <tr>
                                            <th>   
                                                <h5>
                                                    <h4 class="text-success"><strong> Relação dos Computadores do(a) ' .  $_SESSION['valorPesquisa'] . '</strong></h4>
                                                </h5> 
                                            </th>
                                        </tr>
                                    </thead>            
                                </table>
                            </div>
                            <div class="row">
                                <div class="col px-md-1 col-md-12"> 
                                    <table class = "tableUfs">  
                                        <thead>     
                                            <tr>
                                                <th class="ufs"><h6>Número:</h6></th>   
                                                <th class="ufs"><h6>Nº Pat Hu:</h6></th>
                                                <th class="ufs"><h6>Nº Pat Reitoria:</h6></th>  
                                                <th class="ufs"><h6>Processador</h6></th>                                              
                                                <th class="ufs"><h6>HD</h6></th>
                                                <th class="ufs"><h6>Memória</h6></th>																								
                                                <th class="ufs"><h6>Sistema Operacional<h6></th>
                                                <th class="ufs"><h6>Divisao</h6></th>
                                                <th class="ufs"><h6>Setor</h6></th>
                                                <th class="ufs"><h6>Ramal</h6></th>
                                                <th class="ufs"><h6>localizacao</h6></th>
                                                <th class="ufs"><h6>Status do Computador</h6></th>
                                                <th class="ufs"><h6>Modelo/Marca</h6></th>
                                            </tr>
                                        </thead>    
                                        <tbody>';
                                            for ($i=0; $i < $numRows ; $i++)
                                                { 
                                                $html2 =' <tr>																																
                                                                <td class="ufs"><h6> ' . $numCir[$i]. '</h6></td>
                                                                <td class="ufs"><h6> ' . $numPatrimonio[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $numPatReitoria[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $descricaoProc[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $thd[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $memoria[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $sistemaOpera[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $divisao[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $nomeLocal[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $ramal[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $localizacao[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $statusComp[$i] . '</h6></td>
                                                                <td class="ufs"><h6> ' . $modelMaquina[$i] . '</h6></td>
                                                            <tr>';
                                                    $html1 = $html1.$html2;
                                                }
                                                

                            $html3 =    '</tbody>        
                                    </table>
                                </div>
                            </div>
                            <div class="panel-content">
                                <div class="row">
                                    <div class="col px-md-1 col-md-12">                                        
                                </div>
                            </div>    
                        
                        </div>
                    </div>
                </nav>	  
            </div> 	
        </body>
    </html>';

	
      
	

	
		
	
	//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;

	// include autoloader
	require_once("dompdf/autoload.inc.php");

	//Criando a Instancia
	$dompdf = new DOMPDF();
	
      $html=$html1.$html3;
	// Carrega seu HTML
	$dompdf->load_html('			
			'. $html .'
		');

	// configurar papel 
	//$dompdf->set_paper("A4", "portrail"); //Retrato
    $dompdf->set_paper("A4", "landscape");//Paisagem
	
	//Renderizar o html
	$dompdf->render();

	//Exibibir a página
	$dompdf->stream(
		"computador.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		)
	);
?>