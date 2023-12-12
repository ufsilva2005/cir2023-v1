<?php
    session_start();
    include "../template/menuPrincipal.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
   
    include_once "../dao/DAO-controleCir.php";
    $action =  $_GET['action'];
    if($action != "")
    {$_SESSION['action']= $action;} 
    //echo "<br>"  . $action;
    //echo "<br>"  . $_SESSION['action'];
?>

<hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Computador</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <!--form name="cadastro" id="cadastro" method="post" action="./computadorCadastrar2.php"-->
                            <fieldset>	
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">1-> Informações do local do Computador</h5>
                                    </label>	
                                </div>
                                <div class="row">																						
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Divisão:</label>

                                        <?php
                                            $divisao0DAO = new ControleCirDAO();   
                                            $nomeTabela = "divisao";
                                            $tipoOpcao = "idDivisao";
                                            foreach ($divisao0DAO->ListarOpcao($nomeTabela, $tipoOpcao, $_SESSION['idDivisao']) as $res)
                                                {
                                                    $descricaoAnt = $res->divisao;
                                                }
                                        ?>

                                        <input type="text" class="form-control" value="<?= $descricaoAnt ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Localização:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['localizacao'] ?>" disabled>
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Ramal:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['ramalComp'] ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Setor:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['respSetor'] ?>" disabled>
                                    </div>
                                </div>
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Local do Computador:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeLocal'] ?>" disabled>
                                    </div>
                                                
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Observação:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['obs'] ?>" disabled>
                                    </div>
                                </div>

                                <hr>
                                            
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">2-> Informações Sobre o Computador </h5>
                                    </label>	
                                </div>	
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label" >Número da Cir:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['numCir'] ?>" disabled>
                                    </div>  
                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio Reitoria:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['numPatReitoria'] ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio HU:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['numPatrimonio'] ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Nome do Computador:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeComputador'] ?>" disabled>
                                    </div>												                                      
                                </div>		
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Sistema Operacional:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['sistemaOpera'] ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Modelo/Marca:</label>
                                       <input type="text" class="form-control" value="<?= $_SESSION['modelMaquina'] ?>" disabled>
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-5">
                                        <label for="inputSuccess" class="control-label">Tipo de Processador:</label>
                                        <?php
                                            $nomeTabela = "tipoProcessadores";
                                            $opcao1 = "idTipoProcessador";
                                            $processDAO = new ControleCirDAO();
                                            foreach($processDAO->Verificar($nomeTabela, $opcao1, $_SESSION['idTipoProcessador']) as $proc)
                                                { 	
                                                    $desProcessador = $proc->descricao;
                                                }
                                        ?>
                                        <input type="text" class="form-control" value="<?= $desProcessador ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Memória:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['memoria'] ?>" disabled>
                                    </div>
                                </div>
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número de IP:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['numIp'] ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número MAC:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['numMac'] ?>" disabled>
                                    </div>	

                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Nome Usuário:</label> <br>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeUsuario'] ?>" disabled>    
                                    </div>
                                </div>

                                <hr>
                                   


                                <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalToggleLabel">informações do HD</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">                
                                                <?php 
                                                    //session_start();
                                                    echo "<br>HD's na maquina => ";     
                                                    include_once "../dao/DAO-controleCir.php";
                                                    $teste = $_SESSION['antTipoHD']; 
                                                    $t = sizeof($teste);
                                                    $nomeTabela = "hdTipos";
                                                    $tipoOpcao = "id";                                 
                                                    for ($i = 0; $i < $t; $i++) 
                                                        {
                                                            $id = $teste[$i];
                                                            $tipoHDDAO = new ControleCirDAO();
                                                            foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                                                                { 
                                                                    $x = $i + 1;
                                                                    echo "&emsp; hd(" . $x .") =>" . $descricao = $resp->descricao;  
                                                                } 
                                                        }          
                                                   
                                                    echo "<hr>";
                                                    $capHd = $_SESSION['capHd'];
                                                    $capHd[$_SESSION['i']] = $_POST['capHd'];
                                                    $_SESSION['capHd'] = $capHd;
                                                ?>                      
                                                <form id="hd" class="form-horizontal" action="./computadorAlterar2.php" method="POST">
                                                    <div class="row">  
                                                        <div class="col px-md-1 col-md-12">                                   
                                                            <label for="inputSuccess" class="control-label">Selecione o HD:</label>
                                                            <select class="form-control" name="capHd" required>
                                                                <option value=""> </option>
                                                                <?php
                                                                    include_once "../dao/DAO-controleCir.php";
                                                                    $hdTiposDAO = new ControleCirDAO();
                                                                    $nomeTabela = "hdTipos";
                                                                    foreach ($hdTiposDAO->ListarTudo($nomeTabela) as $res) 
                                                                        {
                                                                            ?>
                                                                                <option value="<?php echo $res->id; ?>"> <?php echo $res->descricao; ?> </option>
                                                                            <?php
                                                                        }
                                                                ?>
                                                            </select>
                                                        </div>
                                                                                
                                                        <div class="row ">
                                                            <div class="col px-8 py-2 col-md-8">   
                                                                <label for="inputSuccess" class="control-label"></label>                              
                                                                <button type="submit" class="btn btn-ufs">ok</button>                                                                                                           
                                                            </div> 
                                                            
                                                            <div class='col px-md-1 col-md-4'>   
                                                                <div class="modal-footer">
                                                                    <button class="btn btn-small btn-warning" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal" data-bs-dismiss="modal">Terminar</button>
                                                                </div>
                                                            </div>
                                                        </div>                                        
                                                    </div>  
                                                </form>  
                                                <?php 
                                                    $_SESSION['i'] = $_SESSION['i']+1;
                                                ?>   
                                            </div>            
                                        </div>
                                    </div>
                                </div>

                                <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalToggleLabel2">Informações do HD</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <?php 
                                                    //session_start();   
                                                    $capHd1 = $_SESSION['capHd'];
                                                    $_SESSION['capHd1'] = $capHd1;
                                                    if($_SESSION['action'] == 1)
                                                        {
                                                            //echo "<br> valor de post capHd => ";
                                                            //print_r($_SESSION['capHd']);
                                                            //echo "<br> valor antTipoHD => ";
                                                            //print_r($_SESSION['antTipoHD']);
                                                            array_shift($capHd1);
                                                            //echo "<br>capHd1 => ";
                                                            //print_r( $capHd1);
                                                            $capHd1 = array_merge($_SESSION['antTipoHD'],$capHd1); 
                                                            //echo "<br>result => ";
                                                            //print_r($capHd1);
                                                        }
                                                    else
                                                        {
                                                            array_shift($capHd1);
                                                            //echo "<br> antigo hd 7 => ";
                                                            //print_r( $capHd1);
                                                            //echo "<br> valor de i => ";
                                                            //print_r( $_SESSION['i']);
                                                        }

                                                    //print_r($capHd1);                                                     
                                                    include_once "../dao/DAO-controleCir.php";
                                                    $_SESSION['capHdBd'] = $capHd1;
                                                    $t = sizeof($capHd1);
                                                    //echo "<br> valor T => " . $t . "<br>";
                                                    for ($i = 0; $i < $t; $i++) 
                                                        {
                                                            $id = $capHd1[$i];
                                                            $nomeTabela = "hdTipos";
                                                            $tipoOpcao = 'id';                                                            
                                                            $hd1DAO = new ControleCirDAO();
                                                            foreach ($hd1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)   as $resp)
                                                                { 
                                                                    echo $tipoHdBd = $resp->descricao . '&emsp;' . '--' . '&emsp;';  
                                                                }
                                                        }
                                                ?>                   
                                            </div>
                                            <div class="modal-footer">
                                                <a class='btn btn-small btn-warning' type='submit' href="../controllers/computadorAltHd.php">salvar</a>  
                                                <button class="btn btn-primary" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" data-bs-dismiss="modal">Inserir outro HD</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                                <hr>
                                    
                                <div class="row">	
                                    <label>
                                        <h5 class="text-primary">3-> Informações do responsavel pelo cadastro</h5>
                                    </label>	
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                        <input type="text" class="form-control" value="<?php $date = date('d/m/Y'); echo $date; $_SESSION['data'] = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-10">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
                                    </div>
                                </div> 

                                <hr>
                                                
                                <div id="actions" class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary">Salvar</button>
                                        <button class="btn" type="reset">Cancelar</button>													
                                    </div>
                                                    
                                    <div class="col px-md-1 col-md-12" id="MostraPesq">	</div>
                                    <div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>					
                                </div>                                           
                            </fieldset>
                        <!--/form-->  
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE COMPUTADORES</a></p>
                    </footer>
                </div>
            </div>
        </nav>
        <?php
        $i = 0;
			if($i == 0){ ?>
				<script>
					$(document).ready(function(){
						$('#exampleModalToggle').modal('show');
					});
				</script>
			<?php } ?>
    </body>
</html>