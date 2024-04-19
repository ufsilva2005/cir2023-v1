<?php
	class SaiMaterial
		{
			private $idSaiMat;
            private $dataSaida;
            private $quantSai;
            private $idMaterial;
			private $codigo;			
			private $idFuncionario;			
			
			// Recebe  parametros 
			public function __construct ($idSaiMat = "", $dataSaida = null, $quantSai = null, $idMaterial = null, $codigo = null, $idFuncionario = null) 
			
				{
					$this->idSaiMat      = $idSaiMat;
                    $this->dataSaida     = $dataSaida;
                    $this->quantSai      = $quantSai;
                    $this->idMaterial    = $idMaterial;
					$this->codigo	     = $codigo;					
					$this->idFuncionario = $idFuncionario;
				}
				
			///metodos get e metodos set
			//ID DO MATERIAL
			public function getIdSaiMat() 
				{     
					return $this->idSaiMat;
				}
			public function setIdSaiMat($idSaiMat) 
				{     
					$this->idSaiMat = $idSaiMat;
				}
				
            //DATA
			public function getDataSaida() 
				{     
					return $this->dataSaida;
				}
			public function setDataSaida($dataSaida) 
				{     
					$this->dataSaida = $dataSaida;
				}

            //QuantSai
			public function getQuantSai() 
				{     
					return $this->quantSai;
				}
			public function setQuantSai($quantSai) 
				{     
					$this->quantSai = $quantSai;
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
					echo $this->idSaiMat . '<br>';	
                    echo '</br>dataSaida -> ';
					echo $this->dataSaida . '<br>';
                    echo '</br>quantSai -> ';
					echo $this->quantSai . '<br>';
                    echo '</br>Id Material -> ';
					echo $this->idMaterial . '<br>';	
					echo '</br>codigo -> ';
					echo $this->codigo . '<br>';	
					echo '</br>idFuncionario -> ';
					echo $this->idFuncionario . '<br>';	
				}
		}
?>
