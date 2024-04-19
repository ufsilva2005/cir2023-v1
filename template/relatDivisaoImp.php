<?php   
    $valor = $_SESSION['valorPesquisa'];
?>

                                <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nº de Série</th>
                                            <th>Nome da Impressora</th>
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
                                            $impAltDAO = new ControleCirDAO();
                                            foreach($impAltDAO->RelatDivisaoImp($valor) as $imp)                                             
                                                { ?>													
											<tr>
												<td>
													<?php  
														echo $idImpressora = $imp->idImpressora;											
													?>
												</td>

												<td>
													<?php  
														echo $numSerie = $imp->numSerie;															
													?>
												</td>
												<td><?php echo $imp->nomeImpressora ?></td>	
												<td>
													<?php   $idSetor = $imp->idSetor; 
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
												<td><?php echo $statusImpressora = $imp->statusImpressora?></td>
												<td class='operations'> 
													<?php                                    
                                                        if($statusImpressora != "ativo") 
                                                            {
                                                                $inativo++;
                                                            }  
														else
                                                            {
                                                                $ativo++;
                                                            }                                    
                                                    ?>    
													<div class="btn-group pull-left">
                                                       <a class='nav-link' href="../gerarPdf/relatorioImpressora.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a> 
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>					
                                    </tbody>                                        
                                </table> 