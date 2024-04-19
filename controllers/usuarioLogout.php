<?php
	session_destroy();
    session_unset();
    $vazio = "";
	//Limpa a sessao
	unset ($_SESSION['funcionarios']);
    unset ($_SESSION['cargos']);
    unset ($_SESSION['entMaterial']); 
    unset ($_SESSION['saiMaterial']);   
    unset ($_SESSION['relaMaterial']);   
    unset ($_SESSION['computador']);  
    unset ($_SESSION['impressora']); 
    unset ($_SESSION['nomeFuncionario']); 
    unset ($_SESSION['idFuncionario']);

    session_start();
    $_SESSION['funcionarios']= $vazio;
    $_SESSION['cargos']= $vazio;
    $_SESSION['entMaterial']= $vazio; 
    $_SESSION['saiMaterial']= $vazio;   
    $_SESSION['relaMaterial']= $vazio;   
    $_SESSION['computador']= $vazio;  
    $_SESSION['impressora']= $vazio; 
    $_SESSION['nomeFuncionario']= $vazio; 
    $_SESSION['idFuncionario']= $vazio;

	header("Location: ../index.php");
?>