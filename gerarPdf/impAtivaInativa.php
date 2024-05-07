<?php	
	session_start();
    include "../dao/DAO-controleCir.php";
    include "../funcao/funcao.php";

    $auxPaginas = 0;
    $atiDes = $_SESSION['atiDes']; 
    if($atiDes == 1)
        {
            $valorOpcao	= "ativo";
        }
    else
        {
            $valorOpcao	= "inativo";
        }

    //echo  $valorOpcao;
    $string = substr($valorOpcao, 0, -1);
    $string = ucwords($string);
    $pesquisa = $string ."as";
          
    $impAltDAO = new ControleCirDAO();
            foreach($impAltDAO->RelatStatusImp($valorOpcao) as $imp)                                             
                {  
				    $idImpressora =$imp->idImpressora;											
					$numSerie[] =$imp->numSerie;															
					$nomeImpressora[] =$imp->nomeImpressora; 
                    $macImpressora[] =$imp->macImpressora;    
                    $ipImpressora[] = $imp->ipImpressora;                 
                    $idSetor =$imp->idSetor; 
					$setorDAO = new ControleCirDAO();
					foreach($setorDAO->Buscalocal($idSetor) as $Setor)
						{ 	
							$divisao[] = converteMinuscula($Setor->divisao);
				            $nomeLocal[] = converteMinuscula($Setor->nomeLocal);
                            $ramal[] = $Setor->ramal;
							$localizacao[] = $Setor->localizacao;
						}		
					$statusImpressora[] =$imp->statusImpressora;
                    $idModelo = $imp->modeloImpressora;
                    $modeloDAO = new ControleCirDAO();
					foreach($modeloDAO->Buscamod($idModelo) as $mod)
						{ 	
							$modeloImpressora[] = converteMinuscula($mod->modeloImpressora);
						}		
                }

            $numRows = $_SESSION['numRows'];
            //echo "<br>" . $pesquisa = $_SESSION['valorPesquisa'] . "s";

    
         
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
                                margin-top: 20px;
                            }

                        table{
                            width: 100%;
                            border-collapse: separate;
                            border-spacing: 0;
                            margin-top: 0px;
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
                            margin-top: 0px;
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
                            margin-top: 10px;
                            margin-right: 0px;
                            margin-left: 20px;
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
                                width:50px;
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
                                                <img id="profile-img" class="profile-img-card" src="../img/cir.jpg" height="13%" width="10%">                   
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
                                                    <h4 class="text-success"><strong> Relação das Impressoras ' .  $pesquisa . '</strong></h4>
                                                </h5> 
                                            </th>
                                        </tr>
                                    </thead>            
                                </table>
                            </div>                           
                            <div class="col-md-12 py-5 px-2">'; 
                        $html2 = '<table class = "tableUfs">  
                                    <thead>     
                                        <tr>
                                            <th><h6>Número de Série:</h6></th>   
                                            <th><h6>Nome da Impressora:</h6></th>
                                            <th><h6>Nº MAC:</h6></th>                                                  
                                            <th><h6>Nº IP</h6></th>
                                            <th><h6>Divisão</h6></th>
                                            <th><h6>Setor</h6></th>
                                            <th><h6>Ramal</h6></th>
                                            <th><h6>localização</h6></th>
                                            <th><h6>Status</h6></th>
                                            <th><h6>Modelo</h6></th>
                                        </tr>
                                    </thead>    
                                    <tbody>';
                                        //for ($x=0; $x < $numPaginas ; $x++)
                                            //{
                                                for ($i=0; $i < $numRows ; $i++)
                                                    { 
                                                    $html2 .=' <tr>																																
                                                                    <td><h6> ' . $numSerie[$i]. '</h6></td>
                                                                    <td><h6> ' . $nomeImpressora[$i] . '</h6></td>
                                                                    <td><h6> ' . $macImpressora[$i] . '</h6></td>
                                                                    <td><h6> ' . $ipImpressora[$i] . '</h6></td>
                                                                    <td><h6> ' . $divisao[$i] . '</h6></td>
                                                                    <td><h6> ' . $nomeLocal[$i] . '</h6></td>
                                                                    <td><h6> ' . $ramal[$i] . '</h6></td>
                                                                    <td><h6> ' . $localizacao[$i] . '</h6></td>
                                                                    <td><h6> ' . $statusImpressora[$i] . '</h6></td>
                                                                    <td><h6> ' . $modeloImpressora[$i] . '</h6></td>
                                                                <tr>';
                                                    }
                                            //}
                                                

                        $html3 =    '</tbody>        
                                </table>
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
	
    $html=$html1 . $html2 . $html3;
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
		"impressora.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		)
	);
?>