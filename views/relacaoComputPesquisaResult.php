<?php
    include "../template/menuPrincipal.php";
    include_once "../controllers/relacaoComputPesquisa.php";
    include "../funcao/funcao.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
    /*if($valorPesquisa == "" && $tipoPesquisa =="")
        {   
            $valorPesquisa = $_SESSION['valorP1'] ;  
   			$tipoPesquisa = $_SESSION['tipoP1'];   
        }

    $_SESSION['numUser'] = "";*/  
    //echo "<br>tipo => " . $_SESSION['tipoPesquisa'];
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
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
                                        <a class='nav-link' href="../gerarPdf/relatorioComputador.php"  target="_blank"> <button type='button'  class="btn btn-small btn-ufs" >Imprimir</button> </a>
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
                        include "../template/realatAndarComp.php";
                    } 
                elseif ($_SESSION['tipoPesquisa'] == "divisao")  
                    {
                        include "../template/relatDivisaoComp.php";
                    }
                elseif ($_SESSION['tipoPesquisa'] == "setor")  
                    {
                        include "../template/relatSetorComp.php";
                    }
                elseif ($_SESSION['tipoPesquisa'] == "status")  
                    {
                        include "../template/relatStatusComp.php";
                    }
                elseif ($_SESSION['tipoPesquisa'] == "sistema")  
                    {
                        include "../template/relatSistemaComp.php";
                    }
                elseif ($_SESSION['tipoPesquisa'] == "data")  
                    {
                        include "../template/relatDataComp.php";                        
                    }
                elseif ($_SESSION['tipoPesquisa'] == "processador")  
                    {
                        include "../template/relatProcessadorComp.php";                        
                    }
                 else
                    {
                        echo "<script type='text/javascript'>alert('OBS DADOS NÃO PODEM SE EM BRANCO');</script>";
                        echo "<script>location = './relacaoComputPesquisa.php';</script>";     
                    }
                ?>

            </div>
        </nav>
        <div class="fixed-bottom p-3 mb-2 bg-primary text-white">
            <div class="col px-md-1 col-md-2">
                <label for="inputSuccess" class="control-label">Total de Computadores:</label>
                <input type="text" class="form-control" value="<?php echo $_SESSION['numRows']; ?>">
            </div>
        </div>
    </body>
</html>