<?php   
    $valor = $_SESSION['valorPesquisa'];
?>

                                <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nº CIR</th>
                                            <th>Nome do Computador</th>
                                            <th>Divisão</th>
                                            <th>Setor da Máquina</th>
                                            <th>Localização</th>
                                            <th>Status</th>
                                            <th>OPÇÃO</th> 
                                        </tr>
                                    </thead>  
                                    <tbody> 
                                        <?php
                                            require_once '../dao/DAO-controleCir.php';
                                            $compAltDAO = new ControleCirDAO();
                                            foreach($compAltDAO->RelatAndar($valor) as $comp)                                             
                                                { ?>													
											<tr>
												<td>
													<?php  
														echo $idComputador = $comp->idComputador;											
													?>
												</td>

												<td>
													<?php  
														echo $numCir = $comp->numCir;															
													?>
												</td>
												<td><?php echo $comp->nomeComputador ?></td>	
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
													<div class="btn-group pull-left">
                                                       <a class='nav-link' href="../gerarPdf/relatorioComputador.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a> 
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>					
                                    </tbody>                                        
                                </table> 