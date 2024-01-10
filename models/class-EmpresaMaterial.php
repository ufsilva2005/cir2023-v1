<?php
	class EmpresaMaterial
		{
			private $idEmpresa;
			private $nomeEmpresa;
			private $cnpj;
			private $numNota;
			private $numProcesso;
            private $numEmpenho;
            private $obs;
			private $idEntMat;
			
			 // Recebe dados como parametros
			public function __construct ($idEmpresa = "", $nomeEmpresa = null, $cnpj = null, $numNota = null,  $numProcesso = null, $numEmpenho = null, $obs = null, $idEntMat = null) 
			
				{
					$this->idEmpresa   = $idEmpresa;
					$this->nomeEmpresa = $nomeEmpresa;					
					$this->cnpj        = $cnpj;
					$this->numNota     = $numNota;
                    $this->numProcesso = $numProcesso;
                    $this->numEmpenho  = $numEmpenho;
                    $this->obs         = $obs;
			        $this->idEntMat    = $idEntMat;
				}
				
			//metodos get
			public function getIdEmpresa() 
				{     
					return $this->idEmpresa;
				}
							
			public function getNomeEmpresa() 
				{     
					return $this->nomeEmpresa;
				}
		 
			public function getCnpj()
				{
					return $this->cnpj;
				}    
				
			public function getNumNota()
				{
					return $this->numNota;
				}    
				
			public function getNumProcesso()
				{
					return $this->numProcesso;
				} 
            
            public function getNumEmpenho() 
				{
					return $this->numEmpenho;
				}

            public function getObs() 
				{
					return $this->obs;
				} 

            public function getIdEntMat() 
				{
					return $this->idEntMat;
				}

			//metodos set
			public function setIdEmpresa($idEmpresa) 
				{     
					$this->idEmpresa = $idEmpresa;
				}
							
			public function setNomeEmpresa($nomeEmpresa) 
				{     
					$this->nomeEmpresa = $nomeEmpresa;
				}
		 
			public function setCnpj($cnpj)
				{
					$this->cnpj = $cnpj;
				}    
				
			public function setNumNota($numNota)
				{
					$this->numNota = $numNota;
				}    
				
			public function setNumProcesso($numProcesso)
				{
					$this->numProcesso = $numProcesso;
                } 
                
            public function setNumEmpenho($numEmpenho) 
				{
					$this->numEmpenho = $numEmpenho;
				}
			
            public function setObs($obs) 
				{
				    $this->obs = $obs;
				}

            public function setIdEntMat($idEntMat) 
				{
					$this->idEntMat = $idEntMat;
				}

			// Método para exibir
			public function exibir() 
				{
					echo '</br> idEmpresa: </br>';
					echo $this->idEmpresa . '<br>';
					
					echo '</br>nomeEmpresa: </br>';
					echo $this->nomeEmpresa . '<br>';
					
					echo '</br>data Alteração: </br>';
					echo $this->cnpj . '<br>';
					
					echo '</br>responsavel nomeEmpresa: </br>';
					echo $this->numNota . '<br>';
					
					echo '</br>numProcesso:</br> ';
                    echo $this->numProcesso . '<br>';
                    
                    echo '</br>numEmpenho:</br> ';
					echo $this->numEmpenho . '<br>';

                    echo '</br>obs:</br> ';
                    echo $this->obs . '<br>';
                    
                    echo '</br>idEntMat:</br> ';
					echo $this->idEntMat . '<br>';

					echo '</br>  </br>';
				}
			
		}
?>
