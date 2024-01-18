<?php
    session_start();
    include "../template/menuPrincipal.php";
    include "../controllers/relatMaterialPesquisa.php";
    include "../funcao/funcao.php";

    //if ($_SESSION['computador'] != "sim") {
        //echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        //echo "<script>location = '../template/menuPrincipal.php';</script>";
    //}

    //$inativo = 0;
	//$ativo = 0;
    //$_SESSION['numRows'] = ""; 
    /*if($valorPesquisa == "" && $tipoPesquisa =="")
        {   
            $valorPesquisa = $_SESSION['valorP1'] ;  
   			$tipoPesquisa = $_SESSION['tipoP1'];   
        }

    $_SESSION['numUser'] = "";*/   
     
    //echo "<br>"; echo "<br>"; echo "<br>"; echo "<br>"; echo "<br>";
    //echo "<br>tipo => " . $_SESSION['tipoPesquisa'] . " - " . $_SESSION['valorPesquisa'] ;
?>

        <hr>
        <nav  class="fixed  navbar navbar-dark">
            <div class="col-md-12 py-5 px-2">	
                    <i class="icon-tasks icon-blue"></i>
                    <h3 class="text-success"><?php echo "Resultado da Pesquisa por : " . converteMaiuscula($_SESSION['tipoPesquisa']); ?></h3>
                    <div class="panel-header">
                        <table class="table table-borderless">
                            <thead>
                                <tr>
                                    <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                    <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                    <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                    <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                    <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
                                        <div class="btn-group pull-left">
                                            <a class='nav-link' href="../gerarPdf/relatorioImpressora.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a>
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <?php
                    
                    if ($_SESSION['tipoPesquisa'] == "todos") 
                        {
                            include "../template/relatMatGeral.php";
                        } 
                    elseif ($_SESSION['tipoPesquisa'] == "codigo")  
                        {
                            include "../template/relatMatCodigo.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "descricao")  
                        {
                            include "../template/relatMatDescricao.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "nomeEmpresa")  
                        {
                            include "../template/relatMatEmpresa.php";
                        } 
                    /*elseif ($_SESSION['tipoPesquisa'] == "status")  
                        {
                            include "../template/relatStatusImp.php";
                        } */               
                    else
                        {
                            echo "<script type='text/javascript'>alert('NÃO FOI PSSÍVEL REALIZAR A PESQUISA');</script>";
                            echo "<script>location = './relatorioMaterias.php';</script>";     
                        }
                ?>
            </div>
        </nav>

        <div class="fixed-bottom p-1 px-md-5 col-md-12 bg-primary text-white">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total :</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numRows'];?>" >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label"> :</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" >
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label"> :</label>
					<input type="text" class="form-control" value="<?php echo $inativo;?>" >
				</div>    
			</div>         
		</div>		
    </body>
</html>