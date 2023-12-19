<?php	
	session_start();
    include "../dao/DAO-controleCir.php";
    include "../funcao/funcao.php";
	//$tipoPesquisa = $_GET['action'];
    //$total = $_GET['total'];
    //$nomeDivisão = $_SESSION['nomeDivisão'];
    //$nomeLocal = $_SESSION['nomeLocal'];

    //echo "<br>" . $tipoPesquisa;
    //if($_SESSION['tipoPesquisa'] == "setor")
        //{
            //$_SESSION['valorPesquisa'] = $nomeLocal;
        //}
    //if($_SESSION['tipoPesquisa'] == "divisao")
        //{
            //$_SESSION['valorPesquisa'] = $nomeDivisão;
        //}
   
          
    //echo "<br>valorPesquisa => " . $_SESSION['valorPesquisa'];
	//echo "<br>tipoPesquisa => " . $_SESSION['tipoPesquisa'];			
    //echo "<br>dataInComp => " . $_SESSION['dataInComp'];
	//echo "<br>dataOutComp => " . $_SESSION['dataOutComp'];
    //echo "<br>total => " . $_SESSION['numRows'];

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
                            width: 90%;
                            border-collapse: separate;
                            border-spacing: 0;
                            margin-top: 2px;
                            margin-bottom: 1px;
                            margin-right: 20px;
                            margin-left: 10px;

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

                            border-top: 1px solid;
                            border-bottom: 1px solid;
                            border-right: 1px solid;
                            border-left: 1px solid;
                            text-align: center;
                            padding: 2px;
                            background-color: #efefef;
                        }

                        .tableUfs{
                            border-spacing: 0;
                            margin-top: 0px;
                            margin-right: 10px;
                            margin-left: 10px;

                            border-top: 0px solid;
                            border-bottom: 0px solid;
                            border-right: 0px solid;
                            border-left: 0px solid;
                            text-align: left;
                            padding: 2px;
                        }

                        thead th{
                            position: sticky;
                            top: 10;
                            background-color: #efefef;
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
                            padding: 2px;
                            text-align: left;
                        }

                        tfoot td{
                            background: blue;  
                            position: sticky;
                            bottom: 0;
                        }
                    </style>
                </head>

                <body>
                    <nav class="fixed  navbar navbar-dark">
                        <div class="line col-md-12 p-5 position-absolute top-100 bottom-150 end-150">
                            <div class="col-md-12 py-5 px-2">	  
                                <table class = "table1">
                                    <thead>
                                        <tr>
                                            <th>   
                                                <img id="profile-img" class="profile-img-card" src="../img/cir.jpg" height="5%" width="10%">                   
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

                                <table class = "tableUfs">
                                    <thead>     
                                        <tr>
                                            <td style="width:50%">
                                                <h5><strong>Número do Computador: ' . $numCir . '</strong></h5>
                                            </td> 
                                            <td style="width:50%">
                                                <h5><strong>Nome: ' . $nomeComputador . '</strong></h5>
                                            </td>                                                              
                                        </tr>
                                        <tr>
                                            <td style="width:50%">
                                                <h5><strong>Nº Patrimonio Hu: ' . $numPatrimonio . '</strong></h5>
                                            </td>
                                            <td style="width:50%">
                                                <h5><strong>Nº Patrimonio da Reitoria: ' . $numPatReitoria . '</strong></h5>
                                            </td>                   
                                        </tr>
                                    </thead>            
                                </table>
                            </div>

                            <div class="panel-content">
                                <div class="row">
                                    <div class="col px-md-1 col-md-12">
                                        <table>                          
                                            <thead>
                                                <tr>												
                                                    <th style="width:40%"><h6>ITEM</h6></th>	
                                                    <th style="width:60%"><h6>DESCRIÇÃO</h6></th>							
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <tr>    
                                                    <td><h6>Processador</h6></td>
                                                    <td><h6>' . $desProcessador . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>HD</h6></td>
                                                <td><h6>' . $hd . '</h6></td>
                                            </tr>   
                                            <tr>    
                                                <td><h6>Memória</h6></td>
                                                <td><h6>' . $memoria . '</h6></td>
                                            </tr> 
                                            <tr>																																
                                                <td><h6>Sistema Operacional</h6></td>
                                                <td><h6> ' . $sistemaOpera . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Divisao</h6></td>
                                                <td><h6>' . $nomeDivisao . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Setor</h6></td>
                                                <td><h6>' . $nomeLocal . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Ramal</h6></td>
                                                <td><h6>' . $ramal . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>localizacao</h6></td>
                                                <td><h6>' . $localizacao . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Status da Computador</h6></td>
                                                <td><h6>' . $statusComp . '</h6></td>
                                            </tr> 
                                            <tr>
                                                <td><h6>Nº MAC:</h6></td>
                                                <td><h6>' . $numMac . '</h6></td> 
                                            </tr>
                                                <td><h6>Nº IP:</h6></td>
                                                <td><h6>' . $numIp . '</h6></td>                   
                                            </tr>                                        
                                            <tr>    
                                                <td><h6>Modelo/Marca</h6></td>
                                                <td><h6>' . $modelMaquina . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Data de Cadastro</h6></td>
                                                <td><h6>' . $dataCadastro . '</h6></td>
                                            </tr> 
                                            <tr>    
                                                <td><h6>Responsável pelo Cadastro</h6></td>
                                                <td><h6>' . $respCadastro . '</h6></td>
                                            </tr>                                          
                                        </tbody>                                   
                                    </table>
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
	
	// Carrega seu HTML
	$dompdf->load_html('			
			'. $html1 .'
		');

	// configurar papel 
	$dompdf->set_paper("A4", "portrail");
	
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