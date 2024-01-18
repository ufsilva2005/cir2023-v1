<?php
    session_start();	
  	require_once "../dao/DAO-controleCir.php";
	include "../models/class-material.php";	
	include "../funcao/funcao.php";
    $numSerie = 0;
    $unidade = 0;
    $quantidade = 0;
    $statusMat = "ativo";
 
   	//impressora
    $codigoImp = $_POST['codigoImp'];
	$descImp = converteMaiuscula(filter_input(INPUT_POST, 'descImp'));
    $unidadeImp = converteMaiuscula(filter_input(INPUT_POST, 'unidadeImp'));

    //computador
    $codigoComp = converteMaiuscula(filter_input(INPUT_POST, 'codigoComp'));	
	$descComp = converteMaiuscula(filter_input(INPUT_POST, 'descComp'));
    $unidadeComp = converteMaiuscula(filter_input(INPUT_POST, 'unidadeComp'));	

    //verifiocar se material existe
    if($descImp == "" && $codigoComp =="" && $descComp == "" )
        {
            echo "<script type='text/javascript'>alert('DADOS NÃO PODEM SER EM BRANCO');</script>";
            echo "<script>location = '../views/materialCadastrar.php';</script>";   
        }

    else if($descImp != "" && $codigoComp =="" && $descComp == "" )
        {
            //VERIFICAR SE DESCRIÇÃO EXISTE
            require_once('../dao/conexao.class.php');
            try {
                    $pdo = new Conexao(); 
                    $resultado = $pdo->select("SELECT * FROM material WHERE descricao = '$descImp'");
                    $pdo->desconectar();
                                        
                }
            catch (PDOException $e)
                {
                    echo $e->getMessage();
                }
           
            if(!empty($resultado))
                {
                    echo "<script type='text/javascript'>alert('ESTE MATERIAL JÁ ESTA CADASTRADO');</script>";
                    echo "<script>location = '../views/materialCadastrar.php';</script>"; 
                }
            else
                {
                    //cadastrar material
                    $unidade = $unidadeImp;
                    $material = new Material($idMaterial, $codigoImp, $descImp, $numSerie, $unidade, $quantidade, $statusMat);
                    //echo "<br>dados material <br>";		
                    //$material->exibir();
                    //echo "<br>";
                    $materialDAO = new ControleCirDAO();
                    $materialDAO->CadastrarMaterial($material);
                    echo "<script type='text/javascript'>alert('MATERIAL CADASTRADO');</script>";
                    echo "<script>location = '../views/materialCadastrar.php';</script>"; 
                }
        }

    else if($descImp == "" && $codigoComp !="" && $descComp != "" )
        {
            //cadastrar material
                    $unidade = $unidadeComp;
                    $material = new Material($idMaterial, $codigoComp, $descComp, $numSerie, $unidade, $quantidade, $statusMat);
                    //echo "<br>dados material <br>";		
                    //$material->exibir();
                    //echo "<br>";
                    $materialDAO = new ControleCirDAO();
                    $materialDAO->CadastrarMaterial($material);
                    echo "<script type='text/javascript'>alert('MATERIAL CADASTRADO');</script>";
                    echo "<script>location = '../views/materialCadastrar.php';</script>"; 
        }

    else
        {
            echo "<script type='text/javascript'>alert('DADOS DE MATERIAL DE COMPUTADOR INCORRETOS');</script>";
            echo "<script>location = '../views/materialCadastrar.php';</script>"; 
        }
	?>