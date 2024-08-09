<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['computador'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

	$inativo = 0;
	$ativo = 0;

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	



				<hr>
		
			<nav class="fixed  navbar navbar-dark">
				<div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">	  
						<table class="table table-striped table-bordered table-condensed">
							<thead>
								<tr>
									<th>ID</th>
                                    <th>Nº CIR</th>
									<th>Nome do Notebook</th>
									<th>Divisão</th>
									<th>Setor da Máquina</th>
									<th>Localização</th>
									<th>Status</th>
									<th>OPÇÃO</th>
								</tr>

							</thead>
							<tbody> 
								<?php
									//header('Content-Type: text/html; charset=utf-8');
									$nomeTabela = "notebook";								
									require_once '../dao/DAO-controleCir.php';
									$compAltDAO = new ControleCirDAO();
									foreach($compAltDAO-> ListarTudo($nomeTabela)  as $comp)
										{ ?>													
											<tr>
												<td>
													<?php  
														echo $idNotebook = $comp->idNotebook;											
													?>
												</td>

												<td>
													<?php  
														echo $numCir = $comp->numCir;															
													?>
												</td>
												<td><?php echo $comp->nomenotebook ?></td>	
												<td>
													<?php   $idSetor = $comp->idSetor; 
															$setorDAO = new ControleCirDAO();
															foreach($setorDAO->Buscalocal($idSetor) as $Setor)
																{ 	
																	$divisao1= $Setor->divisao;
																	$nomeLocal1 = $Setor->nomeLocal;
																	$localizacao1 = $Setor->localizacao;
																	echo $divisao1; 
																}
															
													?>
												</td>															
												<td><?php echo $nomeLocal1?></td>	
												<td><?php echo $localizacao1?></td>		
												<td><?php echo $statusComp = $comp->statusComp?></td>
												<td class='operations'>
                                                    <div class="btn-group pull-left" >
                                                        <a href="./notebookAlterar.php?action=1&id=<?php echo $comp->idNotebook;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                    	<a href="./historicoNot.php?action=1&id=<?php echo $comp->idNotebook; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="./notebookDetalhes.php?action=1&id=<?php echo $comp->idNotebook; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
														<?php                                    
                                                            if($statusComp != "ativo") 
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativarNot.php?action=1&id=$idNotebook' class='btn btn-small btn-success'>AT<i class='icon-remove'></i></a>";
                                                                    $inativo++;
																	echo $html;
                                                                }  
															else
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativarNot.php?action=2&id=$idNotebook' class='btn btn-small btn-danger'>DE<i class='icon-remove'></i></a>";
                                                                    $ativo++;
																	echo $html;
                                                                }                                    
                                                        ?>  
                                                    </div>
													<div class="btn-group pull-left">
                                                        <a href="../gerarPdf/notebookImprimirDados.php?action=1&id=<?php echo $comp->idNotebook; ?>" target="_blank" class="btn btn-small btn-ufs">P<i class="icon-remove"></i></a>
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>							
							</tbody>								
						</table>
					</div>
				</div>
			</nav>
	

		<div class="fixed-bottom p-1 px-md-5 col-md-12 bg-ufs text-black1">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total de Notebooks:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numUser'];?>" readonly >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Notebooks ativos:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" readonly>
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Notebooks desativados:</label>
					<input type="text" class="form-control" value="<?php echo $inativo;?>" readonly>
				</div>  
				<div class="col px-md-1 col-md-6"> 
					<label for="inputSuccess" class="control-label">Menu Opção:</label>
							<table class="table table-borderless">
								<thead>
									<tr>
										<th>
											<div class="btn-group pull-left" >
												<a class="btn btn-small btn-warning table-edit">Alterar<i class="icon-edit"></i></a>
											</div>
											
											<div class="btn-group pull-left">
												<a class="btn btn-primary">Historico<i class="icon-remove"></i></a>
											</div>
												
											<div class="btn-group pull-left">
												<a class="btn btn-info">Detalhes<i class="icon-remove"></i></a>
											</div>
												
											<div class="btn-group pull-left">
												<a class="btn btn-small btn-success">ATivar<i class="icon-remove"></i></a>
												<a class="btn btn-small btn-danger">DEstivar<i class="icon-remove"></i></a>
											</div>

											<div class="btn-group pull-left">
												<a class="btn btn-small btn-ufs">imPrimir<i class="icon-remove"></i></a>
											</div>
										</th>
									</tr>

								</thead>   
							</table>    
                           
                        
				</div>  				  
			</div>         
		</div>		
	</body>
</html>
