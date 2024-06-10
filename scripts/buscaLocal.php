<?php
    $db_host="localhost";
    $db_port="3306";
    $db_name="controleCir";
    $db_user="cpd";
    $db_password="billg3";

    $dbcon = mysqli_connect( $db_host, $db_user, $db_password );
    mysqli_select_db($dbcon,$db_name);
    mysqli_query($dbcon,"SET NAMES 'utf8'");

    $nome = mysqli_real_escape_string($dbcon,$_POST["nome"]);
    $divisao = mysqli_real_escape_string($dbcon,$_POST["divisao"]);


    // se enviar nome vazio, não carregar nada
    if(trim($nome)==''){ die(); }

    /*$query = "SELECT * FROM setor WHERE nomeLocal LIKE '%$nome%' ORDER BY nomeLocal ASC";*/
    $query = "SELECT * FROM setor s, divisao d
                WHERE d.divisao = '$divisao'
                AND d.idDivisao = s.idDivisao
                AND s.nomeLocal LIKE '%$nome%' 
                ORDER BY s.nomeLocal ASC";

    $result = mysqli_query($dbcon,$query);

    $options='';

    while($linha = mysqli_fetch_assoc($result))
        {
            $options.='<option value="'.$linha["idSetor"].'">'.$linha["nomeLocal"].'</option>';
        }

    echo $options;  // isto voltará na variável data do ajax
?>