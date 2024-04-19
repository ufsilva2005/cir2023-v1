
                                <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Empresa</th>
                                            <th>cnpj</th>                                            
                                            <th>Nº Nota</th>
                                            <th>Nº Processo</th>
                                            <th>Nº Empenho</th>
                                            <th>Descrição</th>
                                            <th>Código</th>
                                            <th>Data de entrada</th>
                                            <th>Quantidade de Entrada</th>
                                            <th>Quantidade Total</th>
                                            <th>OPÇÃO</th> 
                                        </tr>
                                    </thead>  
                                    <tbody> 
                                        <?php
                                            require_once '../dao/DAO-controleCir.php';
                                            $matAltDAO = new ControleCirDAO();
                                            foreach($matAltDAO-> RelatMatEmpNota($_SESSION['valorPesquisa']) as $mat)                                             
                                                {?>													
													<tr>
														<td>
															<?php  
																echo $nomeEmpresa = $mat->nomeEmpresa;											
															?>
														</td>

														<td>
															<?php  
																echo $cnpj = $mat->cnpj;															
															?>
														</td>

														<td>
															<?php  
																echo $numNota = $mat->numNota;											
															?>
														</td>

														<td>
															<?php  
																echo $numProcesso = $mat->numProcesso;											
															?>
														</td>

														<td>
															<?php  
																echo $numEmpenho = $mat->numEmpenho;															
															?>
														</td>
														
                                                        <td>
															<?php  
																echo $descricao = $mat->descricao;											
															?>
														</td>

														<td>
															<?php  
																echo $codigo = $mat->codigo;											
															?>
														</td>

														<td>
															<?php  
																echo $dataEntrada = formatarData2($mat->dataEntrada);															
															?>
														</td>
                                                         
                                                        <td>
															<?php  
																echo $quantEntra = $mat->quantEntra;															
															?>
														</td>

                                                        <td>
															<?php  
																echo $quantidade = $mat->quantidade;															
															?>
														</td>
                                                        
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