                              	<table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Código</th>
                                            <th>Descrição</th>
                                            <th>Unidade</th>
                                            <th>Quantidade</th>
                                            <th>OPÇÃO</th> 
                                        </tr>
                                    </thead>  
                                    <tbody> 
                                        <?php
                                            require_once '../dao/DAO-controleCir.php';
											$nomeTabela = "material";
                                            $matAltDAO = new ControleCirDAO();
                                            foreach($matAltDAO->ListarTudo($nomeTabela)  as $mat)                                             
                                                {?>													
													<tr>
														<td>
															<?php  
																echo $idMaterial = $mat->idMaterial;											
															?>
														</td>

														<td>
															<?php  
																echo $codigo = $mat->codigo;															
															?>
														</td>

														<td>
															<?php  
																echo $descricao = $mat->descricao;											
															?>
														</td>

														<td>
															<?php  
																echo $unidade = $mat->unidade;											
															?>
														</td>

														<td>
															<?php  
																echo $quantidade = $mat->quantidade;															
															?>
														</td>
														
														<td class='operations'> 															
															<div class="btn-group pull-left">
															<a class='nav-link' href="../gerarPdf/.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a> 
															</div>
														</td>			
													<tr>									
												<?php 
										} ?>					
                                    </tbody>                                        
                                </table> 