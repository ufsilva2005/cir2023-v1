<?php	
	session_start();
	$idConsulta = $_GET['id'];
	$idCrianca = $_GET['action'];
	
	//$idCrianca = $_SESSION['idCrianca'];

	//echo $idCrianca;
	//echo $idConsulta;
	

	include_once("conexao.php");	
	$html1 = ' <link rel="stylesheet" href="../css/bootstrap.min.css">
			<div >
				<table class="table table-bordered">
					<thead>
						<tr>
							<th style="width:10%">
								<img id="profile-img" class="profile-img-card" src="./img/logo2.jpg" />
							</th>
							<th style="width:90%">
								<h3 style="text-align: center">Missionários com Alegria <br></h3>
								<h6 style="text-align: center">Estrada de Inhoaiba, 900, Campo grande  - Rio de Janeiro, <br> CEP: 23063-010</h6>
							</th>							
						</tr>
					</thead>
				</table>
			</div>';

	$html2 = '<div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>
								<h5 style="text-align: center">Receituário Medico</h5>
							</th>
						</tr>
					</thead>
				</table>
			</div>';

	
	$resultCrianca = "SELECT * FROM criancas WHERE idCrianca = '$idCrianca'";
	$resultadoCrianca = mysqli_query($conn, $resultCrianca);
	while($row_transacoes = mysqli_fetch_assoc($resultadoCrianca))
		{		
			$nomeCrianca = $row_transacoes['nomeCrianca'];				
		}
	
		$html3 = '<div>
					<table>
						<thead>
							<tr>
								<th>
									<h5> Paciente: ' . $nomeCrianca . '</h5>
									<h5> Contato: </h5>									
								</th>
							</tr>
						</thead>
					</table>
				</div>';

									
		$html4 = ' <footer class="footer2">
						<div id="footer3">
							<table>
								<thead id="footer3">
									<tr>
										<th>
											<br><h8>_________________________________________<br></h8>
											<h8>Assinatura<br></h8>
											<h8>Helenice Ribeiro<br></h8>
											<h8>	CRM - 5269474-6<br></h8> 
										</th>
									</tr>
								</thead>
							</table>
						</div>
					</footer>';

	
		
	
	//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;

	// include autoloader
	require_once("dompdf/autoload.inc.php");

	//Criando a Instancia
	$dompdf = new DOMPDF();
	
	// Carrega seu HTML
	$dompdf->load_html('
			
			'. $html1 .'
			'. $html2 .'
			'. $html3 .'
			'. $html4 .'
		');

	// configurar papel 
	$dompdf->set_paper("A4", "portrail");
	
	//Renderizar o html
	$dompdf->render();

	//Exibibir a página
	$dompdf->stream(
		"relatorio_celke.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		)
	);

	
?>