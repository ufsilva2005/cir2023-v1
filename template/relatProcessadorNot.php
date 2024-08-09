<?php
    $valor = $_SESSION['valorPesquisa'];
?>

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
                                            require_once '../dao/DAO-controleCir.php';
                                            $compAltDAO = new ControleCirDAO();
                                            foreach($compAltDAO->RelatNotProcessador($valor) as $comp)                                             
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
													<?php                                    
                                                        if($statusComp != "ativo") 
                                                            {
                                                                $inativo++;
                                                            }  
														else
                                                            {
                                                                $ativo++;
                                                            }                                    
                                                    ?>    
													<div class="btn-group pull-left">
                                                        <a href="../gerarPdf/relatorioNotebook.php?action=1&id=<?php echo $comp->idNotebook; ?>"  target="_blank"  class="btn btn-small btn-ufs">P<i class="icon-remove"></i></a>
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>					
                                    </tbody>                                        
                                </table> 