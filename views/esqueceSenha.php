<?php
	include "../template/menuPrincipal.php";     
?>
        <hr><hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Recuperação Senhas</h3>																															
				<form  id="cadastro"  name="cadastro" class="form-horizontal" action="../controllers/esqueceSenha.php" method="POST">		
                    <div class="row">
                        <div class="col px-md-1 col-md-8">
                            <label for="inputSuccess" class="control-label">Nome:</label>
                            <input type="text" class="form-control" name="nomeFuncionario1" required>
                        </div>

                        <div class="col px-md-1 col-md-2">
                            <label for="inputSuccess" class="control-label">Login:</label>
                            <input type="text" class="form-control" name="login1" >
                        </div>

						<div class="col px-md-1 col-md-2">
                            <label for="inputSuccess" class="control-label">Senha:</label>
                            <input type="password" class="form-control" name="senha1">
                        </div>
                    </div>

					<hr>

                    <div id="actions" class="row">
						<div class="col-md-2">
							<button type="submit" class="btn btn-success">Salvar</button>
						</div>
						<div class="col-md-2">								
							<a  href="../index.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
						</div>	
					</div>	
                </form>
            </div>	
        </nav>	
    </body>
</html>