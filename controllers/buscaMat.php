<?php
    include('../dao/conexao.php');
    $idMaterial = $_GET['listaMaterial'];

    //echo "<br>Código => " . $idMaterial;

	//Criar a conexão
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

    $resultCodigo = "SELECT * FROM material WHERE idMaterial = '$idMaterial'";
	$resultadoCodigo = mysqli_query($conn, $resultCodigo);
	if($resultadoCodigo->num_rows)
		{
			$rowCap = mysqli_fetch_assoc($resultadoCodigo);
			$valores['codigo'] = $rowCap['codigo'];
		}
        
    $codigo = $valores['codigo']; 
    echo $codigo;
?>