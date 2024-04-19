<?php
	class EntMaterial
		{
			private $idEntMat;
            private $dataEntrada;
            private $quantEntra;
            private $idMaterial;
			private $codigo;			
			private $idFuncionario;			
			
			// Recebe  parametros 
			public function __construct ($idEntMat = "", $dataEntrada = null, $quantEntra = null, $idMaterial = null, $codigo = null, $idFuncionario = null) 
			
				{
					$this->idEntMat      = $idEntMat;
                    $this->dataEntrada   = $dataEntrada;
                    $this->quantEntra    = $quantEntra;
                    $this->idMaterial    = $idMaterial;
					$this->codigo	     = $codigo;					
					$this->idFuncionario = $idFuncionario;
				}
				
			///metodos get e metodos set
			//ID DO MATERIAL
			public function getIdEntMat() 
				{     
					return $this->idEntMat;
				}
			public function setIdEntMat($idEntMat) 
				{     
					$this->idEntMat = $idEntMat;
				}
				
            //DATA
			public function getDataEntrada() 
				{     
					return $this->dataEntrada;
				}
			public function setDataEntrada($dataEntrada) 
				{     
					$this->dataEntrada = $dataEntrada;
				}

            //QuantEntra
			public function getQuantEntra() 
				{     
					return $this->quantEntra;
				}
			public function setQuantEntra($quantEntra) 
				{     
					$this->quantEntra = $quantEntra;
				}			
			
            //ID MATERIAL
			public function getIdMaterial() 
				{     
					return $this->idMaterial;
				}
			public function setIdMaterial($idMaterial) 
				{     
					$this->idMaterial = $idMaterial;
				}				
            
			//CÓDIGO
			public function getCodigo() 
				{     
					return $this->codigo;
				}
			public function setCodigo($codigo) 
				{     
					$this->codigo = $codigo;
				}

			//idFuncionario 
			public function getIdFuncionario() 
				{     
					return $this->idFuncionario;
				}
			public function setIdFuncionario($idFuncionario) 
				{     
					$this->idFuncionario = $idFuncionario;
				}
				
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DO MATERIAL --';
                    echo '</br>ID -> ';
					echo $this->idEntMat . '<br>';	
                    echo '</br>dataEntrada -> ';
					echo $this->dataEntrada . '<br>';
                    echo '</br>quantEntra -> ';
					echo $this->quantEntra . '<br>';
                    echo '</br>Id Material -> ';
					echo $this->idMaterial . '<br>';	
					echo '</br>codigo -> ';
					echo $this->codigo . '<br>';	
					echo '</br>idFuncionario -> ';
					echo $this->idFuncionario . '<br>';	
				}
		}
?>
