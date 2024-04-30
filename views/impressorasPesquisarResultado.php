<?php
    include "../template/menuPrincipal.php";
    include_once "../controllers/impressoraPesquisa.php";

    if ($_SESSION['impressora'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
    if($valorPesquisa == "" && $tipoPesquisa =="")
        {   
            $valorPesquisa = $_SESSION['valorP1'] ;  
   			$tipoPesquisa = $_SESSION['tipoP1'];   
        }

    $_SESSION['numUser'] = "";
    //echo "<br><br>";
    //echo "<br>valorPesquisa => " . $valorPesquisa;  
    //echo "<br>tipoPesquisa => " . $tipoPesquisa;  
    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>

            <hr>
            <nav class="navbar navbar-dark">
                <div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">
                        <i class="icon-tasks icon-blue"></i>
                        <h3 class="text-success">Resultado da Pesquisa:</h3>
                        <?php
                        if ($tipoPesquisa == "divisao") 
                            {
                                include "../template/exibirPesquisa2.php";
                            }                         
                        else 
                            {                                
                                if($tipoPesquisa == "andarImpressora") 
                                    {
                                       include "../template/exibirPesquisa3.php";
                                    }
                                else
                                    {
                                        include "../template/exibirPesquisa1.php";
                                    }                                    
                            }
                        ?>
                    </div>
                </div>
            </nav>
            
            <div class="fixed-bottom p-1 px-md-5 col-md-12 bg-ufs text-black1">
                <div class="row">
                    <div class="col px-md-1 col-md-2"> 
                        <label for="inputSuccess" class="control-label">Total de Impressoras:</label>
                        <input type="text" class="form-control" value="<?php echo $_SESSION['numRows'];?>" readonly >
                    </div>   
                    <div class="col px-md-1 col-md-2"> 
                        <label for="inputSuccess" class="control-label">Impressoras ativas:</label>
                        <input type="text" class="form-control" value="<?php echo $ativo;?>" readonly>
                    </div>        
                    <div class="col px-md-1 col-md-2"> 
                        <label for="inputSuccess" class="control-label">Impressoras desativadas:</label>
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
                                            <a class="btn btn-small btn-danger">DEstIvar<i class="icon-remove"></i></a>
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
		</div>
    </body>
</html>