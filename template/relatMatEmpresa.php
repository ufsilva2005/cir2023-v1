<?php   
    $valor = $_SESSION['valorPesquisa'];
	echo "<br>Valor => " . $_SESSION['valorPesquisa'];
    echo "<br>Pesquisa => " . $_SESSION['tipoPesquisa'];
?>

                                <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Empresa</th>
                                            <th>cnpj</th>                                            
                                            <th>numNota</th>
                                            <th>numProcesso</th>
                                            <th>numEmpenho</th>
                                            <th>Descrição</th>
                                            <th>Código</th>
                                            <th>Data de entrada</th>
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
                                            foreach($matAltDAO-> ListarOpcao2($nomeTabela, $_SESSION['tipoPesquisa'], $_SESSION['valorPesquisa'])    as $mat)                                             
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