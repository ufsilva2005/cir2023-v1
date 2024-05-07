<?php
    //session_start();
    include('database.php');
    
	class ControleCirDAO 
		{	
            //INÍCIO DAS FUNÇÕES COMUNS AO SISTEMA
            public function VerificarLoginSenha($nomeTabela, $login) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE login = '$login' AND statusFuncionario = 'ativo'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                        
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }
          
            public function VerificarDados($nomeTabela, $idAcesso) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE idAcesso = '$idAcesso' ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                                          
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao' ";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;

                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcao2($nomeTabela, $tipoOpcao, $valorOpcao)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%' ";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcao3($nomeTabela, $tipoOpcao, $valorOpcao)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao'  ORDER BY dataAltera DESC";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;

                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcaoAtivo($nomeTabela, $tipoOpcao, $valorOpcao,  $status, $valorStatus)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%' AND  $status = '$valorStatus'";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%'
                    OR $tipoOpcao LIKE '$valorOpcao2%' AND  $status = '$valorStatus'";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function Verificar($nomeTabela, $opcao1, $valor1) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $opcao1 = '$valor1' ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }                                      
                   
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function ListarTudo($nomeTabela) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }                                      
                   
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES COMUNS AO SISTEMA   

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS CARGOS  
            public function BuscaCargo($idCargo, $idFuncionario) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');   
                    $sql = "SELECT * FROM funcionario f, cargo c 
                    WHERE f.idCargo = '$idCargo' 
                    AND  f.idFuncionario = '$idFuncionario'
                    AND  f.idCargo = c.idCargo";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES RELACIONADAS AOS CARGOS   
          
            //INÍCIO DAS FUNÇÕES RELACIONADAS AO TIPO DE ACESSO 
            public function TipoAcessoPesquisa($gerenFuncionarios, $gerenCargos, $gerenEntMaterial, $gerenSaiMaterial, $gerenRelaMaterial, $gerenComputador, $gerenImpressora)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM tipoAcesso
                    WHERE gerenFuncionarios = '$gerenFuncionarios'
                    AND gerenCargos = '$gerenCargos' 
                    AND gerenEntMaterial = '$gerenEntMaterial'
                    AND gerenSaiMaterial = '$gerenSaiMaterial'
                    AND gerenRelaMaterial = '$gerenRelaMaterial'
                    AND gerenComputador = '$gerenComputador'
                    AND gerenImpressora = '$gerenImpressora'";

                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);                            
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }            
                    
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function TipoAcessoCadastrar($tipoAcesso) 
                {
                    $conn = Database::connect();					
                    $conn->exec('SET CHARACTER SET utf8');
                    $prepara = $conn->prepare("INSERT INTO tipoAcesso (gerenFuncionarios, gerenCargos,  gerenEntMaterial, gerenSaiMaterial, 
                    gerenRelaMaterial, gerenComputador, gerenImpressora)
                    VALUES(:BdgerenFuncionarios, :BdgerenCargos, :BdgerenEntMaterial, :BdgerenSaiMaterial, :BdgerenRelaMaterial,
                     :BdgerenComputador, :BdgerenImpressora)");   

                    //$BdidAcesso    = $tipoAcesso ->getIdAcesso();
                    $BdgerenFuncionarios = $tipoAcesso ->getGerenFuncionarios();
                    $BdgerenCargos       = $tipoAcesso ->getGerenCargos();
                    $BdgerenEntMaterial  = $tipoAcesso ->getGerenEntMaterial();
                    $BdgerenSaiMaterial  = $tipoAcesso ->getGerenSaiMaterial();
                    $BdgerenRelaMaterial = $tipoAcesso ->getGerenRelaMaterial();
                    $BdgerenComputador   = $tipoAcesso ->getGerenComputador();  
                    $BdgerenImpressora   = $tipoAcesso ->getGerenImpressora();
                   

                    //$prepara->bindParam(":BdIdAcesso ",$BdIdAcesso);
                    $prepara->bindParam(":BdgerenFuncionarios",$BdgerenFuncionarios);
                    $prepara->bindParam(":BdgerenCargos",$BdgerenCargos);
                    $prepara->bindParam(":BdgerenEntMaterial",$BdgerenEntMaterial);
                    $prepara->bindParam(":BdgerenSaiMaterial",$BdgerenSaiMaterial);
                    $prepara->bindParam(":BdgerenRelaMaterial",$BdgerenRelaMaterial);
                    $prepara->bindParam(":BdgerenComputador",$BdgerenComputador);
                    $prepara->bindParam(":BdgerenImpressora",$BdgerenImpressora);
                    
                    
                    $prepara->execute();   
                    $idAcesso  = $conn->lastInsertId();
                    $_SESSION['idAcesso'] = $idAcesso ;      
                    $conn = null;
                }

            //FIM DAS FUNÇÕES RELACIONADAS AO TIPO DE ACESSO

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS FUNCIONÁRIOS
            public function FuncionarioCadastrar($funcionario) 
                {	
                    $conn = Database::connect();                        
                    $conn->exec('SET CHARACTER SET utf8');
                            
                    $prepara = $conn->prepare("INSERT INTO funcionario(nomeFuncionario, statusFuncionario, login, senha, dataCadastro, dataAltCadastro, idCargo, idAcesso)
                                                VALUES(:BdnomeFuncionario, :BdstatusFuncionario, :Bdlogin, :Bdsenha, :BddataCadastro, :BddataAltCadastro, :BdidCargo, :BdidAcesso)");
        
                    //$BdidFuncionario     = $funcionario->getIdFuncionario();
                    $BdnomeFuncionario   = $funcionario->getNomeFuncionario(); 
                    $BdstatusFuncionario = $funcionario->getStatusFuncionario();
                    $Bdlogin             = $funcionario->getLogin();
                    $Bdsenha             = $funcionario->getSenha();   
                    $BddataCadastro      = $funcionario->getDataCadastro();                    
                    $BddataAltCadastro   = $funcionario->getDataAltCadastro();                
                    $BdidCargo           = $funcionario->getIdCargo();
                    $BdidAcesso          = $funcionario->getIdAcesso();
                            
                    //$prepara->bindParam(":BdidFuncionario", $BdidFuncionario);
                    $prepara->bindParam(":BdnomeFuncionario", $BdnomeFuncionario);
                    $prepara->bindParam(":BdstatusFuncionario", $BdstatusFuncionario);  
                    $prepara->bindParam(":Bdlogin", $Bdlogin); 
                    $prepara->bindParam(":Bdsenha", $Bdsenha);                   
                    $prepara->bindParam(":BddataCadastro", $BddataCadastro);
                    $prepara->bindParam(":BddataAltCadastro", $BddataAltCadastro); 
                    $prepara->bindParam(":BdidCargo", $BdidCargo);            
                    $prepara->bindParam(":BdidAcesso", $BdidAcesso);
                        
                    $prepara->execute();
                
                    $conn = null;
                } 

            public function Verificarfunc($nomeFuncionario, $login) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM funcionario 
                    WHERE nomeFuncionario = '$nomeFuncionario' 
                    AND login = '$login'
                    AND statusFuncionario = 'ativo'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                                          
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            
            public function FuncionarioUpdate($idFuncionario, $senha)
                {
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "UPDATE funcionario SET senha = '$senha' WHERE idFuncionario = '$idFuncionario'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            //FIM DAS FUNÇÕES RELACIONADAS AOS FUNCIONÁRIOS
                
            //INÍCIO DAS FUNÇÕES RELACIONADAS AO LOCAL
            public function VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) 
                {					
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM setor s, divisao d
                    WHERE d.divisao = '$nomeDivisao'
                    AND d.idDivisao = s.idDivisao
                    AND s.nomeLocal = '$nomeLocal'
                    AND s.localizacao = '$localizacao'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);  
                            //$numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }     
                        
                    //session_start();
                    //$_SESSION['msg1'] = $RESPOSTA1;
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar; 
                    $conn = null;	
                }

            public function VerificarSetor2($divisaoBd,$localizacao,$nomeLocal) 
                {					
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM setor s, divisao d
                    WHERE d.idDivisao = '$divisaoBd'
                    AND d.idDivisao = s.idDivisao
                    AND s.nomeLocal = '$nomeLocal'
                    AND s.localizacao = '$localizacao'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);  
                            //$numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }     
                        
                    //session_start();
                    //$_SESSION['msg1'] = $RESPOSTA1;
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar; 
                    $conn = null;	
                }

            public function CadastrarSetor($local) 
                {	
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');                                
                    $prepara = $conn->prepare("INSERT INTO setor(idDivisao, localizacao, ramal, respSetor, nomeLocal) 
                    VALUES (:idDivisaoBd, :localizacaoBd,:ramalBd,:respSetorBd, :nomeLocalBd )");
                                
                    //$BdidSetor = $local->getIdSetor();
                    $BdidDivisao   = $local->getIdDivisao();
                    $Bdlocalizacao = $local->getLocalizacao();
                    $Bdramal	   = $local->getRamal();
                    $BdrespSetor   = $local->getRespSetor();
                    $BdnomeLocal   = $local->getNomeLocal();
                                
                    //$prepara->bindParam(":idSetorBd", $BdidSetor);
                    $prepara->bindParam(":idDivisaoBd", $BdidDivisao);
                    $prepara->bindParam(":localizacaoBd", $Bdlocalizacao);
                    $prepara->bindParam(":ramalBd", $Bdramal);
                    $prepara->bindParam(":respSetorBd",  $BdrespSetor);
                    $prepara->bindParam(":nomeLocalBd",  $BdnomeLocal);
                                
                    $prepara->execute();                                 
                    $localId = $conn->lastInsertId();    
                    $_SESSION['localid'] = $localId;
                    $conn = null;
                }

            public function Buscalocal($idSetor) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');                                
                    //$sql = "SELECT d.divisao, s.localizacao, s.nomeLocal FROM setor s, divisao d 
                    $sql = "SELECT * FROM setor s, divisao d 
                    WHERE s.idSetor = '$idSetor' 
                    AND s.idDivisao = d.idDivisao";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES RELACIONADAS AO LOCAL                      

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO COMPUTADOR
            public function CadastrarComp($computador) 
                {	
                    $conn = Database::connect();                
                    $conn->exec('SET CHARACTER SET utf8');                
                    $prepara = $conn->prepare("INSERT INTO computador (numCir, numPatrimonio, numPatReitoria, nomeComputador, 
                    dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, sistemaOpera, modelMaquina, memoria, numIp, numMac, 
                    tipoHD, nomeUsuario, statusComp,	obs, idFuncionario, idSetor, idTipoProcessador)
                    VALUES(:numCirBd, :numPatrimonioBd, :numPatReitoriaBd, :nomeComputadorBd, :dataCadastroBd, :respCadastroBd, 
                    :dataAltCadastroBd, :respAltCadastroBd, :sistemaOperaBd, :modelMaquinaBd, :memoriaBd, :numIpBd, :numMacBd,
                    :tipoHDBd, :nomeUsuarioBd, :statusCompBd, :obsBd, :idFuncionarioBd, :idSetorBd, :idTipoProcessadorBd)");
                    
                    //$BdidComputador		= $computador->getIdComputador();
                    $BdnumCir  			 = $computador->getNumCir();
                    $BdnumPatrimonio  	 = $computador->getNumPatrimonio();
                    $BdnumPatReitoria  	 = $computador->getNumPatReitoria();
                    $BdnomeComputador	 = $computador->getNomeComputador();
                    $BddataCadastro 	 = $computador->getDataCadastro();
                    $BdrespCadastro    	 = $computador->getRespCadastro();                    
                    $BddataAltCadastro   = $computador->getDataAltCadastro();  
                    $BdrespAltCadastro   = $computador->getRespAltCadastro();                  
                    $BdsistemaOpera  	 = $computador->getSistemaOpera();
                    $BdmodelMaquina  	 = $computador->getModelMaquina();
                    $Bdmemoria 			 = $computador->getMemoria();
                    $BdnumIp  			 = $computador->getNumIp();
                    $BdnumMac 			 = $computador->getNumMac();                   
                    $BdtipoHD  			 = $computador->getTipoHD();
                    $BdnomeUsuario  	 = $computador->getNomeUsuario();
                    $BdstatusComp 		 = $computador->getStatusComp();
                    $Bdobs  			 = $computador->getObs();
                    $BdidFuncionario 	 = $computador->getIdFuncionario();
                    $BdidSetor			 = $computador->getIdSetor();
                    $BdidTipoProcessador = $computador->getIdTipoProcessador();
                        
                    //$prepara->bindParam(":idComputadorBd",    $BdidComputador);
                    $prepara->bindParam(":numCirBd", $BdnumCir);
                    $prepara->bindParam(":numPatrimonioBd", $BdnumPatrimonio);
                    $prepara->bindParam(":numPatReitoriaBd", $BdnumPatReitoria);
                    $prepara->bindParam(":nomeComputadorBd", $BdnomeComputador);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);                    
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd", $BdrespAltCadastro);
                    $prepara->bindParam(":sistemaOperaBd", $BdsistemaOpera);
                    $prepara->bindParam(":modelMaquinaBd", $BdmodelMaquina);
                    $prepara->bindParam(":memoriaBd", $Bdmemoria);
                    $prepara->bindParam(":numIpBd", $BdnumIp);
                    $prepara->bindParam(":numMacBd", $BdnumMac);                   
                    $prepara->bindParam(":tipoHDBd", $BdtipoHD);
                    $prepara->bindParam(":nomeUsuarioBd", $BdnomeUsuario);
                    $prepara->bindParam(":statusCompBd", $BdstatusComp);
                    $prepara->bindParam(":obsBd", $Bdobs);
                    $prepara->bindParam(":idFuncionarioBd", $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd", $BdidSetor);
                    $prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador);

                    $prepara->execute();                        
                    $conn = null;
                }

            public function AtivaDesativaComp($idComputador,$statusComp)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE computador 
                    SET statusComp = '$statusComp'
                    WHERE idComputador = '$idComputador'";
					try 
						{
							$listar = $conn->query($sql);
							$buscar = $listar->fetchAll(PDO::FETCH_OBJ);
						} 
					catch (PDOException $exc)
						{
							$buscar = $exc->getTraceAsString();
						}
					return $buscar;
					$conn = null;	
				}  
                
            public function BuscaPorDivComp($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM divisao d, setor s, computador c 
                            WHERE d.divisao = '$valorPesquisa'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = c.idSetor";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function CadastrarTipoProce($modeloProce) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO tipoProcessadores(descricao, statusTipo) 
                    VALUES(:descricaoBd, :statusTipoBd)");
                        
                    //$BdidTipoProcessador = $modeloProce->getIdTipoProcessador();
                    $Bddescricao  = $modeloProce->getDescricao();
                    $BdstatusTipo = $modeloProce->getStatusTipo();  
                                        
                    //$prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador;
                    $prepara->bindParam(":descricaoBd",  $Bddescricao);
                    $prepara->bindParam(":statusTipoBd", $BdstatusTipo);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function ComputadorUpdateSetor($idComputador,$idSetor)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "UPDATE computador SET idSetor = '$idSetor' WHERE idComputador = '$idComputador'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            public function CoputadorUpdateDados($computador) 
                {	
                    $BdidComputador		 = $computador->getIdComputador();
                    $BdnumCir  			 = $computador->getNumCir();
                    $BdnumPatrimonio  	 = $computador->getNumPatrimonio();
                    $BdnumPatReitoria  	 = $computador->getNumPatReitoria();
                    $BdnomeComputador	 = $computador->getNomeComputador();
                    $BddataCadastro 	 = $computador->getDataCadastro();
                    $BdrespCadastro    	 = $computador->getRespCadastro();                    
                    $BddataAltCadastro   = $computador->getDataAltCadastro();  
                    $BdrespAltCadastro   = $computador->getRespAltCadastro();                  
                    $BdsistemaOpera  	 = $computador->getSistemaOpera();
                    $BdmodelMaquina  	 = $computador->getModelMaquina();
                    $Bdmemoria 			 = $computador->getMemoria();
                    $BdnumIp  			 = $computador->getNumIp();
                    $BdnumMac 			 = $computador->getNumMac();                   
                    $BdtipoHD  			 = $computador->getTipoHD();
                    $BdnomeUsuario  	 = $computador->getNomeUsuario();
                    $BdstatusComp 		 = $computador->getStatusComp();
                    $Bdobs  			 = $computador->getObs();
                    $BdidFuncionario 	 = $computador->getIdFuncionario();
                    $BdidSetor			 = $computador->getIdSetor();
                    $BdidTipoProcessador = $computador->getIdTipoProcessador();
                    
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("UPDATE computador SET  numCir=:BdnumCir, numPatrimonio=:BdnumPatrimonio, 
                    numPatReitoria=:BdnumPatReitoria, nomeComputador=:BdnomeComputador, dataCadastro=:BddataCadastro, 
                    respCadastro=:BdrespCadastro, dataAltCadastro=:BddataAltCadastro, respAltCadastro=:BdrespAltCadastro,
                    sistemaOpera=:BdsistemaOpera, modelMaquina=:BdmodelMaquina, memoria=:Bdmemoria, numIp=:BdnumIp, numMac=:BdnumMac, 
                    tipoHD=:BdtipoHD, nomeUsuario=:BdnomeUsuario, statusComp=:BdstatusComp, obs=:Bdobs, idFuncionario=:BdidFuncionario, 
                    idSetor=:BdidSetor, idTipoProcessador=:BdidTipoProcessador WHERE idComputador=:BdidComputador"); 
                   
                    $prepara->bindParam(":BdidComputador", $BdidComputador);
                    $prepara->bindParam(":BdnumCir", $BdnumCir);
                    $prepara->bindParam(":BdnumPatrimonio", $BdnumPatrimonio);
                    $prepara->bindParam(":BdnumPatReitoria", $BdnumPatReitoria);
                    $prepara->bindParam(":BdnomeComputador", $BdnomeComputador);
                    $prepara->bindParam(":BddataCadastro", $BddataCadastro);
                    $prepara->bindParam(":BdrespCadastro", $BdrespCadastro);
                    $prepara->bindParam(":BddataAltCadastro", $BddataAltCadastro);
                    $prepara->bindParam(":BdrespAltCadastro", $BdrespAltCadastro);
                    $prepara->bindParam(":BdsistemaOpera", $BdsistemaOpera);
                    $prepara->bindParam(":BdmodelMaquina", $BdmodelMaquina);
                    $prepara->bindParam(":Bdmemoria", $Bdmemoria);
                    $prepara->bindParam(":BdnumIp", $BdnumIp);
                    $prepara->bindParam(":BdnumMac", $BdnumMac); 
                    $prepara->bindParam(":BdtipoHD", $BdtipoHD);
                    $prepara->bindParam(":BdnomeUsuario", $BdnomeUsuario);
                    $prepara->bindParam(":BdstatusComp", $BdstatusComp);
                    $prepara->bindParam(":Bdobs", $Bdobs);
                    $prepara->bindParam(":BdidFuncionario", $BdidFuncionario);
                    $prepara->bindParam(":BdidSetor", $BdidSetor);
                    $prepara->bindParam(":BdidTipoProcessador", $BdidTipoProcessador);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function ComputadorUpdateHd($idComputador,$tipoHD)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "UPDATE computador SET tipoHD = '$tipoHD' WHERE idComputador = '$idComputador'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            public function PegarUltimoNum($nomeTabela)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "SELECT * FROM $nomeTabela ORDER BY numCir DESC LIMIT 1 ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES RELACIONADAS AO COMPUTADOR

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO NOTEBOOK
            public function CadastrarNotebook($notebook) 
                {	
                    $conn = Database::connect();                
                    $conn->exec('SET CHARACTER SET utf8');                
                    $prepara = $conn->prepare("INSERT INTO notebook (numCir, numPatrimonio, numPatReitoria, nomenotebook, 
                    dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, sistemaOpera, modelMaquina, memoria, numIp, numMac, 
                    tipoHD, nomeUsuario, statusComp,	obs, idFuncionario, idSetor, idTipoProcessador)
                    VALUES(:numCirBd, :numPatrimonioBd, :numPatReitoriaBd, :nomenotebookBd, :dataCadastroBd, :respCadastroBd, 
                    :dataAltCadastroBd, :respAltCadastroBd, :sistemaOperaBd, :modelMaquinaBd, :memoriaBd, :numIpBd, :numMacBd,
                    :tipoHDBd, :nomeUsuarioBd, :statusCompBd, :obsBd, :idFuncionarioBd, :idSetorBd, :idTipoProcessadorBd)");
                    
                    //$BdidNotebook		 = $notebook->getIdNotebook();
                    $BdnumCir  			 = $notebook->getNumCir();
                    $BdnumPatrimonio  	 = $notebook->getNumPatrimonio();
                    $BdnumPatReitoria  	 = $notebook->getNumPatReitoria();
                    $Bdnomenotebook	     = $notebook->getNomenotebook();
                    $BddataCadastro 	 = $notebook->getDataCadastro();
                    $BdrespCadastro    	 = $notebook->getRespCadastro();                    
                    $BddataAltCadastro   = $notebook->getDataAltCadastro();  
                    $BdrespAltCadastro   = $notebook->getRespAltCadastro();                  
                    $BdsistemaOpera  	 = $notebook->getSistemaOpera();
                    $BdmodelMaquina  	 = $notebook->getModelMaquina();
                    $Bdmemoria 			 = $notebook->getMemoria();
                    $BdnumIp  			 = $notebook->getNumIp();
                    $BdnumMac 			 = $notebook->getNumMac();                   
                    $BdtipoHD  			 = $notebook->getTipoHD();
                    $BdnomeUsuario  	 = $notebook->getNomeUsuario();
                    $BdstatusComp 		 = $notebook->getStatusComp();
                    $Bdobs  			 = $notebook->getObs();
                    $BdidFuncionario 	 = $notebook->getIdFuncionario();
                    $BdidSetor			 = $notebook->getIdSetor();
                    $BdidTipoProcessador = $notebook->getIdTipoProcessador();
                        
                    //$prepara->bindParam(":idNotebookBd",    $BdidNotebook);
                    $prepara->bindParam(":numCirBd", $BdnumCir);
                    $prepara->bindParam(":numPatrimonioBd", $BdnumPatrimonio);
                    $prepara->bindParam(":numPatReitoriaBd", $BdnumPatReitoria);
                    $prepara->bindParam(":nomenotebookBd", $Bdnomenotebook);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);                    
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd", $BdrespAltCadastro);
                    $prepara->bindParam(":sistemaOperaBd", $BdsistemaOpera);
                    $prepara->bindParam(":modelMaquinaBd", $BdmodelMaquina);
                    $prepara->bindParam(":memoriaBd", $Bdmemoria);
                    $prepara->bindParam(":numIpBd", $BdnumIp);
                    $prepara->bindParam(":numMacBd", $BdnumMac);                   
                    $prepara->bindParam(":tipoHDBd", $BdtipoHD);
                    $prepara->bindParam(":nomeUsuarioBd", $BdnomeUsuario);
                    $prepara->bindParam(":statusCompBd", $BdstatusComp);
                    $prepara->bindParam(":obsBd", $Bdobs);
                    $prepara->bindParam(":idFuncionarioBd", $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd", $BdidSetor);
                    $prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador);

                    $prepara->execute();                        
                    $conn = null;
                }

            public function AtivaDesativaNot($idNotebook,$statusComp)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE notebook 
                    SET statusComp = '$statusComp'
                    WHERE idNotebook = '$idNotebook'";
					try 
						{
							$listar = $conn->query($sql);
							$buscar = $listar->fetchAll(PDO::FETCH_OBJ);
						} 
					catch (PDOException $exc)
						{
							$buscar = $exc->getTraceAsString();
						}
					return $buscar;
					$conn = null;	
				}  
                
            public function BuscaPorDivNot($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM divisao d, setor s, notebook c 
                            WHERE d.divisao = '$valorPesquisa'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = c.idSetor";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            /*public function CadastrarTipoProce($modeloProce) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO tipoProcessadores(descricao, statusTipo) 
                    VALUES(:descricaoBd, :statusTipoBd)");
                        
                    //$BdidTipoProcessador = $modeloProce->getIdTipoProcessador();
                    $Bddescricao  = $modeloProce->getDescricao();
                    $BdstatusTipo = $modeloProce->getStatusTipo();  
                                        
                    //$prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador;
                    $prepara->bindParam(":descricaoBd",  $Bddescricao);
                    $prepara->bindParam(":statusTipoBd", $BdstatusTipo);

                    $prepara->execute();                 
                    $conn = null;
                }*/

            public function NotebookUpdateSetor($idNotebook,$idSetor)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "UPDATE notebook SET idSetor = '$idSetor' WHERE idNotebook = '$idNotebook'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            public function NotebookUpdateDados($notebook) 
                {	
                    $BdidNotebook		 = $notebook->getIdNotebook();
                    $BdnumCir  			 = $notebook->getNumCir();
                    $BdnumPatrimonio  	 = $notebook->getNumPatrimonio();
                    $BdnumPatReitoria  	 = $notebook->getNumPatReitoria();
                    $Bdnomenotebook	     = $notebook->getNomenotebook();
                    $BddataCadastro 	 = $notebook->getDataCadastro();
                    $BdrespCadastro    	 = $notebook->getRespCadastro();                    
                    $BddataAltCadastro   = $notebook->getDataAltCadastro();  
                    $BdrespAltCadastro   = $notebook->getRespAltCadastro();                  
                    $BdsistemaOpera  	 = $notebook->getSistemaOpera();
                    $BdmodelMaquina  	 = $notebook->getModelMaquina();
                    $Bdmemoria 			 = $notebook->getMemoria();
                    $BdnumIp  			 = $notebook->getNumIp();
                    $BdnumMac 			 = $notebook->getNumMac();                   
                    $BdtipoHD  			 = $notebook->getTipoHD();
                    $BdnomeUsuario  	 = $notebook->getNomeUsuario();
                    $BdstatusComp 		 = $notebook->getStatusComp();
                    $Bdobs  			 = $notebook->getObs();
                    $BdidFuncionario 	 = $notebook->getIdFuncionario();
                    $BdidSetor			 = $notebook->getIdSetor();
                    $BdidTipoProcessador = $notebook->getIdTipoProcessador();
                    
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("UPDATE notebook SET  numCir=:BdnumCir, numPatrimonio=:BdnumPatrimonio, 
                    numPatReitoria=:BdnumPatReitoria, nomenotebook=:Bdnomenotebook, dataCadastro=:BddataCadastro, 
                    respCadastro=:BdrespCadastro, dataAltCadastro=:BddataAltCadastro, respAltCadastro=:BdrespAltCadastro,
                    sistemaOpera=:BdsistemaOpera, modelMaquina=:BdmodelMaquina, memoria=:Bdmemoria, numIp=:BdnumIp, numMac=:BdnumMac, 
                    tipoHD=:BdtipoHD, nomeUsuario=:BdnomeUsuario, statusComp=:BdstatusComp, obs=:Bdobs, idFuncionario=:BdidFuncionario, 
                    idSetor=:BdidSetor, idTipoProcessador=:BdidTipoProcessador WHERE idNotebook=:BdidNotebook"); 
                   
                    $prepara->bindParam(":BdidNotebook", $BdidNotebook);
                    $prepara->bindParam(":BdnumCir", $BdnumCir);
                    $prepara->bindParam(":BdnumPatrimonio", $BdnumPatrimonio);
                    $prepara->bindParam(":BdnumPatReitoria", $BdnumPatReitoria);
                    $prepara->bindParam(":Bdnomenotebook", $Bdnomenotebook);
                    $prepara->bindParam(":BddataCadastro", $BddataCadastro);
                    $prepara->bindParam(":BdrespCadastro", $BdrespCadastro);
                    $prepara->bindParam(":BddataAltCadastro", $BddataAltCadastro);
                    $prepara->bindParam(":BdrespAltCadastro", $BdrespAltCadastro);
                    $prepara->bindParam(":BdsistemaOpera", $BdsistemaOpera);
                    $prepara->bindParam(":BdmodelMaquina", $BdmodelMaquina);
                    $prepara->bindParam(":Bdmemoria", $Bdmemoria);
                    $prepara->bindParam(":BdnumIp", $BdnumIp);
                    $prepara->bindParam(":BdnumMac", $BdnumMac); 
                    $prepara->bindParam(":BdtipoHD", $BdtipoHD);
                    $prepara->bindParam(":BdnomeUsuario", $BdnomeUsuario);
                    $prepara->bindParam(":BdstatusComp", $BdstatusComp);
                    $prepara->bindParam(":Bdobs", $Bdobs);
                    $prepara->bindParam(":BdidFuncionario", $BdidFuncionario);
                    $prepara->bindParam(":BdidSetor", $BdidSetor);
                    $prepara->bindParam(":BdidTipoProcessador", $BdidTipoProcessador);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function NotebookUpdateHd($idNotebook,$tipoHD)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "UPDATE notebook SET tipoHD = '$tipoHD' WHERE idNotebook = '$idNotebook'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            /*public function PegarUltimoNum($nomeTabela)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "SELECT * FROM $nomeTabela ORDER BY numCir DESC LIMIT 1 ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }*/
            //FIM DAS FUNÇÕES RELACIONADAS AO NOTEBOOK

            //INÍCIO DAS FUNÇÕES RELACIONADAS A IMPRESSORA 
            public function CadastrarImpre($impressora) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO impressoras(nomeImpressora, numSerie, ipImpressora, macImpressora, tipoToner, 
                    colorida, statusImpressora, conexaoImp, modeloImpressora, dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, 
                    obsImpressora, idFuncionario, idSetor) 
                    VALUES(:nomeImpressoraBd, :numSerieBd, :ipImpressoraBd, :macImpressoraBd, :tipoTonerBd, :coloridaBd, :statusImpressoraBd, 
                    :conexaoImpBd, :modeloImpressoraBd, :dataCadastroBd, :respCadastroBd, :dataAltCadastroBd, :respAltCadastroBd, 
                    :obsImpressoraBd, :idFuncionarioBd, :idSetorBd)");
                        
                    //$BdidImpressora		= $impressora->getIdImpressora();
                    $BdnomeImpressora  	= $impressora->getNomeImpressora();
                    $BdnumSerie	        = $impressora->getNumSerie();
                    $BdipImpressora  	= $impressora->getIpImpressora();
                    $BdmacImpressora    = $impressora->getMacImpressora();
                    $BdtipoToner        = $impressora->getTipoToner();
                    $Bdcolorida         = $impressora->getColorida();
                    $BdstatusImpressora = $impressora->getStatusImpressora();
                    $BdconexaoImp       = $impressora->getConexaoImp(); 
                    $BdmodeloImpressora = $impressora->getModeloImpressora();
                    $BddataCadastro 	= $impressora->getDataCadastro();
                    $BdrespCadastro 	= $impressora->getRespCadastro();
                    $BddataAltCadastro  = $impressora->getDataAltCadastro();
                    $BdrespAltCadastro 	= $impressora->getRespAltCadastro();
                    $BdobsImpressora  	= $impressora->getObsImpressora();
                    $BdidFuncionario	= $impressora->getIdFuncionario();
                    $BdidSetor 			= $impressora->getIdSetor();
                                        
                    //$prepara->bindParam(":idImpressoraBd", $BdidImpressora);
                    $prepara->bindParam(":nomeImpressoraBd", $BdnomeImpressora);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);
                    $prepara->bindParam(":ipImpressoraBd",  $BdipImpressora);
                    $prepara->bindParam(":macImpressoraBd", $BdmacImpressora);
                    $prepara->bindParam(":tipoTonerBd", $BdtipoToner);
                    $prepara->bindParam(":coloridaBd", $Bdcolorida);
                    $prepara->bindParam(":statusImpressoraBd", $BdstatusImpressora);
                    $prepara->bindParam(":conexaoImpBd", $BdconexaoImp);
                    $prepara->bindParam(":modeloImpressoraBd", $BdmodeloImpressora);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd",  $BdrespAltCadastro);
                    $prepara->bindParam(":obsImpressoraBd",  $BdobsImpressora); 
                    $prepara->bindParam(":idFuncionarioBd",  $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd",  $BdidSetor);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function BuscaModelo($idModelo, $idImpressora) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');  
                    $sql = "SELECT m.modeloImpressora FROM modeloImpressora m, impressoras i
                    WHERE i. idImpressora = $idImpressora
                    AND m.idModelo = '$idModelo' 
                    AND m.idModelo = i.modeloImpressora";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            public function IpressoraUpdateSetor($idImpressora,$idSetor)
                {
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "UPDATE impressoras SET idSetor = '$idSetor' WHERE idImpressora = '$idImpressora'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }

            public function UpdateImpre($impressora) 
                {	
                    $BdidImpressora		= $impressora->getIdImpressora();
                    $BdnomeImpressora  	= $impressora->getNomeImpressora();
                    $BdnumSerie	        = $impressora->getNumSerie();
                    $BdipImpressora  	= $impressora->getIpImpressora();
                    $BdmacImpressora    = $impressora->getMacImpressora();
                    $BdtipoToner        = $impressora->getTipoToner();
                    $Bdcolorida         = $impressora->getColorida();
                    $BdstatusImpressora = $impressora->getStatusImpressora();
                    $BdconexaoImp       = $impressora->getConexaoImp(); 
                    $BdmodeloImpressora = $impressora->getModeloImpressora();
                    $BddataCadastro 	= $impressora->getDataCadastro();
                    $BdrespCadastro 	= $impressora->getRespCadastro();
                    $BddataAltCadastro  = $impressora->getDataAltCadastro();
                    $BdrespAltCadastro 	= $impressora->getRespAltCadastro();
                    $BdobsImpressora  	= $impressora->getObsImpressora();
                    $BdidFuncionario	= $impressora->getIdFuncionario();
                    $BdidSetor 			= $impressora->getIdSetor();
                    
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("UPDATE impressoras SET nomeImpressora=:nomeImpressoraBd, numSerie=:numSerieBd,
                    ipImpressora=:ipImpressoraBd, macImpressora=:macImpressoraBd, tipoToner=:tipoTonerBd, colorida=:coloridaBd, statusImpressora=:statusImpressoraBd,
                    conexaoImp=:conexaoImpBd ,modeloImpressora=:modeloImpressoraBd, dataCadastro=:dataCadastroBd, respCadastro=:respCadastroBd, 
                    dataAltCadastro=:dataAltCadastroBd, respAltCadastro=:respAltCadastroBd, obsImpressora=:obsImpressoraBd, idFuncionario=:idFuncionarioBd,
                    idSetor=:idSetorBd WHERE idImpressora=:idImpressoraBd"); 
                   
                    $prepara->bindParam(":idImpressoraBd", $BdidImpressora);
                    $prepara->bindParam(":nomeImpressoraBd", $BdnomeImpressora);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);
                    $prepara->bindParam(":ipImpressoraBd",  $BdipImpressora);
                    $prepara->bindParam(":macImpressoraBd", $BdmacImpressora);
                    $prepara->bindParam(":tipoTonerBd", $BdtipoToner);
                    $prepara->bindParam(":coloridaBd", $Bdcolorida);
                    $prepara->bindParam(":statusImpressoraBd", $BdstatusImpressora);
                    $prepara->bindParam(":conexaoImpBd", $BdconexaoImp);
                    $prepara->bindParam(":modeloImpressoraBd", $BdmodeloImpressora);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd",  $BdrespAltCadastro);
                    $prepara->bindParam(":obsImpressoraBd",  $BdobsImpressora); 
                    $prepara->bindParam(":idFuncionarioBd",  $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd",  $BdidSetor);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function BuscaPorDivisao($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM divisao d, setor s, impressoras i 
                            WHERE d.divisao = '$valorPesquisa'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = i.idSetor";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function BuscaPorAndar($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM setor s, impressoras i 
                            WHERE s.localizacao = '$valorPesquisa'
                            AND i.idSetor = s.idSetor";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function AtivaDesativa($idImpressora,$statusImpressora)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE impressoras 
                    SET statusImpressora = '$statusImpressora'
                    WHERE idImpressora = '$idImpressora'";
					try 
						{
							$listar = $conn->query($sql);
							$buscar = $listar->fetchAll(PDO::FETCH_OBJ);
						} 
					catch (PDOException $exc)
						{
							$buscar = $exc->getTraceAsString();
						}
					return $buscar;
					$conn = null;	
				}   
                
            public function CadastrarModeloImp($modeloImp) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO modeloImpressora(statusModelo, modeloImpressora) 
                    VALUES(:statusModeloBd, :modeloImpressoraBd)");
                        
                    //$BdidModelo	    = $modeloImp->getIdModelo();
                    $BdstatusModelo  	= $modeloImp->getStatusModelo();                    
                    $BdmodeloImpressora = $modeloImp->getModeloImpressora();
                                        
                    //$prepara->bindParam(":idModeloBd", $BdidModelo);
                    $prepara->bindParam(":statusModeloBd", $BdstatusModelo);
                    $prepara->bindParam(":modeloImpressoraBd",  $BdmodeloImpressora);

                    $prepara->execute();                 
                    $conn = null;
                }
            //FIM DAS FUNÇÕES RELACIONADAS A IMPRESSORA 

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS MATERIAIS
             public function BuscarCodigo() 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM `material` WHERE codigo LIKE 'cir%' ORDER BY codigo DESC LIMIT 1 ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                        
                    return $buscar;
                    $conn = null;	
                }

            public function CadastrarMaterial($material) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO material(codigo, descricao, numSerie, unidade, quantidade, statusMat) 
                    VALUES(:codigoBd, :descricaoBd, :numSerieBd, :unidadeBd, :quantidadeBd, :statusMatBd)");
                        
                    //$Bdidmaterial	= $material->getIdmaterial();
                    $Bdcodigo  	  = $material->getCodigo();                    
                    $Bddescricao  = $material->getDescricao();
                    $BdnumSerie	  = $material->getNumSerie();
                    $Bdunidade    = $material->getUnidade();
                    $Bdquantidade = $material->getQuantidade();
                    $BdstatusMat  = $material->getStatusMat();
                                        
                    //$prepara->bindParam(":idmaterialBd", $Bdidmaterial);
                    $prepara->bindParam(":codigoBd", $Bdcodigo);
                    $prepara->bindParam(":descricaoBd",  $Bddescricao);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);                   
                    $prepara->bindParam(":unidadeBd", $Bdunidade);
                    $prepara->bindParam(":quantidadeBd", $Bdquantidade);
                    $prepara->bindParam(":statusMatBd", $BdstatusMat);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function CadastrarEntMaterial($entradaMat) 
                {	
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $prepara = $conn->prepare("INSERT INTO entraMaterial(dataEntrada, quantEntra, idMaterial, codigo, idFuncionario) 
                    VALUES(:dataEntradaBd, :quantEntraBd, :idMaterialBd, :codigoBd, :idFuncionarioBd)");
                        
                    //$BdidEntMat	= $entradaMat->getIdEntMat();                                     
                    $BddataEntrada   = $entradaMat->getDataEntrada();
                    $BdquantEntra	 = $entradaMat->getQuantEntra();
                    $BdidMaterial    = $entradaMat->getIdMaterial();
                    $Bdcodigo  	     = $entradaMat->getCodigo();  
                    $BdidFuncionario = $entradaMat->getIdFuncionario();
                                        
                    //$prepara->bindParam(":idEntMatBd", $BdidEntMat);
                    $prepara->bindParam(":dataEntradaBd",  $BddataEntrada);
                    $prepara->bindParam(":quantEntraBd", $BdquantEntra);                   
                    $prepara->bindParam(":idMaterialBd", $BdidMaterial);
                    $prepara->bindParam(":codigoBd", $Bdcodigo);
                    $prepara->bindParam(":idFuncionarioBd", $BdidFuncionario);

                    $prepara->execute();   
                    $idEntMat  = $conn->lastInsertId();
                    $_SESSION['idEntMat'] = $idEntMat ;                 
                    $conn = null;
                }

            public function UpdateMaterial($idMaterial,$quantidade)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE material 
                    SET quantidade = '$quantidade'
                    WHERE idMaterial = '$idMaterial'";
					try 
						{
							$listar = $conn->query($sql);
							$buscar = $listar->fetchAll(PDO::FETCH_OBJ);
						} 
					catch (PDOException $exc)
						{
							$buscar = $exc->getTraceAsString();
						}
					return $buscar;
					$conn = null;	
				}  
          
            public function CadastrarEnpresaMaterial($empresaMat) 
                {	
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $prepara = $conn->prepare("INSERT INTO empresaMaterial(nomeEmpresa, cnpj, numNota, numProcesso, numEmpenho, obs, idEntMat) 
                    VALUES(:nomeEmpresaBd, :cnpjBd, :numNotaBd, :numProcessoBd, :numEmpenhoBd, :obsBd, :idEntMatBd)");
                        
                    //$BdidEmpresa = $empresaMat->getIdEmpresa();                                     
                    $BdnomeEmpresa = $empresaMat->getNomeEmpresa();
                    $Bdcnpj	       = $empresaMat->getCnpj();
                    $BdnumNota     = $empresaMat->getNumNota();
                    $BdnumProcesso = $empresaMat->getNumProcesso();  
                    $BdnumEmpenho  = $empresaMat->getNumEmpenho();
                    $Bdobs         = $empresaMat->getObs();
                    $BdidEntMat	   = $empresaMat->getIdEntMat(); 
                                        
                    //$prepara->bindParam(":idEntMatBd", $BdidEntMat);
                    $prepara->bindParam(":nomeEmpresaBd",  $BdnomeEmpresa);
                    $prepara->bindParam(":cnpjBd", $Bdcnpj);                   
                    $prepara->bindParam(":numNotaBd", $BdnumNota);
                    $prepara->bindParam(":numProcessoBd", $BdnumProcesso);
                    $prepara->bindParam(":numEmpenhoBd", $BdnumEmpenho);
                    $prepara->bindParam(":obsBd", $Bdobs); 
                    $prepara->bindParam(":idEntMatBd", $BdidEntMat);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function RelatMatEmpresa($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE e.nomeEmpresa = '$valor'
                            AND e.idEntMat = t.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function RelatMatEmpCnpj($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE e.cnpj = '$valor'
                            AND e.idEntMat = t.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function RelatMatEmpNota($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE e.numNota = '$valor'
                            AND e.idEntMat = t.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function RelatMatNumEmpenho($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE e.numEmpenho = '$valor'
                            AND e.idEntMat = t.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function RelatMatNumProcesso($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE e.numProcesso = '$valor'
                            AND e.idEntMat = t.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function RelatMatDataEntra($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM empresaMaterial e, entraMaterial t, material m
                            WHERE t.dataEntrada = '$valor'
                            AND t.idEntMat = e.idEntMat
                            AND t.idMaterial = m.idMaterial
                            ORDER BY idEmpresa ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

              public function ListarTonner()  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM material 
                            WHERE descricao LIKE 'tonner%'
                            OR descricao LIKE 'CARTUCHO DE TINTA%' 
                            OR descricao LIKE 'pulseira%'
                            AND  statusMat = 'ativo'
                            ORDER BY idMaterial ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            //$numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //FIM DAS FUNÇÕES RELACIONADAS AOS MATERIAIS

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO HISTORICO
            public function HitoricoCadastrar($historico) 
                {
                    $conn = Database::connect();					
                    $conn->exec('SET CHARACTER SET utf8');
                    $prepara = $conn->prepare("INSERT INTO historico (nomeAlteracoes, dataAltera,  respAlteracoes, idComputador, 
                    idNotebook, idImpressora, idFuncionario)
                    VALUES(:BdnomeAlteracoes, :BddataAltera, :BdrespAlteracoes, :BdidComputador, :BdidNotebook, :BdidImpressora,:BdidFuncionario)");   

                    //$BdidHistorico    = $hitorico ->getIdHistorico();
                    $BdnomeAlteracoes = $historico ->getNomeAlteracoes();
                    $BddataAltera     = $historico ->getDataAltera();
                    $BdrespAlteracoes = $historico ->getRespAlteracoes();
                    $BdidComputador   = $historico ->getIdComputador();
                    $BdidNotebook     = $historico ->getIdNotebook();
                    $BdidImpressora   = $historico ->getIdImpressora();
                    $BdidFuncionario  = $historico ->getIdFuncionario();  
                   

                    //$prepara->bindParam(":BdIdHistorico ",$BdIdHistorico);
                    $prepara->bindParam(":BdnomeAlteracoes",$BdnomeAlteracoes);
                    $prepara->bindParam(":BddataAltera",$BddataAltera);
                    $prepara->bindParam(":BdrespAlteracoes",$BdrespAlteracoes);
                    $prepara->bindParam(":BdidComputador",$BdidComputador);
                    $prepara->bindParam(":BdidNotebook",$BdidNotebook);
                    $prepara->bindParam(":BdidImpressora",$BdidImpressora);
                    $prepara->bindParam(":BdidFuncionario",$BdidFuncionario);                    
                    
                    $prepara->execute();       
                    $conn = null;
                }
            //FIM DAS FUNÇÕES RELACIONADAS AO HISTORICO  
            
            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS RELATÓRIOS 
            //INICIO COMPUTADOR
            //busca por andar
            public function RelatAndar($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador c, setor s
                            WHERE s.localizacao = '$valor'
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
             
            //busca por divisao
            public function RelatDivisao($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador c, setor s, divisao d
                            WHERE d.idDivisao = '$valor'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por setor
            public function RelatSetor($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador c, setor s
                            WHERE s.idSetor = '$valor'
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir DESC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por status
            public function RelatStatus($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador 
                            WHERE statusComp = '$valor'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
                
            //busca por sistema
            public function RelatSistema($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador 
                            WHERE sistemaOpera = '$valor'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por data
            public function RelatData($dataInComp, $dataOutComp)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador 
                            WHERE dataCadastro BETWEEN '$dataInComp' AND '$dataOutComp'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por processador
            public function RelatProcessador($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM computador c, tipoProcessadores p
                    WHERE p.descricao LIKE '%$valor%'
                    AND p.idTipoProcessador = c.idTipoProcessador
                    ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //procura processador
            public function BuscaProc($idTipoProcessador) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');     
                    $sql = "SELECT * FROM tipoProcessadores
                    WHERE idTipoProcessador = '$idTipoProcessador'";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM COMPUTADOR
            //INICIO IMPRESSORA
            //busca por andar
            public function RelatAndarImp($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM impressoras i, setor s
                            WHERE s.localizacao = '$valor'
                            AND s.idSetor = i.idSetor
                            ORDER BY s.idDivisao ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //busca por divisão
            public function RelatDivisaoImp($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM impressoras i, setor s, divisao d
                            WHERE d.idDivisao = '$valor'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = i.idSetor
                            ORDER BY idImpressora ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //busca por setor
            public function RelatSetorImp($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM impressoras i, setor s
                            WHERE s.nomeLocal LIKE '$valor%'
                            AND s.idSetor = i.idSetor
                            ORDER BY idImpressora ASC";                           

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //busca por modelo
            public function RelatModeloImp($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM impressoras i, modeloImpressora m
                            WHERE m.idModelo = '$valor'
                            AND m.idModelo = i.modeloImpressora
                            ORDER BY idImpressora ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //procura modelo
            public function Buscamod($idModelo) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');     
                    $sql = "SELECT * FROM modeloImpressora
                    WHERE idModelo = '$idModelo'";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //busca por status
            public function RelatStatusImp($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM impressoras 
                            WHERE statusImpressora = '$valor'
                            ORDER BY idSetor ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //FIM IMPRESSORA

            //INICIO NOTEBOOK
            //busca por andar
            public function RelatNotAndar($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook c, setor s
                            WHERE s.localizacao = '$valor'
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
             
            //busca por divisao
            public function RelatNotDivisao($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook c, setor s, divisao d
                            WHERE d.idDivisao = '$valor'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por setor
            public function RelatNotSetor($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook c, setor s
                            WHERE s.idSetor = '$valor'
                            AND s.idSetor = c.idSetor
                            ORDER BY numCir DESC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por status
            public function RelatNotStatus($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook 
                            WHERE statusComp = '$valor'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
                
            //busca por sistema
            public function RelatNotSistema($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook 
                            WHERE sistemaOpera = '$valor'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por data
            public function RelatNotData($dataInComp, $dataOutComp)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook 
                            WHERE dataCadastro BETWEEN '$dataInComp' AND '$dataOutComp'
                            ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            //busca por processador
            public function RelatNotProcessador($valor)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM notebook c, tipoProcessadores p
                    WHERE p.descricao LIKE '%$valor%'
                    AND p.idTipoProcessador = c.idTipoProcessador
                    ORDER BY numCir ASC";

                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }
            //procura processador
            public function BuscaNotProc($idTipoProcessador) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');     
                    $sql = "SELECT * FROM tipoProcessadores
                    WHERE idTipoProcessador = '$idTipoProcessador'";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM NOTEBOOK
            
            //FIM DAS FUNÇÕES RELACIONADAS AOS RELATÓRIOS   
        }
?>