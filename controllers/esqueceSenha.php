<?php
    session_start();
	include "../funcao/funcao.php";		
	include "../dao/DAO-controleCir.php";	

    $idAcesso = 0;
    $idFuncionario = 0;
    $nomeFuncionario = converteMaiuscula($_POST['nomeFuncionario1']);
    $login = $_POST['login1'];
    $testaSenha = $_POST['senha1'];
    $senha = criptoSenha($_POST['senha1']);
   
    //VERIFICAR SE ALGUM DADO ESTÃO EM BRANCO
    if($nomeFuncionario == "" || $login == "" || $testaSenha == "")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO, LOGIN OU SENHA NÃO PODEM SER EM BRANCO');</script>";
            echo "<script>location = '../views/funcionarioCadastro.php';</script>";   
        }

    //VERIFICAR SE FUNCIONARIO EXISTE
    $funcExisteDAO = new ControleCirDAO();
			foreach ($funcExisteDAO->Verificarfunc($nomeFuncionario,$login) as $resp)
				{ 
					$verificafunc = $resp->idFuncionario;				          
				}
    if ($verificafunc == 0)
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO POSSUI CADASTRO OU ESTA INATIVO, PROCURE O ADMINISTRADOR DO SISTEMA');</script>";
            echo "<script>location = '../controllers/usuarioLogout.php';</script>";   
        }
    
    else
        {
            $funcionarioDAO = new ControleCirDAO();
            $funcionarioDAO->FuncionarioUpdate($verificafunc, $senha);
            echo "<script type='text/javascript'>alert('SUA SENHA FOI ALTERADA');</script>";
            echo "<script>location = '../index.php';</script>";   
        }
?>
