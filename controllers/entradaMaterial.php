<?php
    session_start();
	include "../funcao/funcao.php";	
	include "../models/class-funcionarios.php";
    include "../models/class-tipoAcesso.php";
	include "../dao/DAO-controleCir.php";	

    $listaMaterial = $_POST['listaMaterial'];
    $codigoMat = $_POST['codigo'];
    $quantidadeMat = $_POST['quantidadeMat'];
    $_SESSION['nomeFuncionario'];
    $_SESSION['data']; 

    echo "<br>listaMaterial => " .  $listaMaterial;
    echo "<br>codigoMat => " .  $codigoMat;
    echo "<br>quantidadeMat => " .  $quantidadeMat;
    echo "<br>nomeFuncionario => " .   $_SESSION['nomeFuncionario'];
    echo "<br>data => " . $_SESSION['data'];

    
/*
    //VERIFICAR SE ALGUM DADO ESTÃO EM BRANCO
    if($nomeFuncionario == "" || $login == "" || $testaSenha == "")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO, LOGIN OU SENHA NÃO PODEM SER EM BRANCO');</script>";
            echo "<script>location = '../views/funcionarioCadastro.php';</script>";   
        }

      
    $tipoAcesso = new TipoAcesso($idAcesso, $gerenFuncionarios, $gerenCargos, $gerenEntMaterial, $gerenSaiMaterial, $gerenRelaMaterial, $gerenComputador, $gerenImpressora);
    //echo "<br><== tipoAcesso ==><br>";
    //$tipoAcesso->exibir();

    $tipoAcessoDAO = new ControleCirDAO();
	foreach ($tipoAcessoDAO->TipoAcessoPesquisa($gerenFuncionarios, $gerenCargos, $gerenEntMaterial, $gerenSaiMaterial, $gerenRelaMaterial, $gerenComputador, $gerenImpressora) as $resp)
        { 
            $idAcesso = $resp->idAcesso;	
        } 

    //echo "<br>idAcesso ==> " .  $idAcesso . "<br>";

    if($idAcesso == 0)
        {
            $tipoAcesso->exibir();
            $tipoAcessoDAO = new ControleCirDAO();
            $tipoAcessoDAO->TipoAcessoCadastrar($tipoAcesso); 
            $idAcesso = $_SESSION['idAcesso']; 
        }

    $funcionario = new Funcionario($idFuncionario, $nomeFuncionario, $statusFuncionario, $login, $senha, $dataCadastro, $dataAltCadastro, $idCargo, $idAcesso);
    //echo "<br><== funcionario ==><br>";
    //$funcionario->exibir();
    $funcionarioDAO = new ControleCirDAO(); 
    $funcionarioDAO->FuncionarioCadastrar($funcionario);

    echo "<script type='text/javascript'>alert('USUÁRIO CADASTRADO COM SUCESSO');</script>";
    echo "<script>location = '../views/funcionarioCadastro.php';</script>";   
    */
?>
