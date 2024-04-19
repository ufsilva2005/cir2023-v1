<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['funcionarios'] != "sim")
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
									<th>Nome do Funcionário</th>
									<th>Status</th>
									<th>Data do Cadastro</th>
									<th>Cargo</th>
									<th>tipo de acesso</th>
									<th>OPÇÃO</th>
								</tr>

							</thead>
							<tbody> 
								<?php
									//header('Content-Type: text/html; charset=utf-8');
									$nomeTabela = "funcionario";								
									require_once '../dao/DAO-controleCir.php';
									$funcAltDAO = new ControleCirDAO();
									foreach($funcAltDAO-> ListarTudo($nomeTabela)  as $func)
										{ ?>													
											<tr>
												<td><?php echo $idFuncionario = $func->idFuncionario;?></td>
												<td><?php echo $nomeFuncionario = $func->nomeFuncionario;?></td>
												<td><?php echo $func->statusFuncionario; ?></td>	
												<td><?php echo $func->dataCadastro; ?></td>	
												<?php $idAcesso = $func->idAcesso; ?>	
												<td>
													<?php   $idCargo = $func->idCargo; 
															$cargoDAO = new ControleCirDAO();
															foreach($cargoDAO->BuscaCargo($idCargo, $idFuncionario) as $cargo)
																{ 	
																	$nomeCargos= $cargo->nomeCargos;
																	echo $nomeCargos; 
																}
															
													?>
												</td>	

												<td><?php echo $idAcesso?></td>	

												<td class='operations'>
                                                    <div class="btn-group pull-left" >
                                                        <a href="../views/naoImplementada.php" class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                    	<a href="../views/naoImplementada.php" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="../views/naoImplementada.php" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
														<?php                                    
                                                            if($statusComp != "ativo") 
                                                                {
                                                                    $html = "<a href='../views/naoImplementada.php' class='btn btn-small btn-success'>I<i class='icon-remove'></i></a>";
                                                                    $inativo++;
																	echo $html;
                                                                }  
															else
                                                                {
                                                                    $html = "<a href='../views/naoImplementada.php' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>";
                                                                    $ativo++;
																	echo $html;
                                                                }                                    
                                                        ?>  
                                                    </div>
													<div class="btn-group pull-left">
                                                        <a href="../views/naoImplementada.php" target="_blank" class="btn btn-small btn-ufs">P<i class="icon-remove"></i></a>
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
					<label for="inputSuccess" class="control-label">Total de Computador:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numUser'];?>" readonly >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computador ativos:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" readonly>
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computador desativados:</label>
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
												<a class="btn btn-small btn-success">atIvar<i class="icon-remove"></i></a>
												<a class="btn btn-small btn-danger">destIvar<i class="icon-remove"></i></a>
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
