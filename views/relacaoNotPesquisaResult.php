<?php
    include "../template/menuPrincipal.php";
    include_once "../controllers/relacaoNotPesquisa.php";
    include "../funcao/funcao.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    $inativo = 0;
	$ativo = 0;
    $_SESSION['numRows'] = ""; 
    
    /*if($valorPesquisa == "" && $tipoPesquisa =="")
        {   
            $valorPesquisa = $_SESSION['valorP1'] ;  
   			$tipoPesquisa = $_SESSION['tipoP1'];   
        }

    $_SESSION['numUser'] = "";*/  
    //echo "<br>tipo => " . $_SESSION['tipoPesquisa'];
?>

        <hr>
        <nav class="fixed  navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
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
                                            <a class='nav-link' href="../gerarPdf/relatorioNotebook.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a>
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <?php
                    //echo "<br>Valor => " . $_SESSION['valorPesquisa'];
                    //echo "<br>Pesquisa => " . $_SESSION['tipoPesquisa'];

                    if ($_SESSION['tipoPesquisa'] == "andar") 
                        {
                            include "../template/realatAndarNot.php";
                        } 
                    elseif ($_SESSION['tipoPesquisa'] == "divisao")  
                        {
                            include "../template/relatDivisaoNot.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "setor")  
                        {
                            include "../template/relatSetorNot.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "status")  
                        {
                            include "../template/relatStatusNot.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "sistema")  
                        {
                            include "../template/relatSistemaNot.php";
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "data")  
                        {
                            include "../template/relatDataNot.php";                        
                        }
                    elseif ($_SESSION['tipoPesquisa'] == "processador")  
                        {
                            include "../template/relatProcessadorNot.php";                        
                        }
                    else
                        {
                            echo "<script type='text/javascript'>alert('OBS DADOS NÃO PODEM SE EM BRANCO');</script>";
                            echo "<script>location = './relacaoComputPesquisa.php';</script>";     
                        }
                    ?>
                </div>
            </div>
        </nav>

        <div class="fixed-bottom p-1 px-md-5 col-md-12 bg-primary text-white">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total de Computadores:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numRows'];?>" >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computadores ativos:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" >
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computadores desativados:</label>
					<input type="text" class="form-control" value="<?php echo $inativo;?>" >
				</div>    
			</div>         
		</div>		
    </body>
</html>